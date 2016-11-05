package edu.colorado.csci5828.remotelypossible.dlap.util;

import javax.naming.AuthenticationException;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.Assert;



public class LdapUtilTest {
	
	private static final String TEST_USER_DN = "cn=John Doe,ou=Users,dc=example,dc=com";
	private static final String TEST_USER_PW = "password";
	private static final String TEST_USER_UID = "jdoe";
	private static final String TEST_USER_NAME = "John Doe";
	private static final String TEST_USER_ROLE = "Student";


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
	public void testAuthenticateWithDN() {
		LdapUtil ldap = new LdapUtil();

		User user = new User();

		User testUser = ldap.authenticateDN(user, TEST_USER_DN, TEST_USER_PW);
		
		Assert.assertTrue("Test User was not authenticated!", testUser.isAuthenticated());
	}
	
	@Test
	public void testAuthenticate() {
		LdapUtil ldap = new LdapUtil();
		
		String dn = ldap.searchForUserDN(TEST_USER_UID);
		Assert.assertEquals(TEST_USER_DN, dn);
		User user = new User();

		User testUser = ldap.authenticateDN(user, dn, TEST_USER_PW);
	
		Assert.assertTrue("Test User was not authenticated!", testUser.isAuthenticated());
	}

	@Test
	public void testSearchForUserDN() {
		LdapUtil ldap = new LdapUtil();
		
		String dn = ldap.searchForUserDN(TEST_USER_UID);
		
		Assert.assertEquals(TEST_USER_DN, dn);
	}

	@Test
	public void testPrintSearch() {
		
		LdapUtil ldap = new LdapUtil();

		ldap.printSearch(TEST_USER_NAME);
		
	}

	@Test
	public void testAuthenticateUser() {
		
		LdapUtil ldap = new LdapUtil();

		try {
			User testUser = ldap.authenticateUser(TEST_USER_UID, TEST_USER_PW);
			
			Assert.assertTrue("Test User was not authenticated!", testUser.isAuthenticated());
			
			Assert.assertTrue("User role was not Student", testUser.getRole().equalsIgnoreCase(TEST_USER_ROLE));

		} catch (AuthenticationException e) {
			// Do nothing
		}
		

	}


}
