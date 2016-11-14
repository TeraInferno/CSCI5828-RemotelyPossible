package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/logout")
@HttpCache(allow=false)
public class LogoutAction extends BaseAction {

	@DefaultHandler
	public Resolution logout() {
	  getContext().getRequest().getSession().invalidate();
	  return ResolutionUrl.REDIRECT_LOGIN;
	}


}
