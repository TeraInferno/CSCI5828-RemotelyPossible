package edu.colorado.csci5828.remotelypossible.dlap.service;

import org.hibernate.Session;

import edu.colorado.csci5828.remotelypossible.dlap.model.Project;

public class ProjectService extends BaseEntityService<Project,Long> {

	@Override
	protected Class<Project> entityClass() {
		return Project.class;
	}

	public Long save(Project p) {
		//Get the current transaction session
		Session db = getCurrentSession();
		
		//Persist all nested object
		if(p.getFaculty1() != null) {
			db.saveOrUpdate(p.getFaculty1().getPhone());
			db.saveOrUpdate(p.getFaculty1());
		}
		if(p.getFaculty2() != null) {
			db.saveOrUpdate(p.getFaculty2().getPhone());
			db.saveOrUpdate(p.getFaculty2());
		}
		if(p.getGraduate() != null) {
			db.saveOrUpdate(p.getGraduate().getPhone());
			db.saveOrUpdate(p.getGraduate());
		}
		
		//Persist project
		db.saveOrUpdate(p);
		
		return p.getId();
	}
}
