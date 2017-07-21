package com.igo.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.igo.dao.DogDAO;
import com.igo.entity.Dogs;
import com.igo.entity.Types;

public class DogDAOImpl implements DogDAO {
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAllTypes() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Types");
		return query.list();
	}

	@Override
	public List getAllDog(int page) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Criteria c = null;
		List dogList = null;
		try {
			c = session.createCriteria(Dogs.class);
			c.setFirstResult(8 * (page - 1));
			c.setMaxResults(8);
			dogList = c.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dogList;
	}

	@Override
	public Integer getCountOfAllDog() {
		// TODO Auto-generated method stub
		Integer count = null;
		try {
			Session session = sessionFactory.openSession();
			Criteria c = session.createCriteria(Dogs.class);
			count = c.list().size();
		} catch (Exception e) {
			e.printStackTrace();

		}
		return count;
	}

	@Override
	public List getDogByCondition(Dogs condtion, int page) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Criteria c = session.createCriteria(Dogs.class);
		if (condtion != null) {
			if ((condtion.getName() != null)
					&& (!condtion.getName().equals(""))) {
				c.add(Restrictions.like("name", condtion.getName(),
						MatchMode.ANYWHERE));
			}
			if ((condtion.getTypes() != null)
					&& (!condtion.getTypes().equals(""))) {
				c.add(Restrictions.like("types.tid", condtion.getTypes()
						.getTid()));
			}
		}
		c.setFirstResult(6 * (page - 1));
		c.setMaxResults(6);
		return c.list();
	}

	@Override
	public Integer getCountOfDog(Dogs condtion) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Criteria c = session.createCriteria(Dogs.class);
		if (condtion != null) {
			if ((condtion.getName() != null)
					&& (!condtion.getName().equals(""))) {
				c.add(Restrictions.like("name", condtion.getName(),
						MatchMode.ANYWHERE));
			}
			if ((condtion.getTypes() != null)
					&& (!condtion.getTypes().equals(""))) {
				c.add(Restrictions.like("types.tid", condtion.getTypes()
						.getTid()));
			}
		}
		return c.list().size();
	}

	@Override
	public void addDog(Dogs dog) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(dog);
	}

	@Override
	public void addTypes(Types types) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(types);
	}

	@Override
	public Types searchTypes(Types types) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Types.class);
		Example example = Example.create(types);
		c.add(example);
		if (c.list().size() > 0)
			return (Types) c.list().get(0);
		else
			return null;
	}

	@Override
	public List searchDogsByUid(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Dogs d where d.owner = '" + name + "'";
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public List searchAdoptByUid(int uid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Adopt a where a.users.uid = " + uid;
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public Dogs getDogs(int did) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return (Dogs) session.get(Dogs.class, did);
	}

	@Override
	public void modify(Dogs dogs) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(dogs);
	}
}
