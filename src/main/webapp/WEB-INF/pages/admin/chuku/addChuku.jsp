<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>	
<%@ include file="../base.jsp" %>
	
<!DOCTYPE HTML >	
<html>	
	<head>	
		<base href="${atx }">	
	
		<title>出库添加</title>	
	
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">	
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">	
		<script type="text/javascript" src="${ctx}/staticfile/My97DatePicker/WdatePicker.js"></script>	
		<style type="text/css">	
<!--	
.STYLE3 {	
	font-size: 16px	
}	
-->	
</style>
<script type="text/javascript">
function selDan() {

	var getDanhao = window.showModalDialog(
			"${ctx}/admin/yundan/listseldan.jsp", "",
			"dialogWidth=800px;dialogHeight=300px");
	if (getDanhao != undefined) {
		document.getElementById("danhao").value = getDanhao;
	}
}

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
		<form action="AddChuku.action" method="post" onsubmit="return check()">	
			<table width="39%" border="0" align="center" cellspacing="1"	
				bordercolor="#000000" bgcolor="#0000CC">	
				<tr>	
					<td width="28%" bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							单号：	
						</div>	
					</td>	
					<td width="72%" bgcolor="#FFFFFF">
						<select name="number">
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
						 
						<select name="car" id="car">
							<option>-无車輛-</option>
						<c:forEach items="${carList}" var="car">
		
			            <option>${car.pai} </option>
		                </c:forEach>
							</select>
					</td>
				</tr>
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							网点：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<select name="name" id="kuname">
							
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
							发往网点：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<select name="destination" id="tokuname">
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
						<input name="chukuInfo" type="text" id="info"  >	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							操作人：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="appuser" type="text" id="appuser"  >	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							日期：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="date" type="text" id="date"   class="Wdate"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd  HH:mm:ss',readOnly:true})">	
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
