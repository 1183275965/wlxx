<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>会员信息修改</title>

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
				<input name="id" type="hidden" id="name" value="${userinfo.id }">

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							帐号：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="name" size="30" type="text" id="name"
						 value="${userinfo.name }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							密码：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="pwd" type="text" id="pwd" value="${userinfo.pwd }">
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							姓名：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="rname" type="text" id="rname"
							
							value=${userinfo.rname }>
					</td>
				</tr>

				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							性别：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="sex" type="text" id="sex"
							value="${userinfo.sex }">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							年龄：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="age" type="text" id="age"
							value="${userinfo.age }">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							电话：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="tel" type="text" id="tel"
							value="${userinfo.tel }">
					</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							邮箱：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						<input name="email" type="text" id="email"
							value="${userinfo.email }">
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
