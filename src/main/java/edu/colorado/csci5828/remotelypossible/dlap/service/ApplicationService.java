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

import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.model.PhoneNumber;

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
	    
	    if(a.getStudent().getBoulderPhone() == null) {
	      //Must have a phone number so FakeMe will work
	      a.getStudent().setBoulderPhone(new PhoneNumber());
	      db.save(a.getStudent().getBoulderPhone());
	    }
	    
	    if(a.getStudent().getId() == null) {
	      db.save(a.getStudent());
	    }
	    
	    //Persist project
	    db.saveOrUpdate(a);
	    
	    return a.getId();
	  }

  public List<Map<String, String>> findAllFakeMeStudent() {
    CriteriaBuilder cb = getCurrentSession().getCriteriaBuilder();
    CriteriaQuery<Tuple> cq = cb.createTupleQuery();
    Root<Application> root = cq.from(entityClass());
    
    cq.multiselect(
        root.get("username"),
        root.get("student").get("name"),
        root.get("student").get("boulderEmail"),
        root.get("student").get("boulderPhone").get("areacode"),
        root.get("student").get("boulderPhone").get("prefix"),
        root.get("student").get("boulderPhone").get("number")
      ).distinct(true);
    
    List<Tuple> studentIds = getCurrentSession().createQuery(cq).getResultList();
    
    List<Map<String,String>> student = new ArrayList<Map<String,String>>(studentIds.size());
    for(Tuple t: studentIds) {
      Map<String,String> member = new HashMap<String,String>(4);
      member.put("username", (String)t.get(0));
      member.put("name", (String)t.get(1));
      member.put("email", (String)t.get(2));
      if(t.get(3) != null) {
        member.put("phone", new String("("+t.get(3)+") "+t.get(4)+"-"+t.get(5)));
      }
      student.add(member);
    }

    return student;

  }

}
