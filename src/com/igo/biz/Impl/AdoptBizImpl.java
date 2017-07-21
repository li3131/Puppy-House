package com.igo.biz.Impl;

import java.util.List;

import com.igo.biz.AdoptBiz;
import com.igo.dao.AdoptDAO;
import com.igo.entity.Pager;

public class AdoptBizImpl implements AdoptBiz {
	private AdoptDAO adoptDao;

	public void setAdoptDao(AdoptDAO adoptDao) {
		this.adoptDao = adoptDao;
	}

	@Override
	public List getAllAdopt() {
		// TODO Auto-generated method stub
		return adoptDao.getAllAdopt();
	}

	@Override
	public Pager getPagerOfAllAdopt() {
		// TODO Auto-generated method stub
		int count = adoptDao.getCountOfAllAdopt();
		Pager pager = new Pager();
		pager.setPerPageRows(10);
		pager.setRowCount(count);
		return pager;
	}

}
