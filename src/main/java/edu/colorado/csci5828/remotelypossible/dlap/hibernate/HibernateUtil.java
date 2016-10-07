package edu.colorado.csci5828.remotelypossible.dlap.hibernate;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.Entity;
import javax.tools.FileObject;
import javax.tools.JavaFileObject;
import javax.tools.StandardJavaFileManager;
import javax.tools.StandardLocation;
import javax.tools.ToolProvider;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.common.Settings;

/*
 * 
 * Provides access to the DataBase along with information and tooling methods 
 * The class also set the dynamic DB and schema for Test/Production
 * 
 */

public class HibernateUtil {

	private static SessionFactory sessionFactory;
	private static HibernateUtil instance = null;
	private static String schema = Constants.EMPTY_STRING;
	
	private HibernateUtil() {
		
	}
	
	public static HibernateUtil getInstance() {
		//Load/create the static instance of HibernateUtil
		if(instance == null) {
			instance = new HibernateUtil();
		}
		return instance;
	}
	
	public static SessionFactory getSessionFactory() {
		//Load/create the static instance of SessionFactory 
		if(sessionFactory == null) {
			
			//Read the hibernate.cfg.xml
			Configuration config = new Configuration();
			config.configure();
						
			System.out.println(config.getProperty("packagesToScan"));
			
			for (String packageToScan : config.getProperty("packagesToScan").trim().split("\\n")) {
	            getEntityClasses(packageToScan).stream().forEach( config::addAnnotatedClass);
	        }
	        
			
			//Determine if the Production DB was requested. 
			if(Settings.isProduction()) {
				//Production
				config.setProperty("hibernate.connection.url", Settings.getDatabaseJdbcUrl()+Settings.getDatabaseIpAddress()+":"+Settings.getDatabasePort()+"/"+Settings.getDatabaseProduction());
				schema = Settings.getDatabaseProductionSchema();
				config.setProperty("hibernate.default_schema", schema);
				
			} else {
				//Test
				config.setProperty("hibernate.connection.url", Settings.getDatabaseJdbcUrl()+Settings.getDatabaseIpAddress()+":"+Settings.getDatabasePort()+"/"+Settings.getDatabaseTest());
				schema = Settings.getDatabaseTestSchema();
				config.setProperty("hibernate.default_schema", schema);
				
			}

			config.setProperty("hibernate.connection.username", Settings.getDatabaseUser());
			config.setProperty("hibernate.connection.password", Settings.getDatabasePassword());

			sessionFactory = config.buildSessionFactory(
					new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build());
		}
		return sessionFactory;
	}
	
	public static Session getSession() {
		//Returns a Session to process DB actions
		if(sessionFactory == null) {
			return getSessionFactory().openSession();
		}
		return sessionFactory.openSession();
	}
	
	public static String getSchema() {
		//Return the active schema name
		return schema;
	}
	
	private static Collection<Class<?>> getEntityClasses(final String pack) {
        final StandardJavaFileManager fileManager = ToolProvider.getSystemJavaCompiler().getStandardFileManager(null, null, null);
        try {
            return StreamSupport.stream(fileManager.list(StandardLocation.CLASS_PATH, pack, Collections.singleton(JavaFileObject.Kind.CLASS), false).spliterator(), false)
                    .map(FileObject::getName)
                    .map(name -> {
                        try {
                            final String[] split = name
                                    .replace(".class", "")
                                    .replace(")", "")
                                    .split(Pattern.quote(File.separator));

                            final String fullClassName = pack + "." + split[split.length - 1];
                            return Class.forName(fullClassName);
                        } catch (ClassNotFoundException e) {
                            throw new RuntimeException(e);
                        }

                    })
                    .filter(aClass -> aClass.isAnnotationPresent(Entity.class))
                    .collect(Collectors.toCollection(ArrayList::new));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
