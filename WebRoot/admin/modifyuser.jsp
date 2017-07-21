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
	<form method="post" name="myform" action="admin/doModifyUser">
		<div align="center">
			<table width="450" class="table">
				<tbody>
					<tr>
						<td>
							<input type="hidden" name="users.uid" value="${users.uid}" />
						</td>
					</tr>
					
					<tr>
						<td>真名：</td>
						<td>&nbsp;<input type="text" name="users.trueName"
							value="${users.trueName}" /></td>
					</tr>
					<tr>
						<td>账户名：</td>
						<td>&nbsp;<input name="users.loginName" value="${users.loginName}" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td>密码：</td>
						<td>&nbsp;<input type="text" name="users.loginPwd"
							value="${users.loginPwd}" /></td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td>&nbsp;<input type="text" name="users.email"
							value="${users.email}" /></td>
					</tr>
					<tr>
						<td>电话：</td>
						<td>&nbsp;<input type="text" name="users.phone"
							value="${users.phone}" /></td>
							
					</tr>
					<tr>
						<td>家庭住址：</td>
						<td>&nbsp;<input type="text" name="users.address"
							value="${users.address}" /></td>
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
