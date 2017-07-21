package com.igo.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.igo.biz.AdminBiz;
import com.igo.biz.AdoptBiz;
import com.igo.biz.DogBiz;
import com.igo.biz.UserBiz;
import com.igo.entity.Admin;
import com.igo.entity.Dogs;
import com.igo.entity.Pager;
import com.igo.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport implements RequestAware,
		SessionAware {
	private Dogs dogs;

	public Dogs getDogs() {
		return dogs;
	}

	public void setDogs(Dogs dogs) {
		this.dogs = dogs;
	}

	private Admin admin;

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	private String loginName;
	private String loginPwd;

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	private AdminBiz adminBiz;

	public void setAdminBiz(AdminBiz adminBiz) {
		this.adminBiz = adminBiz;
	}

	Map<String, Object> session;
	Map<String, Object> request;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	public void validateLogin() {
		if (!"".equals(loginName) && (loginName == null)) {
			this.addFieldError("loginName", "用户名不能为空");
		}
		if (!"".equals(loginPwd) && (loginPwd == null)) {
			this.addFieldError("loginPwd", "密码不能为空");
		}
	}

	public String login() {
		Admin admin = new Admin();
		admin.setLoginName(loginName);
		admin.setLoginPwd(loginPwd);
		List list = adminBiz.search(admin);
		if (list.size() > 0) {
			session.put("admin", list.get(0));
			return SUCCESS;
		} else {
			this.addFieldError("login", "用户名或密码错误,请重新登录");
			return INPUT;
		}
	}

	private DogBiz dogBiz;

	public void setDogBiz(DogBiz dogBiz) {
		this.dogBiz = dogBiz;
	}

	private UserBiz userBiz;

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	private Pager pager;

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public String toShowDogs() {
		int curPage = 1;
		if (pager != null) {
			curPage = pager.getCurPage();
		}
		System.out.println(curPage);
		List dogList = null;
		dogList = dogBiz.getAllDog(curPage);
		pager = dogBiz.getPagerOfAllDog();
		pager.setCurPage(curPage);
		request.put("dogList", dogList);
		return "toshowdogs";
	}

	public String toModifyDog() {
		dogs = dogBiz.getDogs(dogs.getDid());
		return "tomodifydog";
	}

	public String doModifyDog() {
		dogBiz.modify(dogs);
		return "domodifydog";
	}

	public String dogDetail() {
		dogs = dogBiz.getDogs(dogs.getDid());
		return "dogdetail";
	}

	public String toShowUsers() {
		int curPage = 1;
		if (pager != null) {
			curPage = pager.getCurPage();
		}
		List userList = null;
		userList = userBiz.getAllUsers();
		pager = userBiz.getPagerOfUsers();
		pager.setCurPage(curPage);
		request.put("userList", userList);
		return "toshowusers";
	}

	private Users users;

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String deleteUser() {
		users = userBiz.getUsers(users.getUid());
		userBiz.deleteUser(users);
		return "deleteuser";
	}

	public String toModifyUser() {
		users = userBiz.getUsers(users.getUid());
		return "tomodifyuser";
	}

	private AdoptBiz adoptBiz;

	public void setAdoptBiz(AdoptBiz adoptBiz) {
		this.adoptBiz = adoptBiz;
	}

	public String doModifyUser() {
		userBiz.modify(users);
		return "modify";
	}

	public String toShowAdopt() {
		int curPage = 1;
		if (pager != null) {
			curPage = pager.getCurPage();
		}
		List adoptList = null;
		adoptList = adoptBiz.getAllAdopt();
		pager = adoptBiz.getPagerOfAllAdopt();
		pager.setCurPage(curPage);
		request.put("adoptList", adoptList);
		return "toshowadopt";
	}

	public String logout() {
		session.remove("admin");
		return "logout";
	}
}
