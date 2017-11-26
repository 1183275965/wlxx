<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>新闻资讯信息修改</title>

		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
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
		<form action="ModNewsAction" method="post"  onsubmit="return check()">
		
			<table width="70%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							标题：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="title" size="50" type="text" id="title"
							
								value="${title }">
							<input name="id" type="hidden" id="id" value="${id }">
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
					<!-- 下面可能会出错 -->
						<textarea rows="10" cols="80" id="info" name="info">${info.replaceAll("<br>","\r\n").replaceAll("&nbsp;"," ") }</textarea>
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
