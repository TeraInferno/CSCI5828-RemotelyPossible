package edu.colorado.csci5828.remotelypossible.dlap.model.validation;

import java.util.ArrayList;
import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.model.Student;

public class ApplicationValidator extends BaseValidator {
	
	
	public static List<String> validate(Application a) {
		List<String> errors = new ArrayList<String>();
		
		if(a == null) {
		  a = new Application();
		}
		
		if(a.getStudent() == null) {
		  errors.add("application.student.name");
		  errors.add("application.student.gender");
		  errors.add("application.student.boulderAddress");
		  errors.add("application.student.boulderPhone.areacode");
		  //application.student.boulderPhone.prefix
		  //application.student.boulderPhone.number
		  errors.add("application.student.boulderEmail");
		  errors.add("application.student.primaryMajor");
		  errors.add("application.student.gpa");
		  errors.add("application.student.schoolLevel");
		  errors.add("application.student.graduationMonth");  
		  //application.student.graduationYear
		  errors.add("application.student.studentId");		  
		} else {
		  Student s = a.getStudent();
		  if(isBlank(s.getName())) {
		    errors.add("application.student.name");  
		  }
		  
		  if(isBlank(s.getGender())) {
		    errors.add("application.student.gender");  
		  }
		  
		  if(isBlank(s.getBoulderAddress())) {
		    errors.add("application.student.boulderAddress");  
		  }
		  
		  
		  
		  if(!isPhoneNumber(s.getBoulderPhone())) {
		    errors.add("application.student.boulderPhone.areacode");
	      //application.student.boulderPhone.prefix
	      //application.student.boulderPhone.number
		  }
      
      
      if(!isEmail(s.getBoulderEmail())) {
        errors.add("application.student.boulderEmail");
      }
      
      if(isBlank(s.getPrimaryMajor())) {
        errors.add("application.student.primaryMajor");
      }
      
      if(!isGpa(s.getGpa())) {
        errors.add("application.student.gpa");
      } 
      
      if(isBlank(s.getSchoolLevel())) {
        errors.add("application.student.schoolLevel");
      }
      
      if(isBlank(s.getGraduationMonth()) || isBlank(s.getGraduationYear())) {
        errors.add("application.student.graduationMonth");  
        //application.student.graduationYear
      }
      
      if(s.getStudentId() == null || s.getStudentId() < 100000000 || s.getStudentId() > 999999999) {
        errors.add("application.student.studentId");
      }
 		  
		}
		
		if(a.getApprenticeshipInfo() == null) {
		  errors.add("application.apprenticeshipInfo.firstChoice");
		} else if(a.getApprenticeshipInfo().getFirstChoice() == null) {
		  errors.add("application.apprenticeshipInfo.firstChoice");
		}
		
		
		return errors;
		
	}
}
