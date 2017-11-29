<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>签收信息修改</title>

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
	var name = document.getElementById("name").value;
	if (name == "") {
		alert("工号不能为空");
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
		<form action="view.action" method="post" onsubmit="return check()">
		
			<table width="39%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				<input name="id" type="hidden" id="name" value="${qian.id }">

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							单号：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="danhao" size="30" type="text" id="danhao"
						 value="${qian.danhao }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							签收人：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="qname" type="text" id="qname" value="${qian.qname }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							签收时间：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="qdate" type="text" id="qdate"
							onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"
							value=${qian.qdate }>
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							经手人：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="jsr" type="text" id="jsr"
							value="${qian.jsr }">
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
