package edu.colorado.cscs5828.remotelypossible.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import edu.colorado.csci5828.remotelypossible.dlap.hibernate.HibernateSessionUtil;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;

public class ProjectServiceTest extends BaseServiceTest {

	
	@Test(expected=org.hibernate.PropertyValueException.class)
	public void addIncompleteProject() {
		//This should fail. Don't try to commit.
		HibernateSessionUtil.rollbackOnly();
		
		//Create the Project DB Service
		ProjectService ps = new ProjectService();
		
		//Create a new Project
		Project p = new Project();
		
		//Set anything, but description (the only required field)
		p.setCommunityDevelopmentFocus(0);
		
		//Try to save it
		ps.save(p);		
	}
	
	@Test
	public void addPartialProject() {
		cleanUpProjects();
		
		//Create the Project DB Service
		ProjectService ps = new ProjectService();
		
		//Create a new Project
		Project p = new Project();
		//Set the only required fiedl
		p.setDescription("Test Save Project");
		
		//Try to save
		ps.save(p);
		
		//List all Projects
		List<Project> pl = ps.findAll();
		
		//Should be just the one we added
		assertTrue(pl.size() == 1);
		
		//Delete the one we added
		ps.delete(p);
		
		//List all Projects
		pl = ps.findAll();
		
		//No projects left
		assertTrue(pl.size() == 0);
		
	}
	
	private void cleanUpProjects() {
		ProjectService ps = new ProjectService();
		List<Project> pl = ps.findAll();
		for(Project p: pl) {
			ps.delete(p);
		}
		
	}
}
