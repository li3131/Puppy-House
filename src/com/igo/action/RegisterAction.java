package com.igo.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.igo.dao.UserDAO;
import com.igo.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport implements
		ServletRequestAware {
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;
	private JSONObject result;
	UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}

	public JSONObject getResult() {
		return result;
	}

	public void setResult(JSONObject result) {
		this.result = result;
	}

	/**
	 * 处理ajax请求
	 * 
	 * @return SUCCESS
	 */
	public String excute() {
		try {
			// 获取数据
			String trueName = request.getParameter("trueName");
			String loginName = request.getParameter("loginName");
			String loginPwd = request.getParameter("loginPwd");

			// 将数据存储在map里，再转换成json类型数据，也可以自己手动构造json类型数据
			Users condition = new Users();
			condition.setTrueName(trueName);
			condition.setLoginName(loginName);
			condition.setLoginPwd(loginPwd);
			Map<String, Object> retMap = userDAO.register(condition);
			result = JSONObject.fromObject(retMap);// 给result赋值，传递给页面
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
