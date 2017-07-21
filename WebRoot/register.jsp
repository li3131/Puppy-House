<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户注册</title>
<link rel="shortcut icon" href="images/icon.ico" />
<link href="/PuppyHouse/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />

<script type="text/javascript" src="js/jquery-1.10.0.js"></script>
<script language="javascript">
		function check(){
			var loginName = $('#session_email_or_mobile_number');
			var loginPwd = $('#session_password');
			var trueName = $('#session_alis');
			if($.trim(trueName.val())==""){
				alert("真实姓名不能为空！请重新填入！");
				trueName.focus();
				return false;
			}else if($.trim(loginName.val())== ""){
				alert("用户名不能为空！请重新填入！");
				loginName.focus();	
				return false;
			}else if($.trim(loginPwd.val())== ""){
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
		});
	</script>
<body>
	<span class="title_icon">PuppyHouse</span>
	<form accept-charset="utf-8" action="register" method="post"
		class="regist_form" onsubmit="return check()">
		<h4 class="title">
			<div class="normal-title">
				<a class="" href="login.jsp">登录</a> <b>·</b> <a id="js-sign-up-btn"
					class="active" href="register.jsp">注册</a>
			</div>
		</h4>
		<figure>
		<div class="input-prepend restyle js-normal ">
			<i class="iconfont ic-user"></i> <img src="images/user17.png" /> <input
				placeholder="真实姓名" type="text" name="user.trueName"
				id="session_alis" />
		</div>
		<div class="input-prepend tel">
			<i class="iconfont ic-password"></i> <img src="images/user17.png" />
			<input placeholder="用户名" type="password" name="user.loginName"
				id="session_email_or_mobile_number" />
		</div>
		<div class="input-prepend">
			<i class="iconfont ic-password"></i> <img src="images/user17.png" />
			<input placeholder="密码" type="password" name="user.loginPwd"
				id="session_password" />
		</div>
		<input type="submit" value="注册" class="regist_btn" /> <!--  <p class="sign-up-msg">点击 “注册” 即表示您同意并愿意遵守简书<br> <a target="_blank" href="http://www.jianshu.com/p/c44d171298ce">用户协议</a> 和 <a target="_blank" href="http://www.jianshu.com/p/2ov8x3">隐私政策</a> 。</p>
	    	--> </figure>
	</form>
</body>
</html>
