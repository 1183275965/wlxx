<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>车辆修改</title>

		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<script type="text/javascript"
			src="${ctx}/staticfile/My97DatePicker/WdatePicker.js">
</script>
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
	if (document.getElementById("pai").value == "") {
		alert("请输入车牌号码 ");
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
		<form action="update.action" method="post" onsubmit="return check()">
		
			<table width="39%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				<input name="id" type="hidden" id="name" value="${car.id }">
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							车牌号码 ：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="pai" type="text" id="pai"
							value="${car.pai }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							车型：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="size" type="text" id="size"
							value="${car.size }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							长短途：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="type" type="text" id="type"
							value="${car.type }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							状态 ：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<select name="state"  id="state">
							  <option value="运行中">运行中</option>
							   <option value="空闲中">空闲中</option>
							</select>
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							备注：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="info" type="text" id="info"
							value="${car.info }">
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
