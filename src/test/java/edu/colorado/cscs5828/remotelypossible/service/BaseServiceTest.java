package edu.colorado.cscs5828.remotelypossible.service;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

import edu.colorado.csci5828.remotelypossible.dlap.Servers;
import edu.colorado.csci5828.remotelypossible.dlap.hibernate.HibernateSessionUtil;

public class BaseServiceTest {


	public static final Servers servers = new Servers();
	
	@BeforeClass
	public static void init() {
		servers.startDb();
	}
	
	@AfterClass
	public static void destroy() {
		servers.stop();
	}
	
	
	@Before
	public void startTransation() {
		HibernateSessionUtil.beginTransaction();
	}
	
	@After
	public void endTransaction() {
		HibernateSessionUtil.resolveTransaction();
		HibernateSessionUtil.closeSession();
	}
}
