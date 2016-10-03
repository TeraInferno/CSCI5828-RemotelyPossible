package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

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
}
