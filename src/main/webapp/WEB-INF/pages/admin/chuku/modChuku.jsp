<%@ page language="java"	
	import="java.util.*,java.sql.*"	
	pageEncoding="UTF-8"%>	
<%@ include file="../base.jsp" %>
	
<!DOCTYPE HTML >	
<html>	
	<head>	
		<base href="${ctx}">	
	
		<title>出库修改</title>	
	
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">	
		<script type="text/javascript" src="${ctx}/staticfile/My97DatePicker/WdatePicker.js"></script>	
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">	
		<style type="text/css">	
<!--	
.STYLE3 {	
	font-size: 16px	
}	
-->	
</style>	
	</head>	
	
	<body>	
		<p>	
			&nbsp;	
		</p>	
		<p>	
			&nbsp;	
		</p>	
		<form action="ModChukuAction" method="post">	
			
			<table width="39%" border="0" align="center" cellspacing="1"	
				bordercolor="#000000" bgcolor="#0000CC">	
				<input name="chukuId" type="hidden" id="name" value="${chuku.chukuId }">	
				<tr>	
					<td width="28%" bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							单号：	
						</div>	
					</td>	
					<td width="72%" bgcolor="#FFFFFF">	
						<label>	
							<input name="number" type="text" id="danhao" value="${chuku.number }">	
						</label>	
					</td>	
				</tr>	
				<tr>	
					<td width="28%" bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							车辆：	
						</div>	
					</td>	
					<td width="72%" bgcolor="#FFFFFF">	
						<label>	
							<input name="car" type="text" id="car" value="${chuku.car }">	
						</label>	
					</td>	
				</tr>
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							网点：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="name" type="text" id="kuname" value="${chuku.name }">	
					</td>	
				</tr>
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							发往网点：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="destination" type="text" id="tokuname" value="${chuku.destination }">	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							说明：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="chukuInfo" type="text" id="info"   value="${chuku.chukuInfo }">	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							操作人：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="appuser" type="text" id="appuser"  value="${chuku.appuser }" >	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							日期：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="date" type="text" id="date"   value="${chuku.date }" class="Wdate"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd  HH:mm:ss',readOnly:true})">	
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
