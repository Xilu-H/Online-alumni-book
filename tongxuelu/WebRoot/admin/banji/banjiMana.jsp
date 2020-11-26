<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup_shuaxin.js"></script>
		
        <script language="javascript">
           function banjiDel(id)
           {
                var url="<%=path %>/banjiDel.action?id="+id;
                window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="20" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">所在省市</td>
					<td width="10%">所在城市</td>
					<td width="10%">学校名称</td>
					<td width="10%">专业名称</td>
					<td width="10%">班级名称</td>
					<td width="10%">创建人</td>
					<td width="10%">创建时间</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.banjiList" id="banji" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#banji.chinaProvince"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#banji.chinaCity"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#banji.yuanxiao.mingcheng"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#banji.zhuanye"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#banji.mingcheng"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#banji.chuangjianUser.xingming"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#banji.chuangjianshi"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center" >
						<input type="button" value="删除" onclick="banjiDel(<s:property value="#banji.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
