package com.igo.dao;

import java.util.List;

import com.igo.entity.Users;

public interface UserDAO {
	public List search(Users condition);

	public void addUsers(Users user);

	public void modify(Users users);

	public Users getUsers(int id);

	public List getAllUsers();

	public Integer getCountOfAllUsers();

	public void deleteUser(Users user);
}
