package com.igo.biz.Impl;

import java.util.List;

import com.igo.biz.DogBiz;
import com.igo.dao.DogDAO;
import com.igo.entity.Dogs;
import com.igo.entity.Pager;
import com.igo.entity.Types;

public class DogBizImpl implements DogBiz {
	DogDAO dogDAO;

	public void setDogDAO(DogDAO dogDAO) {
		this.dogDAO = dogDAO;
	}

	@Override
	public List getAllTypes() {
		// TODO Auto-generated method stub
		return dogDAO.getAllTypes();
	}

	@Override
	public List getAllDog(int page) {
		// TODO Auto-generated method stub
		return dogDAO.getAllDog(page);
	}

	@Override
	public Pager getPagerOfAllDog() {
		// TODO Auto-generated method stub
		int count = dogDAO.getCountOfAllDog();
		Pager pager = new Pager();
		pager.setPerPageRows(10);
		pager.setRowCount(count);
		return pager;
	}

	@Override
	public List getDogByCondition(Dogs condtion, int page) {
		// TODO Auto-generated method stub
		return dogDAO.getDogByCondition(condtion, page);
	}

	@Override
	public Pager getPagerOfDog(Dogs condtion) {
		// TODO Auto-generated method stub
		int count = dogDAO.getCountOfDog(condtion);
		Pager pager = new Pager();
		pager.setPerPageRows(10);
		pager.setRowCount(count);
		return pager;
	}

	@Override
	public void addDog(Dogs dog) {
		// TODO Auto-generated method stub
		dogDAO.addDog(dog);
	}

	@Override
	public void addTypes(Types types) {
		// TODO Auto-generated method stub
		dogDAO.addTypes(types);
	}

	@Override
	public Types searchTypes(Types types) {
		// TODO Auto-generated method stub
		return dogDAO.searchTypes(types);
	}

	@Override
	public List searchDogsByUid(String name) {
		// TODO Auto-generated method stub
		return dogDAO.searchDogsByUid(name);
	}

	@Override
	public List searchAdoptByUid(int uid) {
		// TODO Auto-generated method stub
		return dogDAO.searchAdoptByUid(uid);
	}

	@Override
	public Dogs getDogs(int did) {
		// TODO Auto-generated method stub
		return dogDAO.getDogs(did);
	}

	@Override
	public void modify(Dogs dogs) {
		// TODO Auto-generated method stub
		dogDAO.modify(dogs);
	}

}
