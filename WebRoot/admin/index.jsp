<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<%
	if (session.getAttribute("admin") == null) {
%>
<jsp:forward page="/admin/login.jsp"></jsp:forward>
<%
	}
%>
<html>
<head>
<title>PuppyHouse</title>
<LINK href="../css/admin.css" type="text/css" rel="stylesheet">
</head>
<FRAMESET border=0 frameSpacing=0 rows="60, *" frameBorder=0>
	<FRAME name=header src="/PuppyHouse/admin/header.jsp" frameBorder=0 noResize
		scrolling=no>
	<FRAMESET cols="170, *">
		<FRAME name=menu src="/PuppyHouse/admin/left.jsp" frameBorder=0 noResize>
		<FRAME name=main src="/PuppyHouse/admin/main.jsp" frameBorder=0 noResize
			scrolling=yes>
	</FRAMESET>
</FRAMESET>
<noframes>
</noframes>
</html>
