package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/fakeme")
@HttpCache(allow=false)
public class FakeMeAction extends BaseAction {

  private String username;
  private String role;
  
  @DefaultHandler
  public Resolution login() {
    if(StringUtils.isBlank(username) || StringUtils.isBlank(role)) {
      //Send a list of users
      
      ProjectService ps = new ProjectService();
      List<Map<String,String>> faculty = ps.findAllFakeMeFaculty();
      getContext().getRequest().setAttribute("faculty", faculty);
      
      
      return ResolutionUrl.FORWARD_FAKEME;
      
    } else {
      //Fake User Object
      User authUser;
      if("FACULTY".equals(role)) {
          authUser = new User(username,User.ROLE_FACULTY);
      } else {
        authUser = new User(username,User.ROLE_STUDENT);
      }
      authUser.setAuth(true);
      setUser(authUser);
      
      //Use the login action to direct the fake user to their new page
      return LoginAction.direct(authUser);
    }
    
  }


  public String getUsername() {
    return username;
  }



  public void setUsername(String username) {
    this.username = username;
  }

  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
  }

}
