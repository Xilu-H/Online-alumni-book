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
	
	<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
	
	<style type="text/css">
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
			.liuyan-link-btn,a.liuyan-link-btn{
				color: #fff;
			    font-weight: 700;
			    font-family: 幼圆;
			    background: #f38853;
			    padding: 5px 10px;
			    transition: all .3s ease-in-out;
			    text-decoration: unset;
			}
			.liuyan-link-btn:hover,
			.liuyan-link-btn.active{
				background: #ff5400;
			}
      </style>
      
      <link rel="stylesheet" type="text/css" href="<%=path %>/css/list-ui7.css" media="all"/>
      <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
      <script type="text/javascript">
      function up()
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
          pop.setContent("contentUrl","/upload/upload.jsp");
          pop.setContent("title","文件上传");
          pop.build();
          pop.show();
	    }
	    
	    function check()
	    {
	        if(document.form1.fujian.value=="")
	        {
	            alert("请上传照片");
	            return false;
	        }
	        if(document.form1.title.value=="")
	        {
	            alert("请照片标题");
	            return false;
	        }
	        document.form1.submit();
	    }
	        
      </script>
  </head>
  
  <BODY leftMargin=0 topMargin=0 bgColor=#ffffff>
        <jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
  
		<TABLE border=0 cellSpacing=0 cellPadding=0 width=772 bgColor=#ffffff align=center>
		  <TR>
		    <TD class=b vAlign=top width=772 align=left>
		      <TABLE border=0 cellSpacing=0 cellPadding=0 width=770 align=center bgcolor="#fff" style="margin-top: 2px;">
		        <TR>
		          <TD height="25" align="center">
		               <a href="<%=path %>/liuyanAll.action?banjiId=${requestScope.banjiId }" class="liuyan-link-btn">班级论坛</a>
		               &nbsp;&nbsp;&nbsp;
		               <a href="<%=path %>/zhaopianAll.action?banjiId=${requestScope.banjiId }" class="liuyan-link-btn active">班级相册</a>
                       &nbsp;&nbsp;&nbsp;
		               <a href="<%=path %>/tongxunluAll.action?banjiId=${requestScope.banjiId }" class="liuyan-link-btn">班级通讯录</a>
                  </TD>
		        </TR>
		      </TABLE>
		      <TABLE border=0 cellSpacing=0 cellPadding=2 width=100% align=left height=133>
		        <TR>
		          <TD height=500 vAlign=top align=left style="padding-top: 20px;padding-left: 20px;padding-right: 20px;">
			           <table class="tbimg" cellpadding="0" cellspacing="0">
					     	  <c:forEach items="${requestScope.zhaopianList}" var="zhaopian" varStatus="sta">
					     	  <tr>
						     	  <td class="img">
						     	      <img src="<%=path %>${zhaopian.fujian}" style="border:1px solid #ccc; padding:3px;width: 160px;height: 120px;"/>
						     	  </td>
						     	  <td class="t" style="width: 50%">
						     		  [${zhaopian.title}]
						     		  <span class='ico ntu'></span>
						     		  <i class="clear"></i>上传者：${zhaopian.shangchuanzhe}<i class="clear"></i>
									  <span class="fl"></span>
							          <span name="zaixian_56499070"></span>
							          <span class='fl ml5 biz'></span>
						     	  </td>
						     	  <td class="tc" style="width: 50%">上传时间：<b class='pri'>${zhaopian.shijian}</b></td>
					     	  </tr>
					     	  </c:forEach>   
					   </table>
					   <form action="<%=path %>/zhaopianAdd.action" name="form1" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/img/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          照片标题：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="title" size="60"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						           上传照片：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" size="60" readonly="readonly"/>
						        <input type="button" value="选择" onclick="up()"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="hidden" name="banjiId" value="<%=request.getParameter("banjiId") %>"/>
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
		          </TD>
		        </TR>
		      </TABLE>
		   </TD>
		  </TR>
		</TABLE>    
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
  </BODY>
</html>
