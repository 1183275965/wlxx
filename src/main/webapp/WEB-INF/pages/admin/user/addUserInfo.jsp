<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>会员信息添加</title>

		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
		<script type="text/javascript"
			src="${ctx}/staticfile/My97DatePicker/WdatePicker.js">
</script>
		<style type="text/css">
<!--
.STYLE3 {
	font-size: 16px
}
-->
</style>
		<script type="text/javascript">
function check() {
	if (document.getElementById("name").value == "") {
		alert("请输入账号");
		return false;
	}
	
	if (document.getElementById("pwd").value == "") {
		alert("请输入密码");
		return false;
	}
	
	if (document.getElementById("rname").value == "") {
		alert("请输入姓名");
		return false;
	}
	
	if (document.getElementById("sex").value == "") {
		alert("请输入性别");
		return false;
	}
	if (document.getElementById("age").value == "") {
		alert("请输入年龄");
		return false;
	}
	if (document.getElementById("tel").value == "") {
		alert("请输入电话");
		return false;
	}
	if (document.getElementById("email").value == "") {
		alert("请输入邮箱");
		return false;
	}

	return true;

}

 function selDan() {

	var getDanhao = window.showModalDialog(
			"<%=path%>/admin/yundan/listseldan.jsp", "",
			"dialogWidth=800px;dialogHeight=300px");
	if (getDanhao != undefined) {
		document.getElementById("danhao").value = getDanhao;
	}
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
		<form action="create.action" method="post" onsubmit="return check()">
			<table width="50%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							账号：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="qname" type="text" id="qname">
						</label>
					</td>
				</tr>

		    <tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							密码：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="pwd" type="text" id="pwd">
						</label>
					</td>
				</tr>

				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							姓名：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="rname" type="text" id="rname">
						</label>
					</td>
				</tr>

				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							性别：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="sex" type="text" id="sex">
						</label>
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							年龄：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="age" type="text" id="age">
						</label>
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							电话：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="tel" type="text" id="tel">
						</label>
					</td>
				</tr>
				<tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							邮箱：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="email" type="text" id="email">
						</label>
					</td>
				</tr>
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
