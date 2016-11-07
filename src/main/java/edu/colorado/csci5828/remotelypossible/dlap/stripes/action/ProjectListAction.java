package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.google.gson.Gson;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.StreamingResolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/project/list/{major}")
@HttpCache(allow=false)
public class ProjectListAction extends BaseAction {
	
  private String major;
  
	private List<Project> projectList;
	
	@DefaultHandler
	public Resolution list() {
	  ProjectService ps = new ProjectService();
	  
	  if(StringUtils.isBlank(major)) {
  		projectList = ps.findAll();
  		
  		return ResolutionUrl.FORWARD_PROJECT_LIST;
	  } else {
	    //List by Major
	    return new StreamingResolution("application/json",(new Gson()).toJson(ps.findAllByMajor(major)));
	  }
	}

	
	//Add a getter so that JSP can access: actionBean.projectList
	public List<Project> getProjectList() {
		return projectList;
	}


  public String getMajor() {
    return major;
  }


  public void setMajor(String major) {
    this.major = major;
  }

}
