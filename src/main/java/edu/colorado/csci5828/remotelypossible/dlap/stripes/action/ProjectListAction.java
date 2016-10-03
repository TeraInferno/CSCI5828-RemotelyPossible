package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/project/list")
@HttpCache(allow=false)
public class ProjectListAction extends BaseAction {
	
	private List<Project> projectList;
	
	@DefaultHandler
	public Resolution list() {
		ProjectService ps = new ProjectService();
		projectList = ps.findAll();
		
		return ResolutionUrl.FORWARD_PROJECT_LIST;
	}

	
	//Add a getter so that JSP can access: actionBean.projectList
	public List<Project> getProjectList() {
		return projectList;
	}

}
