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
			<TD background=../images/title_bg1.jpg>&nbsp;��ǰλ��:</TD>
		</TR>
		<TR>
			<TD bgColor=#b1ceef height=1></TD>
		</TR>

	</TABLE>
	<table cellpadding="5" cellspacing="1" style="font-size: 15px;"
		border="1" align=center>
		<tr >
			<td ></td>
			<td>������</td>
			<td>������</td>
			<td>����</td>
			<td>����ʱ��</td>
			<td>״̬</td>
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
					<A href='toShowDogs?pager.curPage=1'>��ҳ</A>&nbsp;&nbsp;
			<A href='toShowDogs?pager.curPage=${pager.curPage-1 }'>��һҳ</A>
				</s:if> <s:if test="pager.curPage < pager.pageCount">
					<A href="toShowDogs?pager.curPage=${pager.curPage+1}">��һҳ</A>&nbsp;&nbsp;
			<A href='toShowDogs?pager.curPage=${pager.pageCount }'>βҳ</A>
				</s:if>
				&nbsp;&nbsp;|��${pager.rowCount}��¼����${pager.curPage}/${pager.pageCount}ҳ&nbsp;&nbsp;
			</td>
		</tr>
</BODY>
</HTML>