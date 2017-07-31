package com.igo.dao;

import java.util.List;
import java.util.Map;

import com.igo.entity.Users;

public interface UserDAO {
	public List search(Users condition);

	public void addUsers(Users user);

	public void modify(Users users);

	public Users getUsers(int id);

	public List getAllUsers();

	public Integer getCountOfAllUsers();

	public void deleteUser(Users user);

	public Map register(Users user);

	public boolean checkLoginNameExsit(String loginName);
}
