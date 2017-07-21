package com.igo.biz;

import java.util.List;

import com.igo.entity.Dogs;
import com.igo.entity.Pager;
import com.igo.entity.Types;

public interface DogBiz {
	public List getAllTypes();

	public List getAllDog(int page);

	public Pager getPagerOfAllDog();

	public List getDogByCondition(Dogs condtion, int page);

	public Pager getPagerOfDog(Dogs condtion);

	public void addDog(Dogs dog);

	public void addTypes(Types types);

	public Types searchTypes(Types types);

	public List searchDogsByUid(String name);

	public List searchAdoptByUid(int uid);

	public Dogs getDogs(int did);

	public void modify(Dogs dogs);
}
