<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Puppy House</title>
<link rel="shortcut icon" href="images/icon.ico"/>
<link href="/PuppyHouse/css/adopt.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.0.js" ></script>
<script type="text/javascript" src="js/adopt.js" ></script>
</head>

<body>
	<!-- begin #container -->
	<div id="container">
		<!-- begin #header -->
		<div id="header">
			<div id="title">
				<h1>puppy house</h1>
				<div class="loginform">
					<s:if test="#session.user==null">
						<span class="s1"><a href="login.jsp">用户登录
								${session.user} </a><span>
					</s:if>
					<s:if test="#session.user!=null">
						<span class="s2">欢迎你，<a href="userDetail.jsp"
							target="_blank">${sessionScope.user.trueName }</a>&nbsp;&nbsp;|&nbsp;&nbsp;
							<a href="user_Logout">注销</a></span>
					</s:if>
				</div>
			</div>
			<div id="navcontainer">
				<ul id="navlist">
					<li><a href="index.jsp">主页</a></li>
					<li id="active"><a href="javascript:0" id="current">宠物领养</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">宠物护理知识</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">领养须知</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">宠物论坛</a></li>
				</ul>
			</div>
			<div id="mainContent">
				<input type="text" id="search_input" class="search_input ui-autocomplete-input" tabindex="1" maxlength="64" autocomplete="off" value="" placeholder="搜索品种、昵称或地点" style="color: rgb(153, 153, 153);">
				<input type="submit" id="search_button" class="search_button" value="搜索" data-lg-tj-id="4V00" data-lg-tj-no="idnull" data-lg-tj-cid="idnull">
			</div>
		</div>
		<!-- end #header -->
		<!-- begin #sidebar1 -->
		<div id="sidebar1">
			<table  style="font-size: 12px;">
				<s:iterator id="dogItem" value="#request.dogList" status="st">
					<s:if test="#st.getIndex()%2==0">
						<tr>
					</s:if>
					<td class="itd1"><a href="/PuppyHouse/toShowDetails?dog.did=${dogItem.did}"><img
							src="<%=request.getContextPath() %>/dogimages/${dogItem.image }"
							width="148" height="126" border="0" /> </a><p>${ dogItem.name}</p></td>
					<td class="itd2">
						<div>
								<span>品种：${dogItem.types.tname}</span>
							<br /> <span>所在地：${dogItem.address}</span>
							<br /> <span>年龄：${dogItem.age}</span>
							<br /> <span>公母：${dogItem.gender}</span>
							<br />
						</div> 
						<!--<div class="opt">
							<a href="toShowDetails?dog.did=${dogItem.did}"><img
								src="images/detail_cn.gif" border="0" width="60" height="20" /></a>
							<a href="toAdopt?did=${dogItem.did }"><img
								src="images/buy_cn.gif" border="0" width="60" height="20" /></a>
						</div>-->
					</td>
					<s:if test="#st.getIndex()%2==1">
						</tr>
					</s:if>
				</s:iterator>
				<table id="t2">
					<tr>
						<td width="80"></td>
						<td width="80"><s:if test="pager.curPage>1">
								<A href='/PuppyHouse/toShowAdopt?pager.curPage=1'>首页</A>&nbsp;&nbsp;
									<A
									href='/PuppyHouse/toShowAdopt?pager.curPage=${pager.curPage-1 }'>上一页</A>
							</s:if></td>
						<td width="80"><s:if test="pager.curPage < pager.pageCount">
								<A
									href="/PuppyHouse/toShowAdopt?pager.curPage=${pager.curPage+1}">下一页</A>&nbsp;&nbsp;
									<A
									href='/PuppyHouse/toShowAdopt?pager.curPage=${pager.pageCount }'>尾页</A>
							</s:if></td>
						<td>共${pager.rowCount}记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;

						</td>
					</tr>
				</table>
			</table>

		</div>
		<br class="clearfloat" />
		
		<!-- begin #footer -->
		<div id="footer">
			<div class="ftt">
				<a href="#"><img src="/PuppyHouse/images/ftt.jpg"
					alt="Free Flash Templates" /></a>
			</div>
			<div class="rss">
				<a href="#"><img src="/PuppyHouse/images/rss.jpg"
					alt="Blog about free flash templates" /></a>
			</div>
			<div class="copyright">puppy house Copyright © 30 September
				2009</div>
		</div>
		<!-- end #footer -->
	</div>
	<!-- end #container -->
</body>
</html>
