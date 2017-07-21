package com.igo.entity;

import java.util.Date;

/**
 * Adopt entity. @author MyEclipse Persistence Tools
 */

public class Adopt implements java.io.Serializable {

	// Fields

	private Integer oid;
	private Users users;
	private Dogs dogs;
	private Date adoptTime;
	private String state;

	// Constructors

	/** default constructor */
	public Adopt() {
	}

	/** full constructor */
	public Adopt(Users users, Dogs dogs, Date adoptTime, String state) {
		this.users = users;
		this.dogs = dogs;
		this.adoptTime = adoptTime;
		this.state = state;
	}

	// Property accessors

	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Dogs getDogs() {
		return this.dogs;
	}

	public void setDogs(Dogs dogs) {
		this.dogs = dogs;
	}

	public Date getAdoptTime() {
		return this.adoptTime;
	}

	public void setAdoptTime(Date adoptTime) {
		this.adoptTime = adoptTime;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}