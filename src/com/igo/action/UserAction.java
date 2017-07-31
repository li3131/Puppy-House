package com.igo.action;

import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import com.igo.biz.UserBiz;
import com.igo.entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private Users user;

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	private String LoginName;
	private String LoginPwd;
	private String repassword;

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getLoginName() {
		return LoginName;
	}

	public void setLoginName(String loginName) {
		LoginName = loginName;
	}

	public String getLoginPwd() {
		return LoginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		LoginPwd = loginPwd;
	}

	ActionContext ctx = ActionContext.getContext();

	Map session = ctx.getSession(); // session

	UserBiz userBiz;

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public String user_Login() {
		List list;
		Users condition = new Users();
		condition.setLoginName(LoginName);
		condition.setLoginPwd(LoginPwd);
		list = userBiz.search(condition);
		if (list != null && list.size() > 0) {
			session.put("user", list.get(0));
			return "login_success";
		} else {
			this.addFieldError("LoginError", "用户名或者密码错误，请重新登录！");
			return "login_failure";
		}
	}

	public String register() {
		userBiz.addUsers(user);
		List list = userBiz.search(user);
		if (list.size() > 0) {
			session.put("user", list.get(0));
			return "reg_success";
		} else {
			this.addFieldError("regError", "注册失败");
			return "reg_failure";
		}
	}

	public void volidateRegister() {
		Users condition = new Users();
		condition.setLoginName(user.getLoginName());
		List list = userBiz.search(condition);
		if (list.size() > 0) {
			this.addFieldError("user.loginName", "用户名已经存在，请重新输入！");
		}
		if (repassword != user.getLoginPwd()) {
			this.addFieldError("repassword", "确认密码与密码不一致！");
		}
	}

	public String user_Logout() {
		session.remove("user");
		return "logout";
	}

	public String toUpdateInfo() {
		Users user = (Users) session.get("user");
		userBiz.getUsers(user.getUid());
		return "toUpdateInfo";
	}

	public void validateModify() {
		if ("".equals(user.getTrueName().trim())) {
			this.addFieldError("user.trueName", "姓名不能为空");
		}
		if ("".equals(user.getAddress().trim())) {
			this.addFieldError("user.address", "地址不能为空");
		}
		if ("".equals(user.getEmail().trim())) {
			this.addFieldError("user.eamil", "邮箱不能为空");
		}
		if ("".equals(user.getPhone().trim())) {
			this.addFieldError("user.phone", "电话不能为空");
		}
		if (!"电话不详".equals(user.getPhone().trim())
				&& !Pattern.compile("^(?:1[358]\\d{9}|\\d{3,4}-\\d{8,9})$")
						.matcher(user.getPhone()).matches()) {
			addFieldError("personinfo.telephone", "电话格式不正确");
		}
	}

	public String modify() {
		userBiz.modify(user);
		userBiz.getUsers(user.getUid());
		session.put("user", user);
		return "modify";
	}

}
