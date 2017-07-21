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
	<form method="post" name="myform" action="admin/doModifyDog">
		<div align="center">
			<table width="450" class="table">
				<tbody>
					<tr>
						<td>
							<input type="hidden" name="dogs.did" value="${dogs.did}" />
							<input type="hidden" name="dogs.image" value="${dogs.image}" />
							<input type="hidden" name="dogs.types.tid" value="${dogs.types.tid}" />
						</td>
					</tr>
					
					<tr>
						<td>name：</td>
						<td>&nbsp;<input type="text" name="dogs.name"
							value="${dogs.name}" /></td>
					</tr>
					<tr>
						<td>type：</td>
						<td>&nbsp;<input name="type" value="${dogs.types.tname}" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td>age：</td>
						<td>&nbsp;<input type="text" name="dogs.age"
							value="${dogs.age}" /></td>
					</tr>
					<tr>
						<td>gender：</td>
						<td>&nbsp;<input type="text" name="dogs.gender"
							value="${dogs.gender}" /></td>
					</tr>
					<tr>
						<td>owner：</td>
						<td>&nbsp;<input type="text" name="dogs.owner"
							value="${dogs.owner}" /></td>
							
					</tr>
					<tr>
						<td>address：</td>
						<td>&nbsp;<input type="text" name="dogs.address"
							value="${dogs.address}" /></td>
							
					</tr>
					<tr>
						<td>state：</td>
						<td>&nbsp;<input type="text" name="dogs.state"
							value="${dogs.state}" /></td>
					</tr>
					<tr>
						<td>content：</td>
						<td>&nbsp;<textarea rows="10" cols="20" name="dogs.content">${dogs.content}</textarea>
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
