<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>

<!DOCTYPE HTML >
<html>
<head>
<base href="${ctx }">

<title>员工信息添加</title>

<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="${ctx}/staticfile/css/admin.css" type="text/css"
	rel="stylesheet">
<style type="text/css">
<!--
.STYLE3 {
	font-size: 16px
}
-->
</style>
<script type="text/javascript">
	function check() {

		if (document.getElementById("depotName").value == "") {
			alert("请输入网点名");
			return false;
		}

		if (document.getElementById("address").value == "") {
			alert("请输入地址");
			return false;
		}

		var tels = document.getElementById("phone").value;

		if (isNaN(tels) || tels.length != 11) {
			alert("请输入正确手机号码！");
			return false;
		}

		return true;

	}
</script>
</head>

<body>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<form action="AddKuAction" method="post" onSubmit="return check()">
		<table width="39%" border="0" align="center" cellspacing="1"
			bordercolor="#000000" bgcolor="#0000CC">
			<tr>
				<td width="28%" bgcolor="#FFFFFF">
					<div align="right" class="STYLE3">网点名：</div>
				</td>
				<td width="72%" bgcolor="#FFFFFF"> <input
						name="depotName" type="text" >
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF">
					<div align="right" class="STYLE3">地址：</div>
				</td>
				<td bgcolor="#FFFFFF"><input name="address" type="text"/>
				</td>
			</tr>
			<tr>
				<td width="28%" bgcolor="#FFFFFF">
					<div align="right" class="STYLE3">负责人：</div>
				</td>
				<td width="72%" bgcolor="#FFFFFF"><input
						name="manager" type="text">
				</td>
			</tr>
			<tr>
				<td width="28%" bgcolor="#FFFFFF">
					<div align="right" class="STYLE3">电话：</div>
				</td>
				<td width="72%" bgcolor="#FFFFFF"><input
						name="phone" type="text" >
				</td>
			</tr>
			<tr>
				<td width="28%" bgcolor="#FFFFFF">
					<div align="right" class="STYLE3">备注：</div>
				</td>
				<td width="72%" bgcolor="#FFFFFF"><input
						name="remarks" type="text" >
				</td>
			</tr>

			<tr>
				<td colspan="2" bgcolor="#FFFFFF"><label>
						<label>
							<div align="center">
								<input type="submit" name="Submit" value="提交">
								<input type="reset" name="Submit2" value="重置">
							</div>
						</label>
				</label></td>
			</tr>
		</table>
	</form>
</body>
</html>
