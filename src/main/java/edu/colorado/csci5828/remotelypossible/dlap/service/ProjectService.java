package edu.colorado.csci5828.remotelypossible.dlap.service;

import java.util.List;
import javax.persistence.Tuple;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

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
	
	public List<Tuple> findAllByMajor(String major) {
	  CriteriaBuilder cb = getCurrentSession().getCriteriaBuilder();
    CriteriaQuery<Tuple> cq = cb.createTupleQuery();
    Root<Project> root = cq.from(entityClass());
    
    cq.multiselect(root.get("id"),root.get("description"))
      .where(cb.isMember(major, root.get("acceptedMajors")));
    
    
    return getCurrentSession().createQuery(cq).getResultList();
  }
}
