package edu.colorado.csci5828.remotelypossible.dlap.service;


import org.hibernate.Session;

import edu.colorado.csci5828.remotelypossible.dlap.model.Application;

public class ApplicationService extends BaseEntityService<Application,Long> {

	@Override
	protected Class<Application> entityClass() {
		return Application.class;
	}
	
	 public Long save(Application a) {
	    //Get the current transaction session
	    Session db = getCurrentSession();
	    
	    //Persist all nested object
	    if(a.getApprenticeshipInfo().getId() == null) {
	      db.save(a.getApprenticeshipInfo());
	    }
	    if(a.getStudent().getId() == null) {
	      db.save(a.getStudent());
	    }
	    
	    //Persist project
	    db.saveOrUpdate(a);
	    
	    return a.getId();
	  }

}
