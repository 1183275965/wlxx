<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML >
<html>
<head>
<base href="${ctx }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工管理</title>
<LINK href="${ctx}/staticfile/css/admin.css" type="text/css"
	rel="stylesheet">


</head>
<body leftmargin="8" topmargin="8"'>
	<!--  搜索表单  -->
	<form action="tofind.action" method="post">

		<table width='98%' border='0' cellpadding='1' cellspacing='1'
			bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
			<tr bgcolor='#EEF4EA'>
				<td align='center'>

					<table width="469" border='0' cellpadding='0' cellspacing='0'>
						<tr>
							<td width='129'>请输入账号：</td>
							<td width='170'><input type='text' name='userName' value=''
								style='width: 150px' /></td>
							<td width='86'><input name="imageField" type="submit"
								border="0" class="np" value='查询' /></td>
							<td width="84">&nbsp;</td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</form>
	<!--  快速转换位置按钮  -->
	<!--  内容列表   -->
	<form name="form2">
		<div id="printTable">
			<table width="98%" border="0" cellpadding="2" cellspacing="1"
				bgcolor="#3333FF" align="center" style="margin-top: 8px">
				<tr bgcolor="#E7E7E7">
					<td class="theader" colspan="10">员工信息列表</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">

					<td width="14%">账号</td>
					<td width="20%">密码</td>
					<td width="20%">姓名</td>
					<td width="10%">职务</td>
					<td width="10%">电话</td>
					<td width="10%">年龄</td>


					<td width="10%">操作</td>
				</tr>

				
					<tr align='center' bgcolor="#FFFFFF">

						<td>${user.userName}</td>
						<td align="left">
							<div align="center">${user.userPw }</div>
						</td>
						<td align="left">
							<div align="center">${user.rname }</div>
						</td>
						<td align="left">
							<div align="center">${user.job }</div>
						</td>
						<td align="left">
							<div align="center">${user.tel }</div>
						</td>
						<td align="left">
							<div align="center">${user.age }</div>
						</td>

						<td><a href="toupdate.action?id=${user.id }">编辑</a> | <a
							href="todelete.action?id=${user.id }">删除</a></td>
					</tr>


				
				<tr bgcolor="#FAFAF1">
					<td class="theader" colspan="10"><a href="toinsert.action"><strong>添加员工</strong>
					</a></td>
				</tr>

			</table>
		</div>
	</form>


</body>
</html>