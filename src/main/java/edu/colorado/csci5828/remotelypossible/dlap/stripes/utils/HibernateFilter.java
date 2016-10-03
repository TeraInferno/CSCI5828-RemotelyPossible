package edu.colorado.csci5828.remotelypossible.dlap.stripes.utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import edu.colorado.csci5828.remotelypossible.dlap.hibernate.HibernateSessionUtil;

public class HibernateFilter implements Filter {
	private FilterConfig filterConfig = null;

	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	public void destroy() {
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		try {		
			HibernateSessionUtil.beginTransaction();
			chain.doFilter(req, resp);
		} catch (Exception e) {
			HibernateSessionUtil.rollbackOnly();
			e.printStackTrace();

			req.setAttribute("e", e);
			req.getRequestDispatcher("/appException.jsp").forward(req, resp);
			
		} finally {
			HibernateSessionUtil.resolveTransaction();
			HibernateSessionUtil.closeSession();
			
		}
	}
}
