<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>物流信息管理系统</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="${ctx}/staticfile/css1/style.css" />

<body>

<div class="login-container">
	<h1>物流信息管理系统</h1>
	
	<div class="connect">
		<p>
		<c:if test="${empty msg }">欢迎光临</c:if>
		<c:if test="${not empty msg }">${msg }</c:if>
		</p>
	</div>
	
	<form action="Userlogin.action" method="post" id="loginForm">
		<div>
			<input type="text" name="name" class="username" placeholder="用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="pwd" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="submit">登 录</button>
	</form>

	<a href="register.html">
		<button type="button" class="register-tis">还有没有账号？</button>
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