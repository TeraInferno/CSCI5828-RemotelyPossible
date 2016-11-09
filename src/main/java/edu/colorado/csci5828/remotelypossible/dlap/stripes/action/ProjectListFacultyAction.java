package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import edu.colorado.csci5828.remotelypossible.dlap.util.User;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/project/faculty")
@HttpCache(allow=false)
public class ProjectListFacultyAction extends BaseAction {
	
	@DefaultHandler
	public Resolution list() {
	  User f = getUser();
	  ProjectService ps = new ProjectService();
	  List<Project> projectList = ps.findAllByFaculty(f.getName());
	  getContext().getRequest().setAttribute("projectList", projectList);
	  return ResolutionUrl.FORWARD_PROJECT_FACULTY_LIST;
	}
	

}
