package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;


import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.google.gson.Gson;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.model.validation.ApplicationValidator;
import edu.colorado.csci5828.remotelypossible.dlap.service.ApplicationService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.StreamingResolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/applicant/form/{id}")
@HttpCache(allow=false)
public class ApplicantFormAction extends BaseStudentAction {
	
	//URL link ID
	private String id = Constants.EMPTY_STRING;
	
	//Project Form Data
	private Application application;
	
	//Save button 
	private String save;
	
	//Validation indicator
	private Boolean validate = Boolean.FALSE;
			
	@DefaultHandler
	public Resolution process() {
	  if(validate) {
      return validate();
      
    } else if(StringUtils.isNotBlank(save)) {
      return save();
      
    } else if(StringUtils.isNotBlank(id)) {
      //Existing project
      return edit();

    } else {
      //New project
      return form();
            
    }
	}
	
	private Resolution validate() {
    List<String> errors = ApplicationValidator.validate(application);
    return new StreamingResolution("application/json",(new Gson()).toJson(errors));

  }
  
  private Resolution save() {
    //Save Project
    ApplicationService as = new ApplicationService();
    application.setUsername(getUser().getName());
    as.save(application);
    
    //Return to Project List
    return ResolutionUrl.REDIRECT_PROJECT_STUDENT_LIST;
  }
	
	private Resolution edit() {
		//Load existing project
		ApplicationService as = new ApplicationService();
		application = as.get(Long.valueOf(id));
		getContext().getRequest().setAttribute("application", application);
		
		return form();
	}
	private Resolution form() {
		return ResolutionUrl.FORWARD_APPLICANT_FORM;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Application getApplication() {
		return application;
	}

	public void setApplication(Application application) {
		this.application = application;
	}

	public String getSave() {
		return save;
	}

	public void setSave(String save) {
		this.save = save;
	}

  public Boolean getValidate() {
    return validate;
  }

  public void setValidate(Boolean validate) {
    this.validate = validate;
  }


}
