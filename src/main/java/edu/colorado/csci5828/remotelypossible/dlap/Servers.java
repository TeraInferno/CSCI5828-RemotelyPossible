package edu.colorado.csci5828.remotelypossible.dlap;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.commons.lang3.StringUtils;
import org.apache.tomcat.InstanceManager;
import org.apache.tomcat.SimpleInstanceManager;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.OperatorCreationException;
import org.eclipse.jetty.annotations.ServletContainerInitializersStarter;
import org.eclipse.jetty.apache.jsp.JettyJasperInitializer;
import org.eclipse.jetty.http.HttpVersion;
import org.eclipse.jetty.plus.annotation.ContainerInitializer;
import org.eclipse.jetty.server.HttpConfiguration;
import org.eclipse.jetty.server.HttpConnectionFactory;
import org.eclipse.jetty.server.SecureRequestCustomizer;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.SslConnectionFactory;
import org.eclipse.jetty.util.ssl.SslContextFactory;
import org.eclipse.jetty.util.thread.QueuedThreadPool;
import org.eclipse.jetty.util.thread.ScheduledExecutorScheduler;
import org.eclipse.jetty.webapp.WebAppContext;

import org.hsqldb.persist.HsqlProperties;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.common.Settings;
import io.netty.handler.ssl.util.SelfSignedCertificate;

public class Servers {

	private Servers self;
	private HsqlProperties hp;
	private org.hsqldb.Server db = null;
	private Server jetty = null;

	public Servers() {
		self = this;
		// Load file based application settings
		Settings.loadAppProperties(getClass().getClassLoader().getResourceAsStream("app.properties"));
		Runtime.getRuntime().addShutdownHook(new Thread() {
			public void run() {
				self.stop();
			}
		});
	}

