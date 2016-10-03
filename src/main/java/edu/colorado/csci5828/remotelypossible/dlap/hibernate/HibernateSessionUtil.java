package edu.colorado.csci5828.remotelypossible.dlap.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class HibernateSessionUtil {
	private static final ThreadLocal<Session> session;
	private static final ThreadLocal<Boolean> rollbackFlag;

	static {
		session = new ThreadLocal<Session>();
		rollbackFlag = new ThreadLocal<Boolean>();
	}

	private HibernateSessionUtil() {
	}

	public static void beginTransaction() {
		Session ses = getCurrentSession();

		if (ses == null) {
			session.set(HibernateUtil.getSession());
			rollbackFlag.set(false);
			ses = getCurrentSession();
		}

		ses.beginTransaction();
	}

	public static void rollbackOnly() {
		rollbackFlag.set(true);
		getCurrentSession().clear();
	}

	public static Session getCurrentSession() {
		return session.get();
	}

	public static void evict(Object entity) {
		getCurrentSession().evict(entity);
	}

	public static void evict(List<Object> entities) {
		for (Object o : entities)
			evict(o);
	}

	private static void commitTransaction() {
		Session ses = getCurrentSession();
		Transaction trn = ses.getTransaction();

		trn.commit();
	}

	private static void rollbackTransaction() {
		getCurrentSession().getTransaction().rollback();
	}

	public static void resolveTransaction() {
		if (rollbackFlag.get()) {
			rollbackTransaction();
		} else {
			commitTransaction();
		}
	}

	public static void closeSession() {
		getCurrentSession().close();

		session.set(null);
		rollbackFlag.set(null);
	}
}
