<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
  body{
  min-width:800px;
  }
  .nav{
      padding: 10px 0;
    text-align: center;
    background: #FF3B6F;
        user-select: none;
  }
  .nav a{
    color: #ffffff;
    text-decoration: none;
    padding: 5px;
    box-sizing: border-box;
    background: transparent;
    font-size: 15px !important;
    font-weight: normal !important;
    font-family: serif !important;
  transition: all ease-in-out .3s;
  }
  .nav a:before{
      content: '';
    border: 1px solid;
    margin-right: 10px;
  }
  .nav a:hover{
 	    color: #ffff00;
   
  }
  .nav a:first-child:before,
  .nav .user-name:before{
  display:none;
  }
  .nav .user-name:hover{
  color:#000;
  }
  .nav .user-name{
  border: none;
    color: #333;
    cursor: text;
  }
 
  </style>
      <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
      <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
      <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
      <script type="text/javascript">
         function userLogout()
         {
              document.getElementById("indicator1").style.display="block";
              loginService.userLogout(callback1);
         }
         function callback1(data)
		 {
		      document.getElementById("indicator1").style.display="none";
		      if(data=="no")
		      {
		          alert("系统错误，请联系管理员");
		      }
		      if(data=="yes")
		      {   
		          var url="<%=path %>/login.jsp";
		          window.location.href=url;
		      }
		 }
      </script>
  </head>
  
  <body>
       <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 height="190" bgColor=#ffffff align=center style="background-image: url('<%=path %>/img/AHUT.jpg'); background-repeat : repeat-xy">
		  <TR>
		    <TD height=80 width=772 align=center>
			     &nbsp;
		    </TD>
		  </TR>
		</TABLE>
       <TABLE  border=0 cellSpacing=0 cellPadding=0 width=770 align=center bgColor=#fff style="background: #fff;padding:0;box-sizing: border-box;">
		  <TR >
		    <TD class="nav">	
		    <c:if test="${sessionScope.userType==1}">	       
		    <a class="user-name">欢迎您：${sessionScope.user.xingming }</a>  	
		    </c:if>	         
			         <a href="<%=path %>/">首页</a>
		         <c:if test="${sessionScope.userType==1}">
			         <a href="<%=path %>/qiantai/userinfo/userinfo.jsp">我的信息</a>
			         <a href="<%=path %>/qiantai/banji/banjiAdd.jsp">创建新的班级</a> 
			         <a href="<%=path %>/banjiMine.action" >我创建的班级</a> 
			         <a href="<%=path %>/jiaruMine.action">我加入的班级</a>         
			         </c:if>
			         
			     <c:choose>
		         <c:when test="${sessionScope.userType==1}">	 	
		         <a href="#" onClick="userLogout()">注销退出</a>
		         </c:when>
		         <c:otherwise>
		         <a href="<%=path %>/login.jsp">登录</a> 
		         </c:otherwise>
		         </c:choose>
			     		       
		         <img id="indicator1" src="<%=path %>/img/loading.gif" style="display:none"/>
		    </TD>
		  </TR>
	   </TABLE>
  </body>
</html>
