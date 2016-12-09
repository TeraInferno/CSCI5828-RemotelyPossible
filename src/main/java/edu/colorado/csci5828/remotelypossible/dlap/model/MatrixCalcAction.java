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
	  
	  return false;
	}
	
	private void score(Application a) {
	  int score = 0;
	  //Applied before (give them an extra point)
	  if(a.getApprenticeshipInfo().getAppliedPreviously().equals("Yes")) {
	    score = score + 100;
	  }
      //PLACEHOLDER
	  
	  a.setScore(score);
	  
	}

}
