<%@page contentType="text/html;charset=gb2312"
	import="java.sql.*,java.util.*"%>
<html>
<head>
<title>����ҳ��</title>
<LINK href="../css/admin.css" type="text/css" rel="stylesheet">
</head>
<BODY>
	<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170
		background=../images/menu_bg.jpg border=0>
		<TR>
			<TD vAlign=top align=middle>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../images/menu_bt.jpg><A
							class=menuParent onclick=expand(1) href="javascript:void(0);">�����˵�</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child0 cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../images/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="toShowDogs"
							target=main>�鿴������Ϣ</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../images/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="toShowUsers"
							target=main>�鿴�û���Ϣ</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../images/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="toShowAdopt"
							target=main>�鿴������Ϣ</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../images/menu_icon.gif" width=9></TD>
						<TD><A href="logout" target="_top">�˳���̨</A></TD>
					</TR>
				</TABLE>
			</TD>
			<TD width=1 bgColor=#d1e6f7></TD>
		</TR>
	</TABLE>