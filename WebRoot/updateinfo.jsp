<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'modify.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="style/style.css">
<link rel="stylesheet" type="text/css" href="style/default.css">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form method="post" name="myform" action="modify">
		<div align="center">
			<table width="450" class="table">
				<tbody>
					<tr>
						<td>
							<input type="hidden" name="user.uid" value="${user.uid}" />
							<input type="hidden" name="user.loginName" value="${user.loginName}" />
							<input type="hidden" name="user.loginPwd" value="${user.loginPwd}" />
						</td>
					</tr>
					<tr>
						<td>姓名：</td>
						<td>&nbsp;<input type="text" name="user.trueName"
							value="${user.trueName}" /></td>
					</tr>
					<tr>
						<td>家庭地址：</td>
						<td>&nbsp;<input type="text" name="user.address"
							value="${user.address}" /></td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td>&nbsp;<input type="text" name="user.phone"
							value="${user.phone}" /></td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td>&nbsp;<input type="text" name="user.email"
							value="${user.email}" /></td>
							
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="提交" /> <br></td>
					</tr>
				</tbody>
			</table>
			<div style="color:red;">
				<s:fielderror />
			</div>
		</div>
		<br>
	</form>

</body>
</html>
