<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="../css/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
		<TR height=28>
			<TD background=../images/title_bg1.jpg>&nbsp;当前位置:</TD>
		</TR>
		<TR>
			<TD bgColor=#b1ceef height=1></TD>
		</TR>

	</TABLE>
	<table cellpadding="5" cellspacing="1" style="font-size: 15px;"
		border="1" align=center>
		<tr >
			<td ></td>
			<td>name</td>
			<td>type</td>
			<td>age</td>
			<td>gender</td>
			<td>state</td>
			<td>address</td>
			<td colspan="2">管理员操作</td>
		</tr>
		<s:iterator id="dogItem" value="#request.dogList" status="st">
			<tr>
				<td>${ dogItem.did}</td>
				<td>${ dogItem.name}</span></td>
				<td>${dogItem.types.tname}</td>
				<td>${dogItem.age}</td>
				<td>${dogItem.gender}</td>
				<td>${dogItem.address}</td>
				<td>${dogItem.state}</td>
				<td><a href="toModifyDog?dogs.did=${dogItem.did}" style="color: red;font-size:15px"><u>修改</u></a></td>
				<td><a href="dogDetail?dogs.did=${ dogItem.did}" style="color: red;font-size:15px"><u>详细</u></a></td>
			</tr>
		</s:iterator>

		<tr >
			<td colspan="9" align="right"><s:if test="pager.curPage>1">
					<A href='toShowDogs?pager.curPage=1'>首页</A>&nbsp;&nbsp;
			<A href='toShowDogs?pager.curPage=${pager.curPage-1 }'>上一页</A>
				</s:if> <s:if test="pager.curPage < pager.pageCount">
					<A href="toShowDogs?pager.curPage=${pager.curPage+1}">下一页</A>&nbsp;&nbsp;
			<A href='toShowDogs?pager.curPage=${pager.pageCount }'>尾页</A>
				</s:if>
				&nbsp;&nbsp;|共${pager.rowCount}记录，共${pager.curPage}/${pager.pageCount}页&nbsp;&nbsp;
			</td>
		</tr>
</BODY>
</HTML>