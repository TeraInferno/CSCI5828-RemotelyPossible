package edu.colorado.csci5828.remotelypossible.dlap.service;

import org.hibernate.LockOptions;
import org.hibernate.Session;
import org.hibernate.query.Query;

import edu.colorado.csci5828.remotelypossible.dlap.hibernate.HibernateSessionUtil;
import javax.annotation.Nullable;
import javax.persistence.criteria.CriteriaQuery;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@SuppressWarnings("unchecked")
public abstract class BaseEntityService<T, I extends Serializable> {

	protected abstract Class<T> entityClass();

	public T get(I id) {
		if (id != null) {
			return (T) getCurrentSession().get(entityClass(), id);
		} else {
			return null;
		}
	}

	public T load(I id) {
		return (T) getCurrentSession().load(entityClass(), id);
	}

	public <M extends T> I save(M modelObject) {
		return (I) getCurrentSession().save(modelObject);
	}

	public <M extends T> M update(M modelObject) {
		getCurrentSession().update(modelObject);
		return modelObject;
	}

	public <M extends T, R extends T> R merge(M modelObject) {
		return (R) getCurrentSession().merge(modelObject);
	}

	public <M extends T> M saveOrUpdate(M modelObject) {
		getCurrentSession().saveOrUpdate(modelObject);
		return modelObject;
	}

	public <M extends T> List<M> bulkSaveOrUpdate(M... modelObject) {
		final List<M> result = new ArrayList<>();
		for (M m : modelObject) {
			getCurrentSession().saveOrUpdate(m);
			result.add(m);
		}
		return result;
	}

	public <M extends T> void delete(M modelObject) {
		getCurrentSession().delete(modelObject);
	}

	protected <M extends T> void lock(M modelObject, LockOptions lockMode) {
		getCurrentSession().buildLockRequest(lockMode).lock(modelObject);
	}

	public <M extends T> void attach(M modelObject) {
		if (!getCurrentSession().contains(modelObject)) {
			getCurrentSession().refresh(modelObject, LockOptions.NONE);
		}
	}

	public Query<T> createQuery(String queryString) {
		return getCurrentSession().createQuery(queryString);
	}

	public Query<T> getNamedQuery(String queryName) {
		return getCurrentSession().getNamedQuery(queryName);
	}

	public void flush() {
		getCurrentSession().flush();
	}

	public CriteriaQuery<T> createCriteria() {
		return getCurrentSession().getCriteriaBuilder().createQuery(entityClass());
	}

	public <M extends T> List<M> list(CriteriaQuery<M> criteria) {
		if (criteria != null) {
			return getCurrentSession().createQuery(criteria).getResultList();
		} else {
			return Collections.emptyList();
		}
	}

	public <M extends T> List<M> findAll() {
		CriteriaQuery<T> cq = createCriteria();
		cq.from(entityClass());
		return (List<M>) list(cq);
	}


	@Nullable
	public <M> M first(List<M> list) {
		if (list != null && list.size() > 0) {
			return list.get(0);
		} else {
			return null;
		}
	}

	public <M extends T> List<M> saveOrUpdate(List<M> toSave) {
		if (toSave == null || toSave.isEmpty()) {
			return Collections.emptyList();
		}
		List<M> result = new ArrayList<>(toSave.size());
		for (M m : toSave) {
			result.add(saveOrUpdate(m));
		}
		return result;
	}

	public <M extends T> List<M> saveOrUpdate(M... toSave) {
		return saveOrUpdate(Arrays.asList(toSave));
	}

	public <M extends T> List<M> merge(List<M> toSave) {
		if (toSave == null || toSave.isEmpty()) {
			return Collections.emptyList();
		}
		List<M> result = new ArrayList<>(toSave.size());
		for (M m : toSave) {
			result.add((M) merge(m));
		}
		return result;
	}

	public <M extends T> List<M> merge(M... toSave) {
		return merge(Arrays.asList(toSave));
	}

	public Session getCurrentSession() {
		return HibernateSessionUtil.getCurrentSession();
	}
}
