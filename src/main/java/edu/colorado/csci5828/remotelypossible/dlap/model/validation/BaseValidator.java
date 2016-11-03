package edu.colorado.csci5828.remotelypossible.dlap.model.validation;

import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.hazlewood.connor.bottema.emailaddress.EmailAddressValidator;

import edu.colorado.csci5828.remotelypossible.dlap.model.PhoneNumber;

public class BaseValidator {

  public static final Pattern PHONE_NUMBER_NORTH_AMERICA = Pattern.compile("^\\(?([0-9]{3})\\)?[-.\\s]?([0-9]{3})[-.\\s]?([0-9]{4})$");
  
	public static boolean isBlank(String b) {
		return StringUtils.isBlank(b);
	}
	public static boolean isPhoneNumber(PhoneNumber p) {
	  
	  if(StringUtils.isBlank(p.getAreacode()) ||
	      StringUtils.isBlank(p.getPrefix()) ||
	      StringUtils.isBlank(p.getNumber())) {
	    return false;
	  }
	  
	  if(p.getAreacode().length() != 3 ||
	      p.getPrefix().length() !=3 ||
	      p.getNumber().length() != 4) {
	    return false;
	  }
	  
	  if(!StringUtils.isNumeric(p.getAreacode()) ||
	      !StringUtils.isNumeric(p.getPrefix()) ||
	      !StringUtils.isNumeric(p.getNumber())) {
	    return false;
	  }
	    
	  return true;
	}
	public static boolean isEmail(String e) {
	  return EmailAddressValidator.isValid(e);
	}
	public static boolean isGpa(String g) {
	  //Expected Format #.#(##)
	  
	  if(isBlank(g)) {
	    return false;
	  }
	  
	  try {
	    Float gpa = Float.parseFloat(g);
	    if(gpa < 0.0 || gpa > 4.0) {
	      return false;
	    }
	  } catch(Exception e) {
	    return false;
	  }
	  return true;
	}
}
