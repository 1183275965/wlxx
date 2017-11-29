<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>物流信息管理系统注册</title>
<link rel="stylesheet" href="${ctx}/staticfile/css1/style.css" />
<body>

<div class="register-container">
	<h1>用户注册</h1>
	
	<div class="connect">
		<p>Link the world. Share to world.</p>
	</div>
	
	<!-- <form  action="registsubmit.action" type="submit" method="post" id="registerForm"  onSubmit="return check()"> -->
 	<form id="registerForm" name="registerForm" method="post"
										action="registsubmit.action" onSubmit="return check()">
		
		<div>
			<input type="text" name="name" class="username" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="pwd" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		
		<div>
			<input type="text" name="rname" class="rname" placeholder="昵称" autocomplete="off"/>
		</div>
		<div>
			<br>
			<h6 align="left">性别</h6>
			<input type="radio" checked="checked" name="sex" class="sex" value="男" autocomplete="off"/>男
			<input type="radio" checked="checked" name="sex" class="sex" value="女" autocomplete="off"/>女
		</div>
		<div>
			<input type="text" name="age" class="age" placeholder="年龄" autocomplete="off"/>
		</div>
		<div>
			<input type="text" name="tel" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
		</div>
		
	
			
		<button id="submit" type="submit"  >注 册</button>
		
	</form>
	
	<a href="beforelogin.action">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>


<script src="${ctx}/staticfile/js1/jquery.min.js"></script>
<script src="${ctx}/staticfile/js1/common.js"></script>
<!--背景图片自动更换-->
<script src="${ctx}/staticfile/js1/supersized.3.2.7.min.js"></script>
<script src="${ctx}/staticfile/js1/supersized-init.js"></script>
<!--表单验证-->
<script src="${ctx}/staticfile/js1/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>
<!--
本代码由js代码收集并编辑整理;
尊重他人劳动成果;
转载请保留js代码链接 - www.jsdaima.com
-->