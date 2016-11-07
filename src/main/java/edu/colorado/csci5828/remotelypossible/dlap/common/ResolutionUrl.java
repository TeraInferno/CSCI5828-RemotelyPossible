package edu.colorado.csci5828.remotelypossible.dlap.common;

import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.RedirectResolution;
import net.sourceforge.stripes.action.Resolution;

/*
 * 
 * This class provide static Resolutions to common pages within the application.
 * It provide a single source of URIs/URLs so that file system changes do not generate
 * massive change sets   
 * 
 */

public class ResolutionUrl {

	public static final Resolution FORWARD_INDEX = new ForwardResolution("/WEB-INF/jsp/index.jsp");
	public static final Resolution FORWARD_PROJECT_FORM = new ForwardResolution("/WEB-INF/jsp/projectForm.jsp");
	
	public static final Resolution FORWARD_PROJECT_LIST = new ForwardResolution("/WEB-INF/jsp/projectList.jsp");
	public static final Resolution REDIRECT_PROJECT_LIST = new RedirectResolution("/do/project/list");
	
	public static final Resolution FORWARD_APPLICANT_FORM = new ForwardResolution("/WEB-INF/jsp/applicantForm.jsp");
	
	public static final Resolution FORWARD_LOGIN = new ForwardResolution("/WEB-INF/jsp/login.jsp");
  public static final Resolution REDIRECT_LOGIN = new RedirectResolution("/do/login");
	
}
