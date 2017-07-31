package com.igo.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

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
		// Criteria c = session.createCriteria(Users.class);
		// Example example = Example.create(condition);
		Session session = sessionFactory.openSession();
		String hql = "from Users where loginName='" + condition.getLoginName()
				+ "' and loginPwd='" + condition.getLoginPwd() + "'";
		Query query = session.createQuery(hql);
		List<Users> user = query.list();
		return user;
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

	@Override
	public Map<String, Object> register(Users user) {
		// TODO Auto-generated method stub
		Map retMap = new HashMap<String, Object>();
		try {
			Date now = new Date();
			Session session = sessionFactory.openSession();
			session = sessionFactory.getCurrentSession();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
			String newDate = df.format(now);
			user.setCreatetime(newDate);
			session.save(user);
			retMap.put("retCode", "1");
			retMap.put("retMsg", "注册成功");
		} catch (Exception e) {
			e.printStackTrace();
			retMap.put("retCode", "0");
			retMap.put("retMsg", "注册失败");
		}
		return retMap;
	}

	@Override
	public boolean checkLoginNameExsit(String loginName) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session = sessionFactory.getCurrentSession();
		String sql = "select uid from users where LoginName=?";
		Query query = session.createSQLQuery(sql);
		query.setString(0, loginName);
		if (query.list().size() > 0) {
			return false;
		}
		return true;
	}
}
