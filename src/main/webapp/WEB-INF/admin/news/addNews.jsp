<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>新闻资讯信息添加</title>

		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">
		<style type="text/css">
<!--
.STYLE3 {
	font-size: 16px
}
-->
</style>

<script type="text/javascript">
function check() {
	if (document.getElementById("title").value == "") {
		alert("请输入新闻资讯标题");
		return false;
	}
	
	if (document.getElementById("info").value == "") {
		alert("请输入新闻资讯内容");
		return false;
	}


	return true;

}
</script>
	</head>

	<body>
		<p>
			&nbsp;
		</p>
		<p>
			&nbsp;
		</p>
		<form action="AddNewsAction" method="post" onsubmit="return check()">
			<table width="70%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							新闻资讯标题：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="title" size="50" type="text" id="title">
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							 新闻资讯内容：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<textarea rows="10" cols="80"  name="info" id="info"></textarea>
					</td>
				</tr>
				
				 
				<tr>
					<td colspan="2" bgcolor="#FFFFFF">
						<label>
							<div align="center">
								<input type="submit" name="Submit" value="提交">
								<input type="reset" name="Submit2" value="重置">
							</div>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
