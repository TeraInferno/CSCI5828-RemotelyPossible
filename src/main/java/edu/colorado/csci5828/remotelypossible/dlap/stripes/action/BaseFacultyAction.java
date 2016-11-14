package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;

/*
 * 
 * A basis for all Stripes Action for Faculty Members
 * It enforces a Faculty Role
 * 
 * 
 */
public class BaseFacultyAction extends BaseAction {

  public boolean isOwner(Project p) {
    if(getUser().getName().equals(p.getUsername())) {
      return true;
      
    } else if(getUser().getRole().equals(User.ROLE_ADMIN)) {
      return true;
      
    }
    return false;
  }
  
}
