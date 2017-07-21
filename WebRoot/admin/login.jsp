<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
			var loginName = document.getElementById("loginName");
			var loginPwd = document.getElementById("loginPwd");
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
			var loginPwd = document.getElementById("loginPwd");
			if( loginPwd != null )
				loginPwd.focus();	
		}
	</script>
</head>

<body onload="focusOnLogin()">
<!-- begin #container -->

    <!-- begin #header -->
   
    
    	<h1 align="center">管理员登录</h1>
    	
        <form action="login" name="adminForm" method="post" onsubmit="return check()" >
        	<table align="center" border="1">
        		<tr>
        			<td>
        				用户名:
        			</td>
        			<td>
        				<input type="text" name="loginName"/>
        				
        			</td>
        		</tr>
        		<tr>
        			<td>
        				密  &nbsp; &nbsp; 码:
        			</td>
        			<td>
        				<input type="password" name="loginPwd"/>
        				
        			<br/>
        			</td>
        			
        		</tr>
        		
        		<tr>
        			<td align="center">
        				
        			</td>
        			<td align="center">
        				<input type="submit" value="登录" />&nbsp;&nbsp;&nbsp;
        				<input type="reset" value="重置" />
        			</td>
        		</tr>
        	</table>
        </form>
   		<span><s:fielderror/></span>
    <!-- end #mainContent -->
    <!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats --><br class="clearfloat" />
</body>
</html>
