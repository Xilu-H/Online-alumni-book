<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
    String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	
	<style type="text/css">
    </style>
      
      <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
     
      <script type="text/javascript">
            function liuyanDel(liuyanId)
	        {
	              
		               if(confirm('您确定删除吗？'))
		               {
		                   var url="<%=path %>/liuyanDel.action?liuyanId="+liuyanId;
		                   window.location.href=url;
		               }
	        }
	        
      </script>
  </head>
  
  <BODY leftMargin=0 topMargin=0 bgColor=#ffffff>
		      <TABLE border=0 cellSpacing=0 cellPadding=2 width=100% align=left height=133>
		        <TR>
		          <TD height=500 vAlign=top align=left style="padding-top: 20px;padding-left: 20px;padding-right: 20px;">
			           <TABLE cellSpacing=1 cellPadding=4 width="80%" border=0>
							<c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
							<TR>
								<TD>
									<TABLE class=tpt width="100%" border=0>
											<TR bgColor=#cccccc>
												<TD align=middle width="10%">
													<STRONG>发布人：</STRONG>
												</TD>
												<TD width="60%">
													<FONT color=#000000>&nbsp;${liuyan.liuyanUser }</FONT>
												</TD>
												<TD align=middle width="10%">
													<STRONG>发布时间：</STRONG>
												</TD>
												<TD width="18%">
													<FONT color=#000000>&nbsp;${liuyan.liuyanDate }</FONT>
													&nbsp;&nbsp;&nbsp;&nbsp;
													<a href="#" style="color: red" onclick="liuyanDel(${liuyan.liuyanId})">删除</a>
												</TD>
											</TR>
											<TR>
												<TD align=middle width="10%">
													<STRONG>信息内容：</STRONG>
												</TD>
												<TD width="60%">
													<FONT color=#000000>&nbsp;${liuyan.liuyanContent }</FONT>
												</TD>
											</TR>
									</TABLE>
								</TD>
							</TR>
							</c:forEach>
					   </TABLE>
		          </TD>
		        </TR>
		      </TABLE>
  </BODY>
</html>
