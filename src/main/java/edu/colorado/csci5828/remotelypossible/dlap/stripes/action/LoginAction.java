package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import javax.naming.AuthenticationException;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.util.LdapUtil;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/login")
@HttpCache(allow=false)
public class LoginAction extends BaseAction {

	private String username;
	private String password;

	private static final LdapUtil ldap = new LdapUtil();

	private final Logger log = LoggerFactory.getLogger(LoginAction.class);



	@DefaultHandler
	public Resolution login() {
		if(StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
			//Blank inputs. Send the login page
			return ResolutionUrl.FORWARD_LOGIN;

		} else {
			//Authenticate Here
			User authUser = authenticate();

			if(authUser != null && authUser.isAuthenticated()) {
				setUser(authUser); //Store User in HttpSession
				return direct(authUser);


			} else {
				log.warn("login action failed for user {}", username);
				return ResolutionUrl.FORWARD_LOGIN;
			}

		}
	}

	private User authenticate() {

		try {
			// Try to authenticate user with provided credentials
			User user = ldap.authenticateUser(username, password);
			return user;
		} catch (AuthenticationException e) {
			log.error("Unable to authenticate user with username=" + username, e);
		}
		return null;
	}

	public static Resolution direct(User authUser) {
		if(authUser.getRole().equals(User.ROLE_FACULTY)) {
			//Success (Faculty)
			return ResolutionUrl.REDIRECT_PROJECT_FACULTY_LIST;

		} else if(authUser.getRole().equals(User.ROLE_STUDENT)) {        
			//Success Student
			return ResolutionUrl.REDIRECT_PROJECT_LIST;

		} else if(authUser.getRole().equals(User.ROLE_ADMIN)) {
			//Success (Admin)
			//TODO: Redirect to Admin Homepage (Non-existant)
			return ResolutionUrl.REDIRECT_PROJECT_LIST;

		} else {
			//TODO Unknown Role action 
			return null;
		}
	}

	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}

}
