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
      
      <link rel="stylesheet" type="text/css" href="<%=path %>/css/list-ui7.css" media="all"/>
      
      <script type="text/javascript">
            function zhaopianDel(id)
	        {
	               if(confirm('您确定删除吗？'))
	               {
	                   var url="<%=path %>/zhaopianDel.action?id="+id;
	                   window.location.href=url;
	               }
	        }
	        
      </script>
  </head>
  
  <BODY leftMargin=0 topMargin=0 bgColor=#ffffff>
			           <table class="tbimg" cellpadding="0" cellspacing="0">
					     	  <c:forEach items="${requestScope.zhaopianList}" var="zhaopian" varStatus="sta">
					     	  <tr>
						     	  <td class="img">
						     	      <img src="${zhaopian.fujian}" style="border:1px solid #ccc; padding:3px;width: 160px;height: 120px;"/>
						     	  </td>
						     	  <td class="t" style="width: 50%">
						     		  [${zhaopian.title}]
						     		  <span class='ico ntu'></span>
						     		  <i class="clear"></i>上传者：${zhaopian.shangchuanzhe}<i class="clear"></i>
									  <span class="fl"></span>
							          <span name="zaixian_56499070"></span>
							          <span class='fl ml5 biz'></span>
						     	  </td>
						     	  <td class="tc" style="width: 50%">
						     	                     上传时间：<b class='pri'>${zhaopian.shijian}</b>
						     	      &nbsp; &nbsp; &nbsp; &nbsp;
						     	      <a href="#" onclick="zhaopianDel(${zhaopian.id})">删除</a>
						     	  </td>
					     	  </tr>
					     	  </c:forEach>   
					   </table>
  </BODY>
</html>
