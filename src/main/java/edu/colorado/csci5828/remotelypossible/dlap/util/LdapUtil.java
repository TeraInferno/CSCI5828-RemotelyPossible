package edu.colorado.csci5828.remotelypossible.dlap.util;

import java.util.List;

import javax.naming.AuthenticationException;

import com.unboundid.ldap.sdk.Attribute;
import com.unboundid.ldap.sdk.BindRequest;
import com.unboundid.ldap.sdk.BindResult;
import com.unboundid.ldap.sdk.Filter;
import com.unboundid.ldap.sdk.LDAPConnection;
import com.unboundid.ldap.sdk.LDAPException;
import com.unboundid.ldap.sdk.ResultCode;
import com.unboundid.ldap.sdk.SearchRequest;
import com.unboundid.ldap.sdk.SearchResult;
import com.unboundid.ldap.sdk.SearchResultEntry;
import com.unboundid.ldap.sdk.SearchScope;
import com.unboundid.ldap.sdk.SimpleBindRequest;

public class LdapUtil {

	private static final String LDAP_HOST = "54.218.73.5";
	private static final int LDAP_PORT = 10389;
	private static final String LDAP_BASE_DN = "dc=example,dc=com";
	
	

	
	public LdapUtil()
	{
		// TODO
	}
	
	
	
	/**
	 * This method searches the LDAP for the provided uid
	 * and returns the BindDN for that user.
	 * 
	 * @param uid
	 * @return dn for provided uid
	 */
	public String searchForUserDN(String uid)
	{
		String result = "";
		Filter filter = Filter.createEqualityFilter("uid", uid);
	
		try (LDAPConnection searchConnection = new LDAPConnection(LDAP_HOST, LDAP_PORT))
		{		
			SearchRequest searchRequest = new SearchRequest(LDAP_BASE_DN, SearchScope.SUB, filter);

	        final SearchResult searchResult = searchConnection.search(searchRequest);
			List<SearchResultEntry> searchEntries = searchResult.getSearchEntries();
			
			
			 if (searchEntries.size() != 1)
			 {
			   // The search didn't match exactly one entry.
			 }
			 else
			 {
			   SearchResultEntry entry = searchEntries.get(0);
			   result = entry.getDN();
			 }

			
		} catch (LDAPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * This method will search and return the eduPersonAffiliation for the
	 * provided uid.
	 * 
	 * @param uid
	 * @return Returns the users role as a String
	 */
	public String searchForRoleByUID(String uid)
	{
		String role = "";
		
		Filter filter = Filter.createEqualityFilter("uid", uid);
		
		try (LDAPConnection searchConnection = new LDAPConnection(LDAP_HOST, LDAP_PORT))
		{		
			SearchRequest searchRequest = new SearchRequest(LDAP_BASE_DN, SearchScope.SUB, filter);

	        final SearchResult searchResult = searchConnection.search(searchRequest);
			List<SearchResultEntry> searchEntries = searchResult.getSearchEntries();
			
			
			 if (searchEntries.size() != 1)
			 {
			   // The search didn't match exactly one entry.
			 }
			 else
			 {
			   SearchResultEntry entry = searchEntries.get(0);
			   role = entry.getAttribute("eduPersonAffiliation").getValue();
			 }

			
		} catch (LDAPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return role;
	}
	
	public void printSearch(String name)
	{
		
		Filter filter = Filter.createEqualityFilter("cn", name);

		try (LDAPConnection searchConnection = new LDAPConnection(LDAP_HOST, LDAP_PORT))
		{	
			SearchRequest searchRequest = new SearchRequest(LDAP_BASE_DN, SearchScope.SUB, filter);


	        final SearchResult searchResult = searchConnection.search(searchRequest);
	        if (searchResult.getEntryCount() > 0)
	        {
	            SearchResultEntry entry = searchResult.getSearchEntries().get(0);
	            
	            for (Attribute a : entry.getAttributes()) {
					System.out.println("Value: " + a.getValue());
				}
	        	
	        }

			
			
		} catch (LDAPException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
		
	/**
	 * This method takes the BindDN and Password for a user. It then will authenticate
	 * against the LDAP server and create a User object populated
	 * with the results. 
	 * 
	 * @param bindUser
	 * @param password
	 * @return User object
	 */
	public User authenticateDN(User user, String bindUser, String password)
	{		
		try (LDAPConnection connection = new LDAPConnection(LDAP_HOST, LDAP_PORT))
		{
			BindRequest bindRequest = new SimpleBindRequest(bindUser, password);
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
	
	/**
	 * This method is the master authenticate method. It takes a users uid and password.
	 * It will then search for that user in LDAP. If found, it will then authenticate that user 
	 * and fully populate the User object. 
	 * 
	 * If the user was not able to be authenticated, it will Throw an AuthenticationException.
	 * 
	 * @param uid
	 * @param password
	 * @return User object for authenticated user, or null
	 * @throws AuthenticationException 
	 */
	public User authenticateUser(String uid, String password) throws AuthenticationException
	{
		User user = new User();
		user.setUID(uid);
		
		String userBindDN = searchForUserDN(uid);

		user = authenticateDN(user, userBindDN, password);
		
		if (user.isAuthenticated()) {
			String role = searchForRoleByUID(uid);
			user.setRole(role);
			
			return user;
		} else {
			throw new AuthenticationException("Unable to Authenticate");
		}
	}
		
}
