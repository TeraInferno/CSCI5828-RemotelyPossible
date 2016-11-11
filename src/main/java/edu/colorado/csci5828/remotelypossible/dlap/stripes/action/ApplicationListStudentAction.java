package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.service.ApplicationService;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/student/application")
@HttpCache(allow=false)
public class ApplicationListStudentAction extends BaseStudentAction {
	
	@DefaultHandler
	public Resolution list() {
	  User u = getUser();
	  ApplicationService as = new ApplicationService();

	  List<Application> applicationList = as.findAllByStudent(u.getName());
	  getContext().getRequest().setAttribute("applicationList", applicationList);
	  return ResolutionUrl.FORWARD_PROJECT_STUDENT_LIST;
	}
	

}
