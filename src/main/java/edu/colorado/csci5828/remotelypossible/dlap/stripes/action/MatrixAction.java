package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ApplicationService;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/matrix")
@HttpCache(allow=false)
public class MatrixAction extends BaseAction {
  
	@DefaultHandler
	public Resolution matrix() {
	  
	  List<Project> projects = (new ProjectService()).findAll();
	  getContext().getRequest().setAttribute("projectList", projects);
	  List<Application> applications = (new ApplicationService()).findAll();
	  getContext().getRequest().setAttribute("applicationList", applications);
	  
	  return ResolutionUrl.FORWARD_MATRIX;
	}

}
