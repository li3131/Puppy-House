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
	<table cellpadding="5" cellspacing="1" style="font-size: 12px;">
			<td><img src="<%=request.getContextPath() %>/dogimages/${dogs.image}" width="148" height="126"
					border="0" /> </a>
			</td>
			<td>
				<div>
					<br /> <span style="color:gray;font-size:15px;">name:${ dogs.name}</span>
					<br /> <span style="color:gray;font-size:15px;">type:${dogs.types.tname}</span>
					<br /> <span style="color:gray;font-size:15px;">address:${dogs.address}</span>
					<br /> <span style="color:gray;font-size:15px;">age:${dogs.age}</span>
					<br /> <span style="color:gray;font-size:15px;">gender:${dogs.gender}</span>
					<br /> <span style="color:gray;font-size:15px;">state:${dogs.state}</span>
					<br /> <span style="color:gray;font-size:15px;">content:${dogs.content}</span>
					<br />
				</div> 
			</td>
</BODY>
</HTML>