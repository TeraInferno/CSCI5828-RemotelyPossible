package edu.colorado.csci5828.remotelypossible.dlap.stripes.ext;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.stripes.action.BaseAdminAction;
import edu.colorado.csci5828.remotelypossible.dlap.stripes.action.BaseFacultyAction;
import edu.colorado.csci5828.remotelypossible.dlap.stripes.action.BaseStudentAction;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.controller.ExecutionContext;
import net.sourceforge.stripes.controller.Interceptor;
import net.sourceforge.stripes.controller.Intercepts;
import net.sourceforge.stripes.controller.LifecycleStage;

@Intercepts(LifecycleStage.HandlerResolution)
public class SecurityInterceptor implements Interceptor {

  @Override
  public Resolution intercept(ExecutionContext context) throws Exception {
    Class<?> currentAction = context.getActionBean().getClass();
    
    if(BaseFacultyAction.class.isAssignableFrom(currentAction) && !isRole(context,User.ROLE_FACULTY)) {
      //Request a Faculty page with a Faculty Role
      return ResolutionUrl.REDIRECT_LOGIN;
    } else if(BaseAdminAction.class.isAssignableFrom(currentAction) && !isRole(context,User.ROLE_ADMIN)) {
      //Request an Admin page with an Admin Role
      return ResolutionUrl.REDIRECT_LOGIN;
    } else if(BaseStudentAction.class.isAssignableFrom(currentAction) && !isRole(context,User.ROLE_STUDENT)) {
      //Requested a Student page with a Student Role
      return ResolutionUrl.REDIRECT_LOGIN;
    }
    
    return context.proceed();
  } 
  private boolean isRole(ExecutionContext context, String role) {
    User u = ((User)context.getActionBeanContext().getRequest().getSession().getAttribute(Constants.USER_PROFILE));
    if(u == null) {
      return false;
    }
    return role.equals(u.getRole());
  }

}
