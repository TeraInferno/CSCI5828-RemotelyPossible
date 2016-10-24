package edu.colorado.csci5828.remotelypossible.dlap.model.validation;

import java.util.ArrayList;
import java.util.List;

import edu.colorado.csci5828.remotelypossible.dlap.model.Project;

public class ProjectValidator extends BaseValidator {
	
	
	public static List<String> validate(Project p) {
		List<String> errors = new ArrayList<String>();
		
		//
		//Description (only not null field in the DB)
		//
		if(isBlank(p.getDescription())) {
			errors.add("project.description");
		}
		
		//
		//Apprenticeship
		//
		if(isBlank(p.getLongDescription())) {
			errors.add("project.longDescription");
		}
		
		if(p.getAcceptedMajors() == null || p.getAcceptedMajors().size() == 0) {
			errors.add("project.acceptedMajors[0]");
		}
		
		if(isBlank(p.getSupervisionLevel())) {
			errors.add("project.supervisionLevel");
		}
		
		if(isBlank(p.getSupervisor())) {
			errors.add("project.supervisor");
		}
		
		if(isBlank(p.getNatureOfWork())) {
			errors.add("project.natureOfWork");
		} else if(p.getNatureOfWork().equals("Other") && 
				  isBlank(p.getNatureOfWorkOther())) {
			errors.add("project.naureOfWorkOther");
		}
		
		
		if(isBlank(p.getPriorWork())) {
			errors.add("project.priorWork");
		} else if(p.getPriorWork().equals("Other") &&
				isBlank(p.getPriorWorkOther())) {
			errors.add("project.priorWorkOther");
		}
		
		//
		//Members
		//
		if(p.getFaculty1() == null) {
			errors.add("project.faculty1.name");
			errors.add("project.faculty1.email");
			errors.add("project.faculty1.program");
		} else {
			if(isBlank(p.getFaculty1().getName())) {
				errors.add("project.faculty1.name");
			}
			if(isBlank(p.getFaculty1().getEmail())) {
				errors.add("project.faculty1.email");
			}
			if(isBlank(p.getFaculty1().getProgram())) {
				errors.add("project.faculty1.program");
			}
		}
	
		return errors;
		
	}
}
