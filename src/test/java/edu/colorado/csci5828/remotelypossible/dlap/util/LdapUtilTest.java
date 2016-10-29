package edu.colorado.csci5828.remotelypossible.dlap.util;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.Assert;



public class LdapUtilTest {
	
	private static final String TEST_USER_DN = "cn=John Doe,ou=Users,dc=example,dc=com";
	private static final String TEST_USER_PW = "password";


	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testAuthenticateDN() {
		LdapUtil ldap = new LdapUtil();
		
		User testUser = ldap.authenticateDN(TEST_USER_DN, TEST_USER_PW);
		
		Assert.assertTrue("Test User was not authenticated!", testUser.isAuthenticated());
	}

}
