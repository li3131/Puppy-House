<%
	if (session.getAttribute("user") == null) {
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Puppy House</title>
<link rel="shortcut icon" href="images/icon.ico"/>
<link href="/PuppyHouse/css/userDetail.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<!-- begin #container -->
	<div id="container">
		<!-- begin #header -->
		<div id="header">
            <div id="title">
			    <h1>puppy house</h1>
            </div> 
			<div id="headerPic">
				<div >
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<!-- 
<html>
<head>
<title>PuppyHouse</title>
<link rel="shortcut icon" href="images/icon.ico"/>
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
</head>
<body>
	
</body>
<FRAMESET border=0 frameSpacing=0 rows="60, *" frameBorder=0>
	<FRAME name=header src="/PuppyHouse/header.jsp" frameBorder=0 noResize
		scrolling=no>
	<FRAMESET cols="170, *">
		<FRAME name=menu src="/PuppyHouse/left.jsp" frameBorder=0 noResize>
		<FRAME name=main src="/PuppyHouse/main.jsp" frameBorder=0 noResize
			scrolling=yes>
	</FRAMESET>
</FRAMESET>

<noframes>
</noframes>
</html>
 -->