<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>入库添加</title>

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

	if (document.getElementById("danhao").value == "") {
		alert("请输入单号");
		return false;
	}

	if (document.getElementById("date").value == "") {
		alert("请选择日期");
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
		<form action="AddRuku02.action" method="post" onsubmit="return check()">
			<table width="39%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							单号：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<select name="storageNum">
						<option>-无单号-</option>
						<c:forEach items="${qianList}" var="qian">
		
			            <option>${qian.danhao} </option>
		                </c:forEach>
		               选择 </select>
						
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							车辆：
						</div>
					</td>
					<td bgcolor="#FFFFFF">

						<select name="storageCar" id="car">

						<option>-无车辆-</option>
						<c:forEach items="${carList}" var="car">
		
			            <option>${car.pai} </option>
		                </c:forEach>
						选择</select>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							网点：
						</div>
					</td>
					<td bgcolor="#FFFFFF">

						<select name="storageName" id="kuname">
						
						<option>-无网点-</option>
						<c:forEach items="${depotList}" var="depot">
		
			            <option>${depot.depotName} </option>
		                </c:forEach>

						选择</select>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							说明：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="storageInfo" type="text" id="info">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							经手人：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="storageAppuser" type="text" id="appuser">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							日期：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="date" type="text" id="date" class="Wdate"
							onfocus="WdatePicker({dateFmt:'yyyy-MM-dd  HH:mm:ss',readOnly:true})">
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
