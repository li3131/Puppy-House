package com.igo.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.igo.dao.AdoptDAO;
import com.igo.entity.Adopt;

public class AdoptDAOImpl implements AdoptDAO {
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAllAdopt() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Adopt.class);
		return c.list();
	}

	@Override
	public Integer getCountOfAllAdopt() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Adopt.class);
		return c.list().size();
	}

}
