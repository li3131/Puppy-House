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
		<s:iterator id="dogItem" value="#request.list" status="st">
			<s:if test="#st.getIndex()%2==0">
				<tr>
			</s:if>
			<td><img src="<%=request.getContextPath() %>/dogimages/${dogItem.image }" width="148" height="126"
					border="0" /> </a>
			</td>
			<td>
				<div>
					<br /> <span style="color:gray;font-size:15px;">name:${ dogItem.name}</span>
					<br /> <span style="color:gray;font-size:15px;">type:${dogItem.types.tname}</span>
					<br /> <span style="color:gray;font-size:15px;">address:${dogItem.address}</span>
					<br /> <span style="color:gray;font-size:15px;">age:${dogItem.age}</span>
					<br /> <span style="color:gray;font-size:15px;">gender:${dogItem.gender}</span>
					<br /> <span style="color:gray;font-size:15px;">state:${dogItem.state}</span>
					<br /> <span style="color:gray;font-size:15px;">content:${dogItem.content}</span>
					<br />
				</div> 
			</td>
			<s:if test="#st.getIndex()%2==1">
				</tr>
			</s:if>
		</s:iterator>
</BODY>
</HTML>