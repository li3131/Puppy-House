package com.igo.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.igo.dao.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CheckLoginNameAction extends ActionSupport implements
		ServletRequestAware {
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;
	// private String result;
	private JSONObject result;

	public JSONObject getResult() {
		return result;
	}

	public void setResult(JSONObject result) {
		this.result = result;
	}

	UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}

	/**
	 * 处理ajax请求
	 * 
	 * @return SUCCESS
	 */
	public String excute() {
		try {
			// 获取数据
			String loginName = request.getParameter("loginName");

			// 将数据存储在map里，再转换成json类型数据，也可以自己手动构造json类型数据
			Map<String, Object> ret = new HashMap<String, Object>();
			if (userDAO.checkLoginNameExsit(loginName)) {
				ret.put("retCode", "1");
				ret.put("retMsg", "");
			} else {
				ret.put("retCode", "0");
				ret.put("retMsg", "用户名已经存在");
			}
			result = JSONObject.fromObject(ret);// 将map对象转换成json类型数据
			// 不需要再result.toString();这样返回的是json字符串，但是前端需要的josn对象，如果返回字符串的话，js中还需要进行解析
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