	public void start() {
		/*
		 * Install a self-signed certificate for Jetty
		 * if one does not already exist
		 */ 
		try {
			checkSslKeystore();
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		// Start the DB
		startDb();

		// Start Web Server
		startWebserver();

		try {
			// Start the web server
			jetty.start();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void checkSslKeystore() throws KeyStoreException, CertificateException, NoSuchAlgorithmException,
			IOException, NoSuchProviderException, OperatorCreationException, CMSException {
		Security.addProvider(new BouncyCastleProvider());
		KeyStore ks = KeyStore.getInstance(KeyStore.getDefaultType());
		File keyFile = new File(Settings.getKeystoreFile());
		try {
			InputStream keystoreInputStream = new FileInputStream(keyFile);
			ks.load(keystoreInputStream, Settings.getKeystorePassword().toCharArray());
			keystoreInputStream.close();
		} catch(IOException e) {
			ks.load(null, Settings.getKeystorePassword().toCharArray());
		}
		if (!ks.containsAlias("jetty")) {
			SelfSignedCertificate ssc = new SelfSignedCertificate(Settings.getCertificateHostname());
			// ks.setCertificateEntry("alias", ssc.cert());
			ks.setKeyEntry("jetty", ssc.key(), Settings.getKeystorePassword().toCharArray(), new Certificate[] { ssc.cert() });
			FileOutputStream fos = new FileOutputStream(keyFile);
			ks.store(fos, Settings.getKeystorePassword().toCharArray());
			fos.close();
		}
	}

	public void join() {
		if (jetty == null) {
			return;
		}
		// Join the web server thread
		try {
			jetty.join();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void stop() {
		// Stop the Web Server & DB
		try {
			if (jetty != null) {
				jetty.stop();
			}
			if (db != null) {
				db.stop();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void startWebserver() {
		// Setup Threadpool
		QueuedThreadPool threadPool = new QueuedThreadPool();
		threadPool.setMaxThreads(500);

		// Create a new WebServer
		jetty = new Server(threadPool);
		jetty.addBean(new ScheduledExecutorScheduler());
		
		//
		//HTTP Configuration
		//
		HttpConfiguration http_config = new HttpConfiguration();
		http_config.setSecureScheme("https");
		http_config.setSecurePort(8443);
		http_config.setOutputBufferSize(32768);
		http_config.setRequestHeaderSize(8192);
		http_config.setResponseHeaderSize(8192);
		http_config.setSendServerVersion(false);
		http_config.setSendDateHeader(false);

		// Create a connector on the requested IP/Port or default values
		ServerConnector sc = new ServerConnector(jetty, new HttpConnectionFactory(http_config));
		if (StringUtils.isNotBlank(Settings.getWebserverIpAddress())) {
			sc.setHost(Settings.getWebserverIpAddress());
		}
		if (StringUtils.isNotBlank(Settings.getWebserverPortHttp())) {
			sc.setPort(Integer.parseInt(Settings.getWebserverPortHttp()));
		}
		jetty.addConnector(sc);

		
		//
		//HTTPS Configuration
		//
		SslContextFactory sslContextFactory = new SslContextFactory();
		sslContextFactory.setKeyStorePath(Settings.getKeystoreFile());
		sslContextFactory.setKeyStorePassword(Settings.getKeystorePassword());
		sslContextFactory.setKeyManagerPassword(Settings.getKeystorePassword());
		sslContextFactory.setTrustStorePath(Settings.getKeystoreFile());
		sslContextFactory.setTrustStorePassword(Settings.getKeystorePassword());
		sslContextFactory.setExcludeCipherSuites("SSL_RSA_WITH_DES_CBC_SHA",
		  "SSL_DHE_RSA_WITH_DES_CBC_SHA", "SSL_DHE_DSS_WITH_DES_CBC_SHA",
		  "SSL_RSA_EXPORT_WITH_RC4_40_MD5",
		  "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA",
		  "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA",
		  "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
		 
		
		// SSL HTTP Configuration
		HttpConfiguration https_config = new HttpConfiguration(http_config);
		https_config.addCustomizer(new SecureRequestCustomizer());

		// SSL Connector
		/*ServerConnector sslConnector = new ServerConnector(jetty,
				new SslConnectionFactory(sslContextFactory, HttpVersion.HTTP_1_1.asString()),
				new HttpConnectionFactory(https_config));*/
		
		ServerConnector sslConnector = new ServerConnector(jetty,
				new SslConnectionFactory(sslContextFactory, HttpVersion.HTTP_1_1.asString()),
				new HttpConnectionFactory(https_config));
				
		if (StringUtils.isNotBlank(Settings.getWebserverIpAddress())) {
			sslConnector.setHost(Settings.getWebserverIpAddress());
		}
		if (StringUtils.isNotBlank(Settings.getWebserverPortHttp())) {
			sslConnector.setPort(Integer.parseInt(Settings.getWebserverPortHttps()));
		}
		jetty.addConnector(sslConnector);
		
		//
		// Add a WebApp
		//
		WebAppContext webapp = new WebAppContext();
		webapp.setAttribute("javax.servlet.context.tempdir", getScratchDir());
		webapp.setAttribute("org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern",
				".*/[^/]*servlet-api-[^/]*\\.jar$|.*/javax.servlet.jsp.jstl-.*\\.jar$|.*/.*taglibs.*\\.jar$|.*/stripes.*\\.jar$|.*/DLAP.jar$");
		webapp.setAttribute("org.eclipse.jetty.containerInitializers", jspInitializers());
		if (!Settings.isProduction()) {
			// Enable automatic reloading in Test
			webapp.setInitParameter("Extension.Packages", "org.stripesbook.reload.extensions");
		}
		webapp.setDisplayName(Constants.APP_NAME);
		webapp.setDescriptor("webroot/WEB-INF/web.xml");
		webapp.setResourceBase("webroot");
		webapp.setContextPath("/");
		// Disable directory listing
		webapp.setInitParameter("org.eclipse.jetty.servlet.Default.dirAllowed", "false");
		webapp.setAttribute(InstanceManager.class.getName(), new SimpleInstanceManager());
		webapp.addBean(new ServletContainerInitializersStarter(webapp), true);
		// Make JSTL work
		ClassLoader jspClassLoader = new URLClassLoader(new URL[0], this.getClass().getClassLoader());
		webapp.setClassLoader(jspClassLoader);

		
		
		// Add the WebAppContext to the web server
		jetty.setHandler(webapp);

	}

	public void startDb() {

		// Set path to DB
		File dbDir = new File("webroot/WEB-INF/db/dlap");

		// Configure DB settings
		Properties p = new Properties();
		p.put("server.address", Settings.getDatabaseIpAddress());
		p.put("server.port", Settings.getDatabasePort());
		p.put("server.database.0", "file:" + dbDir.getAbsolutePath() + ";hsqldb.sqllog=3;sql.enforce_names=true;user="
				+ Settings.getDatabaseUser() + ";password=" + Settings.getDatabasePassword());
		if (Settings.isProduction()) {
			p.put("server.dbname.0", Settings.getDatabaseProduction());
		} else {
			p.put("server.dbname.0", Settings.getDatabaseTest());
		}
		p.put("server.silent", "false");
		p.put("server.trace", "true");
		p.put("server.no_system_exit", "true");
		p.put("server.remote_open", "false");
		p.put("server.acl", "src/main/resources/db.acl");

		hp = new HsqlProperties(p);

		// Start the database server with the settings from above
		db = new org.hsqldb.Server();
		try {
			db.setProperties(hp);
			db.start();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Establish Scratch directory for the servlet context (used by JSP
	 * compilation)
	 */
	private File getScratchDir() {
		File tempDir = new File(System.getProperty("java.io.tmpdir"));
		File scratchDir = new File(tempDir.toString(), "embedded-jetty-jsp");

		if (!scratchDir.exists()) {
			if (!scratchDir.mkdirs()) {
				System.out.println("Unable to create scratch directory: " + scratchDir);
				scratchDir = new File(".");
			}
		}
		return scratchDir;
	}

	/**
	 * Ensure the jsp engine is initialized correctly
	 */
	private List<ContainerInitializer> jspInitializers() {
		JettyJasperInitializer sci = new JettyJasperInitializer();
		ContainerInitializer initializer = new ContainerInitializer(sci, null);
		List<ContainerInitializer> initializers = new ArrayList<ContainerInitializer>();
		initializers.add(initializer);
		return initializers;
	}

	public static void main(String[] args) {
		// Command line startup
		Servers s = new Servers();
		s.start();
		s.join();
	}

}
