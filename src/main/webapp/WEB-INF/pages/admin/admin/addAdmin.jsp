<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>员工信息添加</title>

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
	if (document.getElementById("name").value == "") {
		alert("请输入账号");
		return false;
	}
 
	if(document.getElementById("pwds").value.length<6 || document.getElementById("pwds").value.length>12){
	   alert("密码必须是6到12位！");
	   return false;
	}
	var age=document.all.age.value;
	
	if(isNaN(age)||age<=0){
	   alert("年龄必须是正数！");
	   return false;
	}
	
	var tels=document.getElementById("tel").value;
	
	if(isNaN(tels)||tels.length!=11){
	   alert("请输入正确手机号码！");
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
		<form action="toadd.action" method="post"  onSubmit="return check()">
			<table width="39%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				 
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							账号：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="userName" type="text" id="userName">
						</label>
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							 密码：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="userPw" type="password" id="userPw">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							 姓名：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="rname" type="text" id="rname">
					</td>
				</tr>
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							职务：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
							<input name="job" type="text" id="job">
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
					<td colspan="2" bgcolor="#FFFFFF">
						<label>
							<div align="center">
								<input type="submit"  value="提交">
								<input type="reset"  value="重置">
							</div>
						</label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
