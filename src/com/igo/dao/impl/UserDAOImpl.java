package com.igo.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

import com.igo.dao.UserDAO;
import com.igo.entity.Users;

public class UserDAOImpl implements UserDAO {
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List search(Users condition) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Criteria c = session.createCriteria(Users.class);
		Example example = Example.create(condition);
		c.add(example);
		return c.list();
	}

	@Override
	public void addUsers(Users user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(user);
	}

	@Override
	public void modify(Users users) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(users);
	}

	@Override
	public Users getUsers(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return (Users) session.get(Users.class, id);
	}

	@Override
	public List getAllUsers() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Users.class);
		return c.list();
	}

	@Override
	public Integer getCountOfAllUsers() {
		// TODO Auto-generated method stub
		Integer count = null;
		try {
			Session session = sessionFactory.getCurrentSession();
			Criteria c = session.createCriteria(Users.class);
			count = c.list().size();
		} catch (Exception e) {
			e.printStackTrace();

		}
		return count;
	}

	@Override
	public void deleteUser(Users user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(user);
	}
}
