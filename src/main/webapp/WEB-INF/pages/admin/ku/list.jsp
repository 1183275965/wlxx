<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<base href="${ctx }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网点管理</title>
<LINK href="${ctx}/staticfile/css/admin.css" type="text/css"
	rel="stylesheet">

</head>
<body leftmargin="8" topmargin="8"'>
	<!--  搜索表单  -->
	<form action="wdlist.action" method="post">

		<table width='98%' border='0' cellpadding='1' cellspacing='1'
			bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
			<tr bgcolor='#EEF4EA'>
				<td align='center'>

					<table width="469" border='0' cellpadding='0' cellspacing='0'>
						<tr>
							<td width='129'>请输入名称：</td>
							<td width='170'><input type='text' name='name' value=''
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
	<form name="form2" action="wdlist.action">
		<div id="printTable">
			<table width="98%" border="0" cellpadding="2" cellspacing="1"
				bgcolor="#3333FF" align="center" style="margin-top: 8px">
				<tr bgcolor="#E7E7E7">
					<td colspan="10" class="theader">网点信息列表</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">

					<td width="15%">网点名</td>
					<td width="30%">地址</td>
					<td width="10%">负责人</td>
					<td width="20%">电话</td>
					<td width="10%">备注</td>
					<td width="15%">操作</td>
				</tr>
				
				
<c:forEach items="${depotList}" var="depot">

				<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">

						<td>${depot.depotName}</td>
						<td align="left">
							<div align="center">${depot.address }</div>
						</td>
						<td align="left">
							<div align="center">${depot.manager }</div>
						</td>
						<td align="left">
							<div align="center">${depot.phone }</div>
						</td>
						<td align="left">
							<div align="center">${depot.remarks }</div>
						</td>
						<td><a href="edit?depotId=${depot.depotId }">编辑</a>
						|<a href="delete?depotId=${depot.depotId }">删除</a></td>
					</tr>	

				</c:forEach>


				<tr>
					<td colspan="10" class="theader"><a href="addwd"><strong>添加网点</strong>
					</a></td>
				</tr>

			</table>
		</div>
	</form>


</body>
</html>