<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
		<TR height=28>
			<TD background=images/title_bg1.jpg>&nbsp;当前位置:</TD>
		</TR>
		<TR>
			<TD bgColor=#b1ceef height=1></TD>
		</TR>
		
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
		<TR height=100>
			<TD align=middle width=100></TD>
			<TD width=60>&nbsp;</TD>
			<TD>
				<TABLE height=60 cellSpacing=0 cellPadding=0 width="50%" border=1>

					<TR>
						<TD>当前时间： <%
							Date d = new Date();
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
							out.println(sdf.format(d));
						%>
						</TD>
					</TR>
					<TR>
						<TD style="FONT-WEIGHT: bold; FONT-SIZE: 16px"></TD>
					</TR>
					<tr>
						<td>姓名：</td>
						<td>&nbsp;${user.trueName} </td>
					</tr>
					<tr>
						<td>家庭地址：</td>
						<td>&nbsp;${user.address}</td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td>&nbsp;${user.phone}</td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td>&nbsp;${user.email}</td>
					</tr>
					<tr>
						<td>用户名：</td>
						<td>&nbsp;${user.loginName}</td>
					</tr>
					<tr>
						<td>密码：</td>
						<td>&nbsp;${user.loginPwd}</td>
					</tr>
				</TABLE>
			</TD>
		</TR>
		<TR>
			<TD colSpan=3 height=10></TD>
		</TR>
	</TABLE>

</BODY>
</HTML>