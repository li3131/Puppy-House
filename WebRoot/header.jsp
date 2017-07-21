<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
</HEAD>
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
<BODY>
	<TABLE cellSpacing=0 cellPadding=0 width="100%"
		background="images/menuBackground.jpg" border=0>
		<TR height=40>
			<TD width=260><span style="color:red;font-size:20px">个人主页</span></TD>
			<TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px"
				align=middle>当前用户： <s:property
					value="#session.user.trueName" /> &nbsp;&nbsp;
			</TD>
			<TD align=right width=268>
			</TD>
		</TR>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TR bgColor=#1c5db6 height=4>
			<TD></TD>
		</TR>
	</TABLE>
</BODY>
</HTML>