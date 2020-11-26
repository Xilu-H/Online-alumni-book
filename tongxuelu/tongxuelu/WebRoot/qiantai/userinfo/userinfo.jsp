<%@ page language="java" pageEncoding="UTF-8"%>
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
			          <form action="<%=path %>/userEdit.action" name="form1" method="post">
			              <table align="left" border="0" cellpadding="9" cellspacing="9">
								<tr align='center'>
									<td style="width: 60px;" align="left">
										学号：										    
									</td>
									<td align="left">
										<input type="text" name="xuehao" size="20" value="${sessionScope.user.xuehao }" style="width: 200px;"/>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										姓名：										    
									</td>
									<td align="left">
										<input type="text" name="xingming" value="${sessionScope.user.xingming }" style="width: 200px;"/>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										性别：										    
									</td>
									<td align="left">
										 <input type="radio" name="xingbie" value="男" ${sessionScope.user.xingbie=='男'?'checked':''}/>男
								         &nbsp;&nbsp;
								         <input type="radio" name="xingbie" value="女"/ ${sessionScope.user.xingbie=='女'?'checked':''}>女
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										年龄：										    
									</td>
									<td align="left">
										<input name="nianling" type="text" value="${sessionScope.user.nianling }" style="width: 200px;" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
									    
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										账号：										    
									</td>
									<td align="left">
										<input name="loginname" type="text" value="${sessionScope.user.loginname }" style="width: 200px;" readonly="readonly"/>
									    (账号只读)
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										密码：										    
									</td>
									<td align="left">
                                         <input type="text" name="loginpw" value="${sessionScope.user.loginpw }" style="width: 200px;"/>									    
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										居住地址：										    
									</td>
									<td align="left">
										<input type="text" name="xiandizhi" value="${sessionScope.user.xiandizhi }" style="width: 200px;"/>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										工作单位：										    
									</td>
									<td align="left">
										<input type="text" name="xiandanwei" value="${sessionScope.user.xiandanwei}" style="width: 200px;"/>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										联系方式：										    
									</td>
									<td align="left">
										<input type="text" name="xiandianhua" value="${sessionScope.user.xiandianhua }" style="width: 200px;"/>
									</td>
								</tr>
								<tr align='center'>
								   <td style="width: 60px;" align="left"></td>
								   <td align="left">
								      <input type="hidden" name="id" value="${sessionScope.user.id }">
								      <input type="submit" value="确定"/>
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


		<TABLE border=0 cellSpacing=0 cellPadding=0 width=772 bgColor=#a9a9a9 align=center>
		  <TR><TD rowSpan=5 width=1></TD></TR>
		</TABLE>
    
    
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
  </BODY>
</html>
