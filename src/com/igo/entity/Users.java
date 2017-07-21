package com.igo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String loginName;
	private String loginPwd;
	private String trueName;
	private String email;
	private String phone;
	private String address;
	private Set adopts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String loginName, String loginPwd, String trueName,
			String email, String phone, String address) {
		this.loginName = loginName;
		this.loginPwd = loginPwd;
		this.trueName = trueName;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	/** full constructor */
	public Users(String loginName, String loginPwd, String trueName,
			String email, String phone, String address, Set adopts) {
		this.loginName = loginName;
		this.loginPwd = loginPwd;
		this.trueName = trueName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.adopts = adopts;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getLoginName() {
		return this.loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPwd() {
		return this.loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getTrueName() {
		return this.trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set getAdopts() {
		return this.adopts;
	}

	public void setAdopts(Set adopts) {
		this.adopts = adopts;
	}

	@Override
	public String toString() {
		return "Users [uid=" + uid + ", loginName=" + loginName + ", loginPwd="
				+ loginPwd + ", trueName=" + trueName + ", email=" + email
				+ ", phone=" + phone + ", address=" + address + ", adopts="
				+ adopts + "]";
	}

}