<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="../css/admin.css" type="text/css" rel="stylesheet">
<script language="javascript">
		function deleteSure(){
			var r = confirm("ȷ��ɾ��?");
			if (r==true)
  			{
  				return true;
  			}
			else
 			{
  				return false;
 			}
		}
	</script>
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
			<td>����</td>
			<td>�˻�</td>
			<td>����</td>
			<td>����</td>
			<td>�绰</td>
			<td>��ͥסַ</td>
			<td colspan="2">����Ա����</td>
		</tr>
		<s:iterator id="userItem" value="#request.userList" status="st">
			<tr>
				<td>${ userItem.uid}</td>
				<td>${ userItem.trueName}</span></td>
				<td>${ userItem.loginName}</td>
				<td>${ userItem.loginPwd}</td>
				<td>${ userItem.email}</td>
				<td>${ userItem.phone}</td>
				<td>${ userItem.address}</td>
				<td><a href="toModifyUser?users.uid=${userItem.uid}" style="color: red;font-size:15px"><u>�޸�</u></a></td>
				<td><a href="deleteUser?users.uid=${ userItem.uid}" style="color: red;font-size:15px" onclick="return deleteSure()"><u>ɾ��</u></a></td>
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