<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>账号登录</title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<style>
* {
	margin: 0;
	padding: 0;
	font-size: 12px
}

html, body {
	height: 100%;
	background: #fff;
}

button, input, select {
	vertical-align: middle;
}

img {
	border: none;
	vertical-align: middle;
}

ul, ol {
	list-style-type: none;
}

.warper-bg {
	width: 100%;
	position: relative;
	z-index: 200;
}

.warper {
	width: 100%;
	position: relative;
	z-index: 200;
	display: flex;
}

.warper-bg {
	z-index: 100;
	position: relative;
	background: #FF3B6F;
	height: 200px;
}

.content {
	margin: auto;
	background: #fff;
	margin-top: -90px;
	border-radius: 10px;
	
}

.download {
	width: 270px;
	float: left;
	height: 100%
}

.downloadlink {
	display: block;
	width: 100%;
	height: 100%;
	text-indent: -10000px
}

.login {
	width: 438px;
	float: right;
	height: 100%
}

.login .text {
	padding: 20px 30px 10px 10px;
	text-indent: 2em;
	font-size: 14px;
	line-height: 150%
}

.validate {
	cursor: pointer
}

.button-submit {
	width: 94px;
	height: 69px;
	background: url(<%=path%>/img/submit.gif) no-repeat;
	border: 0;
	cursor: pointer
}

.links {
	padding: 20px 0 0 30px
}

.links li {
	float: left;
	width: 85px;
	font-size: 14px
}

.links li span {
	font-weight: bold
}

.links li a {
	color: #F00
}

.url-new {
	display: block;
	float: right;
	width: 400px;
	height: 36px;
	text-indent: -100000px
}

.tips {
	color: #b4b4b4;
	font-size: 15px;
	letter-spacing: 1px;
	line-height: 25px;
}

.loginForm {
	text-align: center;
	padding: 10px 80px;
	box-sizing: border-box;
}

.loginForm tr {
	width: 100%;
}

.loginForm tr td {
	
}
.input-text,
.loginForm tr td input,
.loginForm tr td select,
.loginForm tr td select option{
	border: 1px solid #eee;
    padding: 10px 15px;
    width: 100%;
    box-sizing: border-box;
    font-size: 15px;
    color: #333;
    transition: all .1s ease-out;
}
.loginForm tr td input:hover,
.loginForm tr td select:hover,
.loginForm tr td input:focus,
.loginForm tr td select:focus{
    border: 1px solid #ff0748;
    cursor:pointer;
}
.loginForm .last-btn{
    width: 49%;
    background: #FF3B6F;
    color: #fff;
    border:none;
    border-radius: 5px;
    transition: all .1s ease-out;
}
.loginForm .last-btn:hover{
	background:#ff0748;
	border:none;
}
#msgdiv {
	height: 130px;
	width: 300px;
	border: 5px solid #a09d18;
	padding: 10px;
	text-align: center;
}
.loading{
    width: 100%;
    text-align: center;
    top: 40%;
    position: fixed;
    z-index: 9999;
    display:none;
    
}
.loading .text{
  font-size: 14px;
    color: #1692df;
    background: #fff;
    padding: 10px 30px;
    border-radius: 10px;
    margin: auto;
    box-shadow: 1px 1px 10px 0px #e1e1e1;
    transition: all ease-in-out .2s;
    
    }
    .bottom-link{
        text-decoration: none;
    color: #FF3B6F;
    margin-top: 20px;
    display: block;
    }
</style>

<script type='text/javascript'
	src='<%=path%>/dwr/interface/loginService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>

<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="flex";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        window.location.href="<%=path%>/loginSuccess.jsp";
		    }
		    
		}
		
		
		function register()
		{
			window.location.href= "<%=path%>/register.jsp";
		}
</script>
</head>

<body>
	<div class="warper-bg"></div>
	<div class="warper">
		<div class="content">
			<a href="#"><div
					style="width: 163px; height: 29px; position: absolute; top: 234px; left: 50px; cursor: pointer;">
				</div></a> <a href="#"><div
					style="width: 202px; height: 21px; position: absolute; top: 273px; left: 36px; cursor: pointer;"></div></a>
			<div class="login">
				<div class="text"></div>
				<div class="login-field">
					<form action="" method="post" name="ThisForm" class="loginForm">
						<table width="100%" border="0" cellspacing="10">
							<tr>

								<td><input class="input-text" type="text" name="userName"
									value="" placeholder="请输入登录账号" /></td>
							</tr>
							<tr>
								<td><input class="input-text" type="password" name="userPw"
									placeholder="请输入登录密码" value="" /></td>
							</tr>
							<tr>

								<td><select name="userType"
									placeholder="请选择登录类型" />
									<option value="0">管理员</option>
									<option value="1">学&nbsp;&nbsp;&nbsp;&nbsp;生</option> </select></td>
							</tr>
							<tr>

								<td>
								<input type="button" value="登 录" class="last-btn" onclick="check1()"> 
								<input type="button" value="注 册" class="last-btn" onclick="register()"> 
											</td>
							</tr>
							<tr>
							<td><a href="/" class="bottom-link">访问首页</a></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="indicator" class="loading"><div class=text>登录中...</div></div>
</body>
</html>
