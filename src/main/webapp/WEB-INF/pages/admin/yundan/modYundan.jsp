<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>运单修改</title>

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
function check() {
	if (document.getElementById("chufa").value == "") {
		alert("请输入出发地地址联系方式");
		return false;
	}
	if (document.getElementById("mudi").value == "") {
		alert("请输入目的地地址联系方式");
		return false;
	}
	if (document.getElementById("date").value == "") {
		alert("请输入日期");
		return false;
	}
	if (document.getElementById("fahuoren").value == "") {
		alert("请输入发货人");
		return false;
	}
	if (document.getElementById("shouhuoren").value == "") {
		alert("请输入收货人");
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
		<form action="ModYundanAction" method="post" onsubmit="return check()">
		
			<table width="80%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
			 
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							单号：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
						    <input name="id" type="hidden" id="name" value="${id }">
							<input name="danhao" size="30" type="text" readonly="readonly" value="${danhao }" id="danhao">
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
					                  出发地地址联系方式：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="chufa" size="40" type="text" value="${chufa }" id="chufa">(格式：地址,姓名,电话)
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							  目的地地址联系方式：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="mudi" size="40" type="text" value="${mudi }" id="mudi">(格式：地址,姓名,电话)
						</label>
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							日期：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="date" class="Wdate"  value="${date }" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})" type="text" id="date">
						</label>
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							发货人：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="fahuoren" type="text" value="${fahuoren }" id="fahuoren">
						</label>
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							收货人：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="shouhuoren" type="text" id="shouhuoren" value="${shouhuoren }">
						</label>
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							状态：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<select name="state"  id="state">
							  <option>运输</option>
							   <option>派送</option>
							   <option>签收</option>
							</select>
						</label>
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
