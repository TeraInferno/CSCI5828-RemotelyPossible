package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import org.apache.commons.lang3.StringUtils;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
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
        //Not authenticated
        //TODO Add error message: Login Failed
        return ResolutionUrl.FORWARD_LOGIN;
      }
      
    }
    
  }

  private User authenticate() {
    //TODO Insert LDAP magic here
    //If authenticated return User instance
    //else return null
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
