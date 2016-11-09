package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;
import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;

/*
 * 
 * A basis for all Stripes Action
 * It provides a foundation for Extending the application Context in a single location
 * 
 * 
 */
public class BaseAction implements ActionBean {

	ActionBeanContext cntx = null;
	
	
	@Override
	public ActionBeanContext getContext() {
		return cntx;
	}

	@Override
	public void setContext(ActionBeanContext context) {
		cntx = context;
	}
	
	public User getUser() {
    return (User) cntx.getRequest().getSession().getAttribute(Constants.USER_PROFILE); 
	} 

	public void setUser(User userProfile) { 
    cntx.getRequest().getSession().setAttribute(Constants.USER_PROFILE, userProfile); 
	} 
}
