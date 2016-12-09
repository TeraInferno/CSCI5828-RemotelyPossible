package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.common.ResolutionUrl;
import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.service.ApplicationService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/matrix/calc")
@HttpCache(allow=false)
public class MatrixCalcAction extends BaseAction {
  
	@DefaultHandler
	public Resolution matrix() {
	  
	  calculateScores();
	  
	  return ResolutionUrl.FORWARD_MATRIX;
	}
	
	private void calculateScores() {
	  
	  ApplicationService as = new ApplicationService();
	  List<Application> applicationList = as.findAll();
	  
	  for(Application a: applicationList) {
	  
	    if(isDisqualified(a)) {
	     as.update(a);
	     continue;
	    }
	   
	    score(a);
	    as.update(a);
	  }
	}
	
	private boolean isDisqualified(Application a) {
	  
	  //GPA must meet minimum qualifications
	  if( Float.parseFloat(a.getStudent().getGpa()) < 3.0f) {
	    a.setScore(Application.SCORE_DISQUALIFIED);
	    a.setDisqualReason("Reported GPA too low");
	    return true;
	  }

      //Eliminate students who are unable to serve all year
	  //EDIT getServeAllYear() when appropriate field is added to application
	  if(a.getApprenticeshipInfo().getServeAllYear().equals("No")){
        a.setScore(Application.SCORE_DISQUALIFIED);
        a.setDisqualReason("Students must be able to serve in DLA all year");
        return true		
      }
	  
	  //Eliminate students who do not meet project requirements
	  //EDIT getMeetRequirements() when field is added to application
	  if(a.getApprenticeshipInfo().getMeetRequirements().equals("No")){
        a.setScore(Application.SCORE_DISQUALIFIED);
		a.setDisqualReason("Students must meet project requirements");
		return true;
	  }
	  
	  //Eliminate students in DLA in the past year
	  //EDIT getGraduateStudent() when field is added to student application
	  if(a.getApprenticeshipInfo().getGraduateStudent().equals("Yes")){
        a.setScore(Application.SCORE_DISQUALIFIED);
		a.setDisqualReason("Graduate students are ineligible");
		return true;
	  }
	  
	  //Eliminate MS/BS students in MS year - PLACEHOLDER
	  //MS/BS students would be eliminated as graduate students above
	  //However, if separation is required, it can be done here
	  
	  //Eliminate students not in College of Engineering - PLACEHOLDER
	  //Currently, these students shouldn't be able to apply as their
	  //majors would not show up under the student application
	  //majors list
	  //If this functionality is changed in the future, the following
	  //can be used to eliminate them, modify getEngineering() when added
	  //if(a.getStudent.getEngineering.equals("No")){
      //  a.setScore(Application.SCORE_DISQUALIFIED);
	  //  a.setDisqualReason("Students not in College of Engineering and Applied Science are ineligible");
	  //return true;
	  //}
	  
	  
	  //Eliminate students not in College of Engineering and Applied Science - Currently other majors cannot apply
	  
	  //Eliminate graduate students
	  if(a.getApprenticeshipInfo().getServed().equals("Yes")){
        a.setScore(Application.SCORE_DISQUALIFIED);
		a.setDisqualReason("Students who served in the DLA in the past year are ineligible");
		return true;
	  }
	  
	  return false;
	}
	
	private void score(Application a) {
	  int score = 0;
	  //Applied before (give them an extra point)
	  if(a.getApprenticeshipInfo().getAppliedPreviously().equals("Yes")) {
	    score = score + 50;
	  }
      
	  //Females Carefully considered
	  if( a.getStudent().getGender().equals("Female") ) {
	    score = score + 50;
	  }
	  
	  //Minorities carefully considered
	  if( ! a.getStudent().getRace().equals("White") ){
	    score= score + 50;
	  }
	  
	  //GPA over 3.0 affects qualification by a factor of 100 - This accounts for .01 GPA
	  //Subtract 300 since every qualified student has at least 3.00 GPA
	  score = score + (Float.parseFloat(a.getStudent().getGpa()).Math.round() * 100) - 300;
	  
	  //If student is selected by faculty, set score to 1M - PLACEHOLDER
	  
	  //Prefer students who are GoldShirts
	  if ( a.getStudent().getGoldshirt.equals("Yes") ) {
		  score = score + 50;
	  }
	  
	  a.setScore(score);
	  
	}

}
