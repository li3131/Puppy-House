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
			<td>领养人</td>
			<td>寄养人</td>
			<td>狗狗</td>
			<td>申请时间</td>
			<td>状态</td>
		</tr>
		<s:iterator id="adoptItem" value="#request.adoptList" status="st">
			<tr>
				<td>${ adoptItem.oid}</td>
				<td>${ adoptItem.users.trueName}</td>
				<td>${ adoptItem.dogs.owner}</td>
				<td>${ adoptItem.dogs.name}</td>
				<td>${ adoptItem.adoptTime}</td>
				<td>${ adoptItem.state}</td>
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