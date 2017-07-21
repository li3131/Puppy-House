<%@ page language="java" import="java.util.*" 
	contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
	if (session.getAttribute("user") == null) {

%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Free Css Template 058</title>
<link href="/PuppyHouse/css/style.css" rel="stylesheet" type="text/css" />
<!--[if IE 5]>
<style type="text/css"> 
/* place css box model fixes for IE 5* in this conditional comment */
#sidebar1 { width: 230px; }
</style>
<![endif]--><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
#mainContent { zoom: 1; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]-->
<script language="javascript">
		function check(){
			var loginName = document.getElementById("user.loginName");
			var loginPwd = document.getElementById("user.loginPwd");
			var repassword = document.getElementById("repassword");
			var trueName = document.getElementById("user.trueName");
			var email = document.getElementById("user.email");
			var phone = document.getElementById("user.phone");
			var address = document.getElementById("user.address");
			if(loginName.value == ""){
				alert("用户名不能为空！请重新填入！");
				loginName.focus();	
				return false;
			}else if(loginPwd.value == ""){
				alert("密码不能为空！请重新填入！");
				loginPwd.focus();
				return false;
			}else if(repassword.value == ""){
				alert("确认密码不能为空！请重新填入！");
				repassword.focus();
				return false;
			}else if(trueName.value == ""){
				alert("真实姓名不能为空！请重新填入！");
				trueName.focus();
				return false;
			}else if(email.value == ""){
				alert("邮箱不能为空！请重新填入！");
				email.focus();
				return false;
			}else if(phone.value == ""){
				alert("电话不能为空！请重新填入！");
				phone.focus();
				return false;
			}else if(address.value == ""){
				alert("邮箱不能为空！请重新填入！");
				address.focus();
				return false;
			}
			return true;
		}
		
		function focusOnLogin(){
			var loginPwd = document.getElementById("LoginPwd");
			if( loginPwd != null )
				loginPwd.focus();	
		}
	</script>
</head>

<body onload="focusOnLogin()">

    	<h1 align="center">寄养登记</h1>
    	<center>
    	<span><s:fielderror/></span>
    	<s:form action="addAdopt" name="regForm" method="post" enctype="multipart/form-data">
    		<s:textfield name="dog.name" label="名字"/>
    		<s:textfield name="dog.age" label="大小"/>
    		<s:select list="{'male','female'}" name="dog.gender" label="sex"/>
    		<s:textfield name="dog.address" label="地址" value="%{#session.user.address}"/>
    		<s:textarea name="dog.content" label="简介"/>
    		<s:file name="image" label="上传照片"/>
    		<s:textfield name="types" label="品种"/>
    		<s:hidden name="dog.owner" value="%{#session.user.loginName}" />
    		<s:hidden name="dog.state" value="未领养"/>
    		<s:submit name="submit" value="确认提交" align="center"></s:submit>
    	</s:form>
   		</center>
</body>
</html>
