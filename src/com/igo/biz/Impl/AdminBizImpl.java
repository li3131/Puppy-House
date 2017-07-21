package com.igo.biz.Impl;

import java.util.List;

import com.igo.biz.AdminBiz;
import com.igo.dao.AdminDAO;
import com.igo.entity.Admin;

public class AdminBizImpl implements AdminBiz {
	AdminDAO adminDao;

	public void setAdminDao(AdminDAO adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public List search(Admin condition) {
		// TODO Auto-generated method stub
		return adminDao.search(condition);
	}

}
