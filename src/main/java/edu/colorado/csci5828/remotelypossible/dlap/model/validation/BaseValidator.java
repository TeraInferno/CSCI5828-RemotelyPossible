package edu.colorado.csci5828.remotelypossible.dlap.model.validation;

import org.apache.commons.lang3.StringUtils;

public class BaseValidator {

	public static boolean isBlank(String b) {
		return StringUtils.isBlank(b);
	}
}
