package com.igo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Dogs entity. @author MyEclipse Persistence Tools
 */

public class Dogs implements java.io.Serializable {

	// Fields

	private Integer did;
	private Types types;
	private String name;
	private String age;
	private String content;
	private String image;
	private String gender;
	private String owner;
	private String address;
	private String state;
	private Set adopts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Dogs() {
	}

	/** minimal constructor */
	public Dogs(Types types, String name, String address, String state) {
		this.types = types;
		this.name = name;
		this.address = address;
		this.state = state;
	}

	/** full constructor */
	public Dogs(Types types, String name, String age, String content,
			String image, String gender, String owner, String address,
			String state, Set adopts) {
		this.types = types;
		this.name = name;
		this.age = age;
		this.content = content;
		this.image = image;
		this.gender = gender;
		this.owner = owner;
		this.address = address;
		this.state = state;
		this.adopts = adopts;
	}

	// Property accessors

	public Integer getDid() {
		return this.did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public Types getTypes() {
		return this.types;
	}

	public void setTypes(Types types) {
		this.types = types;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return this.age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getAdopts() {
		return this.adopts;
	}

	public void setAdopts(Set adopts) {
		this.adopts = adopts;
	}

}