package edu.colorado.csci5828.remotelypossible.dlap.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    
    cq.multiselect(
        root.get("id"),
        root.get("description")
      ).where(
          cb.isMember(major, root.get("acceptedMajors"))
      );
    
    
    return getCurrentSession().createQuery(cq).getResultList();
  }
	
	/**
	 * List all known project owners for listing on the FakeMe page
	 * 
	 * 
	 * @return List of distinct project Faculty name, email, areacode, prefix and number
	 */
	public List<Map<String,String>> findAllFakeMeFaculty() {
    CriteriaBuilder cb = getCurrentSession().getCriteriaBuilder();
    CriteriaQuery<Tuple> cq = cb.createTupleQuery();
    Root<Project> root = cq.from(entityClass());
    
    cq.multiselect(
        root.get("username"),
        root.get("faculty1").get("name"),
        root.get("faculty1").get("email"),
        root.get("faculty1").get("phone").get("areacode"),
        root.get("faculty1").get("phone").get("prefix"),
        root.get("faculty1").get("phone").get("number")
      ).distinct(true);
    
    List<Tuple> facultyIds = getCurrentSession().createQuery(cq).getResultList();
    
    List<Map<String,String>> faculty = new ArrayList<Map<String,String>>(facultyIds.size());
    for(Tuple t: facultyIds) {
      Map<String,String> member = new HashMap<String,String>(4);
      member.put("username", (String)t.get(0));
      member.put("name", (String)t.get(1));
      member.put("email", (String)t.get(2));
      if(t.get(3) != null) {
        member.put("phone", new String("("+t.get(3)+") "+t.get(4)+"-"+t.get(5)));
      }
      faculty.add(member);
    }

    return faculty;
  }
}
