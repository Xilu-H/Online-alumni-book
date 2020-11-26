<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<title>安徽工业大学电子同学录 - 首页</title>
	<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
	
	<style type="text/css">
			*{max-width:100%;}
           .style12 {color: #FF6633;font-size: 14px;}
		    td {FONT-SIZE:9pt; LINE-HEIGHT:150%; COLOR: #353535} 
		    body {background-image: url(<%=path %>/img/background.gif);FONT-SIZE:9pt;LINE-HEIGHT:150%;margin: 0px;} 
			a:link {color: #333333; text-decoration: none}
			a:visited {color: #333333; text-decoration: none}
			a:active {color: #333333; text-decoration: none}
			a:hover {color: #ff0000; text-decoration: underline}
			A:unknown LINK {TEXT-DECORATION: none}
			.list_link {FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #8d1c1c; TEXT-DECORATION: none}
			.wenbenkuang {BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; COLOR: #333333; BORDER-BOTTOM: #999999 1px solid; FONT-FAMILY: "宋体"}
			.go-wenbenkuang {BORDER-RIGHT: #666666 1px solid; PADDING-RIGHT: 1px; BORDER-TOP: #ffffff 1px solid; PADDING-LEFT: 1px; FONT-SIZE: 9pt; PADDING-BOTTOM: 1px; BORDER-LEFT: #ffffff 1px solid; CURSOR: hand; COLOR: #333333; PADDING-TOP: 1px; BORDER-BOTTOM: #666666 1px solid; FONT-FAMILY: "宋体"; HEIGHT: 19px; BACKGROUND-COLOR: #eeeeee}
			.table-zuoyou {BORDER-RIGHT: #A9A9A9 1px solid; BORDER-LEFT: #A9A9A9 1px solid}
			.table-shangxia {BORDER-TOP: #A9A9A9 1px solid; BORDER-BOTTOM: #A9A9A9 1px solid}
			.table-sxzy {BORDER-TOP: #A9A9A9 1px solid; BORDER-BOTTOM: #A9A9A9 1px solid;#A9A9A9 1px solid; BORDER-LEFT: #A9A9A9 1px solid;BORDER-RIGHT: #A9A9A9 1px solid}
			.table-you {BORDER-RIGHT: #A9A9A9 1px solid}
			.table-zuo {BORDER-LEFT: #A9A9A9 1px solid}
			.table-shang {BORDER-TOP: #A9A9A9 1px solid}
			.table-xia {BORDER-BOTTOM: #A9A9A9 1px solid}
			.table-xu {BORDER-BOTTOM: #A9A9A9 1px dotted}
			.matrix {FONT-SIZE: 12px}
			.matrix A {COLOR: #93393a}
			.matrix_sub {BORDER-RIGHT: #c9c9c9 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: 0px; PADDING-LEFT: 4px; BACKGROUND-IMAGE: url(<%=path %>/img/botton2.gif); PADDING-BOTTOM: 4px; BORDER-LEFT: #c9c9c9 1px solid; COLOR: #000000; PADDING-TOP: 1px; BORDER-BOTTOM: #c9c9c9 1px solid; BACKGROUND-COLOR: #f7f7f7}
			.matrix_header {BORDER-RIGHT: #c9c9c9 1px solid; BORDER-TOP: #c9c9c9 1px solid; PADDING-LEFT: 5px; BACKGROUND-IMAGE: url(<%=path %>/img/botton2.gif); PADDING-BOTTOM: 6px; BORDER-LEFT: #c9c9c9 1px solid; COLOR: #00469e; PADDING-TOP: 6px; BORDER-BOTTOM: #838383 1px solid; BACKGROUND-COLOR: #ffffff}
			.matrix_info {BORDER-RIGHT: #c9c9c9 1px solid; PADDING-RIGHT: 4px; PADDING-LEFT: 4px; PADDING-BOTTOM: 4px; BORDER-LEFT: #c9c9c9 1px solid; PADDING-TOP: 4px; BORDER-BOTTOM: #eae9e9 1px solid; BACKGROUND-COLOR: #f7f7f7}
			.matrix_info_header {BORDER-RIGHT: #c9c9c9 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: #c9c9c9 1px solid; PADDING-LEFT: 4px; PADDING-BOTTOM: 4px; BORDER-LEFT: #c9c9c9 1px solid; PADDING-TOP: 4px; BORDER-BOTTOM: #eae9e9 1px solid; BACKGROUND-COLOR: #ebeaea}
			.matrix_content {COLOR: #353535; BACKGROUND-COLOR: #ffffff}
			.matrix_left {BORDER-LEFT: #c9c9c9 1px solid}
			.error {BORDER-RIGHT: #ff0000 2px solid; BORDER-TOP: #ff0000 2px solid; BORDER-LEFT: #ff0000 2px solid; WIDTH: 95%; BORDER-BOTTOM: #ff0000 2px solid; BACKGROUND-COLOR: #ffdede}
			.error TD {FONT-SIZE: 12px; COLOR: #ff0000}
			.error .title {BACKGROUND-COLOR: #ff9393}
			.error .title TD {FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #ffffff}
			.select {BORDER-TOP: #c4c4c4 1px solid; BORDER-LEFT: #c4c4c4 1px solid}
			.tableBorder {WIDTH: 98%;BACKGROUND-COLOR: #ffffff;border: 1px solid #0066FF;}
			.edfour {BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; BACKGROUND-COLOR: #ffffff}
			.color {FONT-SIZE: 12px; COLOR: #d7fd62; TEXT-DECORATION: none}
			.line {FONT-SIZE: 12px; LINE-HEIGHT: 25px; TEXT-DECORATION: none}
			.unnamed1 {FONT-SIZE: 12px; COLOR: #000000; TEXT-DECORATION: none}
			.unnamed2 {FONT-SIZE: 12px; LINE-HEIGHT: 25px; TEXT-DECORATION: none}
			.da {font-size: 14px;color: #FFFFFF;letter-spacing: 1px;}
			.index-summary{
				font-size: 15px;
			    line-height: 30px;
			    color: #000;
			    padding: 10px;
			    min-height: 200px;
			    background-size: cover;
			    background-repeat: no-repeat;
			    border-radius: 3px;
			    background: #eee;
			    display: inline-block;
			    vertical-align: top;
			    margin: 5px 0;
			    box-sizing: border-box;    
			}
			.index-summary .title{
				display: block;
			    width: 100%;
			    font-weight: bold;
			    color: #f50;
			    border-left: 4px solid #f50;
			    padding-left: 10px;
			    height: 20px;
			    vertical-align: middle;
			    line-height: 20px;
			    margin-bottom: 10px;
			}
			.index-summary .desc{
			}
			.index-summary > img{
			max-width:100%;
			}
			.index-summary:nth-child(1){    
			width: 100%;
    		padding: 0;
    		}
			.top-box{    height: 200px;overflow: hidden;}
			.top-box .left-box{
				width:40%;
			}
			.top-box .right-box{
			width:59%;
			}
			.top-box .left-box,
			.top-box .right-box{
				    display: inline-block;
    			vertical-align: top;
			}
			.user-info{
				margin: 5px 0;
				margin: 5px 0;
    			border-bottom: 1px #d2d2d2 dotted;
			}
			.user-info.link{
				text-align:center;	
				border:none;
			}
			.user-info.link > a{
				color: #fff;
			    background: #f50;
			    padding: 5px;
			    border-radius: 3px;
			    font-size: 12px;
			    text-decoration: none;
			}
      </style>
      
      <script type="text/javascript">
            
      </script>
  </head>
  
  <BODY leftMargin=0 topMargin=0 bgColor=#ffffff>
        <jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
  
		<TABLE border=0 cellSpacing=0 cellPadding=0 width=772 bgColor=#ffffff align=center>
		  <TR>
		    <TD class=b vAlign=top width=772 align=left>
		      <!--<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 align=center bgcolor="#CCCCCC" style="margin-top: 2px;">
		        <TR>
		          <TD height="25">
		               &nbsp;&nbsp;&nbsp;导航菜单
                  </TD>
		        </TR>
		      </TABLE>-->
		      <TABLE border=0 cellSpacing=0 cellPadding=2 width=100% align=left height=133>
		        <TR>
		          <TD height=500 vAlign=top align=left style="padding-top: 10px;padding-left: 10px;padding-right: 10px;">
			          <div class="top-box">
			            	<div class="left-box">
			            	 <c:choose>
						         <c:when test="${sessionScope.userType==1}">	 	
						         
								<p class="user-info">学号：	${sessionScope.user.xuehao }</p>
								<p class="user-info">姓名：	${sessionScope.user.xingming }</p>
								<p class="user-info">性别：	${sessionScope.user.xingbie }</p>
								<p class="user-info">账号：	${sessionScope.user.loginname }</p>
								<p class="user-info">年龄：	${sessionScope.user.nianling }</p>
								<p class="user-info">居住地址：	${sessionScope.user.xiandizhi }</p>
								<p class="user-info">工作单位：	${sessionScope.user.xiandanwei }</p>
								<p class="user-info">联系电话：	${sessionScope.user.xiandianhua }</p>
								<p class="user-info link"><a href="/qiantai/userinfo/userinfo.jsp">修改资料</a></p>
								
						         </c:when>
						         <c:otherwise>
						         	<img src="/img/index-bg.jpg">
						         </c:otherwise>
					         </c:choose>
							</div>
			          		<div class="right-box">
			          		 <img src="/img/index-left-banner.jpg">	          			
			          		</div>			   
			          </div>
			         <div class="index-summary">
			         <div class="title">院系介绍</div>
			         <div class="desc">
			         </div>
			         </div>
			          <div class="index-summary">
			          <div class="title">项目介绍</div>
			          <div class="desc">
			          </div></div>
			          <div class="index-summary" style="width:44%;">
			          <div class="desc">
			          曾经那些被尘封的往事和人，以及美好的心愿被锁在一本华丽的同学录里。清晰的笔迹，详细的联系方法，发自心脏的祝福挚语，丝毫不因时间的抚摸而退色，只是，这些同学们早已各奔东西，不再见面。也许，在人的生命里离别是注定的诺言，无法改变的伤痛。
			          </div></div>
			          <div class="index-summary" style="width:55%;">
			          <div class="desc">
			          通过网站方便大家联系，联络过去的感情，全面展示我班的风采，加深同学们之间的感情，更好的为大家服务。 同学的感情是真挚的，随着我们走向社会的时间越长，这种感觉越明显。本同学录就是为同学之间进行交流和联系提供的一个平台。通过提供完善的同学录服务和规范同学录的管理，可以达到增进同学之间的感情，方便同学联系的目的。
			          </div></div>
		          </TD>
		        </TR>
		      </TABLE>
		   </TD>
		  </TR>
		</TABLE>


		<TABLE border=0 cellSpacing=0 cellPadding=0 width=772 bgColor=#a9a9a9 align=center>
		  <TR><TD rowSpan=5 width=1></TD></TR>
		</TABLE>
    
    
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
  </BODY>
</html>
