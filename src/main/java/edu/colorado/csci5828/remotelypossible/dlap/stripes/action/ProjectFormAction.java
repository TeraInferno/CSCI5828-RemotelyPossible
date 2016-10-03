package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;


import org.apache.commons.lang3.StringUtils;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/project/form/{id}")
@HttpCache(allow=false)
public class ProjectFormAction extends BaseAction {
	
	//URL link ID
	private String id = Constants.EMPTY_STRING;
	
	//Project Form Data
	private Project project;
	
	//Save button 
	private String save;
			
	@DefaultHandler
	public Resolution process() {
		if(StringUtils.isNotBlank(save)) {
			//Save Project
			ProjectService ps = new ProjectService();
			ps.save(project);
			
			//Return to Project List
			return ResolutionUrl.REDIRECT_PROJECT_LIST;
			
		} else if(StringUtils.isNotBlank(id)) {
			//Existing project
			return edit();

		} else {
			//New project
			return form();
						
		}
	}
	
	private Resolution edit() {
		//Load existing project
		ProjectService ps = new ProjectService();
		project = ps.get(Long.valueOf(id));
		getContext().getRequest().setAttribute("project", project);
		return form();
	}
	private Resolution form() {
		return ResolutionUrl.FORWARD_PROJECT_FORM;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Project getProject() {
		return project;
	}
	public void setProject(Project formProject) {
		project = formProject;
	}

	public String getSave() {
		return save;
	}

	public void setSave(String save) {
		this.save = save;
	}

}
