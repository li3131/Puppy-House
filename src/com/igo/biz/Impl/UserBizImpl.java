package com.igo.biz.Impl;

import java.util.List;

import com.igo.biz.UserBiz;
import com.igo.dao.UserDAO;
import com.igo.entity.Pager;
import com.igo.entity.Users;

public class UserBizImpl implements UserBiz {
	UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List search(Users condition) {
		// TODO Auto-generated method stub
		return userDAO.search(condition);
	}

	@Override
	public void addUsers(Users user) {
		// TODO Auto-generated method stub
		userDAO.addUsers(user);
	}

	@Override
	public void modify(Users users) {
		// TODO Auto-generated method stub
		userDAO.modify(users);
	}

	@Override
	public Users getUsers(int id) {
		// TODO Auto-generated method stub
		return userDAO.getUsers(id);
	}

	@Override
	public List getAllUsers() {
		// TODO Auto-generated method stub
		return userDAO.getAllUsers();
	}

	@Override
	public Pager getPagerOfUsers() {
		// TODO Auto-generated method stub
		int count = userDAO.getCountOfAllUsers();
		Pager pager = new Pager();
		pager.setPerPageRows(10);
		pager.setRowCount(count);
		return pager;
	}

	@Override
	public void deleteUser(Users user) {
		// TODO Auto-generated method stub
		userDAO.deleteUser(user);
	}
}
