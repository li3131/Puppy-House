package com.igo.biz;

import java.util.List;

import com.igo.entity.Pager;
import com.igo.entity.Users;

public interface UserBiz {
	public List search(Users condition);

	public void addUsers(Users user);

	public void modify(Users users);

	public Users getUsers(int id);

	public List getAllUsers();

	public Pager getPagerOfUsers();

	public void deleteUser(Users user);
}
