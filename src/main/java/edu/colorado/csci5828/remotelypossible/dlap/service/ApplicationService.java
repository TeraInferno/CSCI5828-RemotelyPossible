package edu.colorado.csci5828.remotelypossible.dlap.service;


import edu.colorado.csci5828.remotelypossible.dlap.model.Application;

public class ApplicationService extends BaseEntityService<Application,Long> {

	@Override
	protected Class<Application> entityClass() {
		return Application.class;
	}

}
