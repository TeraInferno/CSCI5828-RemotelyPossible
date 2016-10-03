package edu.colorado.csci5828.remotelypossible.dlap.common;

import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;


/*
 * 
 * A class to provide file based configuration data
 * to the application and tests
 * 
 */
public class Settings {
	public static Properties props = null;
	
	public Settings() {
		Settings.loadAppProperties(getClass().getClassLoader().getResourceAsStream("app.properties"));
	}
		
	public static String getWebserverIpAddress() {
		return (StringUtils.isNotBlank(props.getProperty("webserver.ip")) ? props.getProperty("webserver.ip") : "");
	}
	public static String getWebserverPortHttp() {
		return (StringUtils.isNotBlank(props.getProperty("webserver.port.http")) ? props.getProperty("webserver.port.http") : "8080");
	}
	public static String getDatabaseIpAddress() {
		return (StringUtils.isNotBlank(props.getProperty("database.ip")) ? props.getProperty("database.ip") : "127.0.0.1");
	}
	public static String getDatabasePort() {
		return (StringUtils.isNotBlank(props.getProperty("database.port")) ? props.getProperty("database.port") : "60000");
	}
	public static String getDatabaseJdbcUrl() {
		return (StringUtils.isNotBlank(props.getProperty("database.jdbc")) ? props.getProperty("database.jdbc") : "");
	}
	public static String getDatabaseUser() {
		return (StringUtils.isNotBlank(props.getProperty("database.user")) ? props.getProperty("database.user") : "SA");
	}
	public static String getDatabasePassword() {
		return (StringUtils.isNotBlank(props.getProperty("database.password")) ? props.getProperty("database.password") : "SA");
	}
	public static String getDatabaseProductionSchema() {
		return (StringUtils.isNotBlank(props.getProperty("database.production.schema")) ? props.getProperty("database.production.schema") : "public");
	}
	public static String getDatabaseProduction() {
		return (StringUtils.isNotBlank(props.getProperty("database.production")) ? props.getProperty("database.production") : "prod");
	}
	public static String getDatabaseTest() {
		return (StringUtils.isNotBlank(props.getProperty("database.test")) ? props.getProperty("database.test") : "");
	}
	public static String getDatabaseTestSchema() {
		return (StringUtils.isNotBlank(props.getProperty("database.test.schema")) ? props.getProperty("database.test.schema") : "test");
	}
	public static boolean isProduction() {
		if(Constants.DB_PROD.equals(System.getenv(Constants.DB_ENV_VAR))) {
			return true;
		}
		return false;
	}
	
	public static void loadAppProperties(InputStream is) {
		props = new Properties();
		try {
			//
			props.load(is);
			IOUtils.closeQuietly(is);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
