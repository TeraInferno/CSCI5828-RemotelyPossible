package edu.colorado.csci5828.remotelypossible.dlap.util;

import com.unboundid.ldap.listener.InMemoryDirectoryServer;
import com.unboundid.ldap.listener.InMemoryDirectoryServerConfig;
import com.unboundid.ldap.sdk.BindRequest;
import com.unboundid.ldap.sdk.BindResult;
import com.unboundid.ldap.sdk.LDAPConnection;
import com.unboundid.ldap.sdk.LDAPConnectionPool;
import com.unboundid.ldap.sdk.LDAPException;
import com.unboundid.ldap.sdk.ResultCode;
import com.unboundid.ldap.sdk.SimpleBindRequest;

public class LdapUtil {

	private static final String LDAP_HOST = "localhost";
	private static final int LDAP_PORT = 10389;
	private static final int POOL_CONNECTIONS_COUNT = 10;
	
	
	private LDAPConnectionPool ldapConnectionPool;
	private boolean testMode = false;

	
	public LdapUtil()
	{
		// TODO
	}
	
	public LdapUtil(boolean mode)
	{
		testMode = mode;
		

	}
	
	private void setupConnectionPool()
	{
		try {
			LDAPConnection connection = new LDAPConnection(LDAP_HOST, LDAP_PORT);
			ldapConnectionPool = new LDAPConnectionPool(connection, POOL_CONNECTIONS_COUNT);
			
			
		} catch (LDAPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public User authenticate(String username, String password)
	{
		User user = new User();
		
		// Search and find DN

		return user;
	}
		
	public User authenticateDN(String bindDN, String password)
	{
		
		User user = new User();
		
		// Currently not using a pool
		try (LDAPConnection connection = new LDAPConnection(LDAP_HOST, LDAP_PORT))
		{
			BindRequest bindRequest = new SimpleBindRequest(bindDN, password);
			BindResult bindResult = connection.bind(bindRequest);
			ResultCode resultCode = bindResult.getResultCode();
			if (resultCode.equals(ResultCode.SUCCESS)) {
				// Do stuff. You have been authenticated. 
				user.setAuth(true);
			} else {
				// You have not been authenticated. 
			}			
		} catch (LDAPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
}
