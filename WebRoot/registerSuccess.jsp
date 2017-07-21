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
<link rel="stylesheet" type="text/css" href="css/registerSuccess.css" />
<script type="text/javascript" src="js/jquery-1.10.0.js"></script>
<script type="text/javascript">
		var tname;
		function retime(){
			clearInterval(tname)
			var nowTime = parseInt($('#time').text());
			if(nowTime>0){
				tname = setInterval(retime,1000);
				$('#time').text(nowTime-1);
			}else{
				window.location.href='index.jsp';
			}
		}
</script>
<body  onload="retime()">
	<span class="title_icon">PuppyHouse</span>
	<div class="msg"><span>恭喜你注册成功，系统将在<span id="time" style="color:red">10</span>秒之后为你自动登录并<a href="index.jsp">跳转</a>到主页。</span></div>>
</body>
</html>
