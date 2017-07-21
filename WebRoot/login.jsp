<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<link rel="shortcut icon" href="images/icon.ico"/>
<link href="/PuppyHouse/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/public.css"/>
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<script type="text/javascript" src="js/jquery-1.10.0.js" ></script>
	<script>
		$(document).ready(function(){
			$('.login_form .title .normal-title a').hover(function(){
				if($(this).hasClass('active')){
					return false;
				}else{
					$(this).css("border-bottom","3px solid #EA6F5A");
				}
			},function(){
				if($(this).hasClass('active')){
					return false;
				}else{
					$(this).css("border-bottom","none");
				}
			}).click(function(){
				if($(this).hasClass('active')){
					return false;
				}else{
					$(this).siblings('a').removeClass('active').css("border-bottom","none");
					$(this).addClass('active');
				}
			});
			
			/*$('.login_btn').click(function(){//这里可以再扩充一下，对表单进行进一步的验证
				var loginName = document.getElementById("session_email_or_mobile_number");
				var loginPwd = document.getElementById("session_password");
				if(loginName.value == ""){
					alert("用户名不能为空！请重新填入！");
					loginName.focus();	
					return false;
				}else if(loginPwd.value == ""){
					alert("密码不能为空！请重新填入！");
					loginPwd.focus();
					return false;
				}	
				return true;
			})*/
		});
	</script>	
<script language="javascript">
		function check(){
			var loginName = document.getElementById("session_email_or_mobile_number");
			var loginPwd = document.getElementById("session_password");
			if(loginName.value == ""){
				alert("用户名不能为空！请重新填入！");
				loginName.focus();	
				return false;
			}else if(loginPwd.value == ""){
				alert("密码不能为空！请重新填入！");
				loginPwd.focus();
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

<body>
		<span class="title_icon">PuppyHouse</span>
		<form accept-charset="utf-8" action="user_Login" method="post" class="login_form" onsubmit="return check()">
			<h4 class="title">
  				<div class="normal-title">
	   				<a class="active" href="login.jsp">登录</a>
	    			<b>·</b>
	    			<a id="js-sign-up-btn" class="" href="register.jsp">注册</a>
  				</div>
			</h4>
			<figure>
				<div class="input-prepend restyle js-normal ">
					<i class="iconfont ic-user"></i>
					<img src="images/user17.png" />
	      			<input placeholder="用户名" type="text" name="loginName" id="session_email_or_mobile_number" />
	    		</div>
				<div class="input-prepend">
					<i class="iconfont ic-password"></i>
					<img src="images/user17.png" />
	      			<input placeholder="密码" type="password" name="loginPwd" id="session_password" />
	    		</div>
	    		<span class="errorMsg"><s:fielderror/></span>
	    		<div class="remenber_forget">
	    			<input type="checkbox" value="true" checked="checked" name="session[remember_me]" id="session_remember_me" /><span>记住我</span>
	    			<a class="" data-toggle="dropdown" href="">忘记密码?</a>
	    		</div>
	    		<input type="submit" value="登录" class="login_btn"/>
	    	</figure>
		</form>
	</body>
</html>