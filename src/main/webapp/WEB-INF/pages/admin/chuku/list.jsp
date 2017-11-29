<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>

<head>
<base href="${ctx }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出库管理</title>
<LINK href="${ctx}/staticfile/css/admin.css" type="text/css"
	rel="stylesheet">

</head>
<body leftmargin="8" topmargin="8"'>

	<!--  快速转换位置按钮  -->
	<!--  搜索表单  -->
	<form action="chukulist.action" method="post">

		<table width='98%' border='0' cellpadding='1' cellspacing='1'
			bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
			<tr bgcolor='#EEF4EA'>
				<td align='center'>

					<table width="469" border='0' cellpadding='0' cellspacing='0'>
						<tr>
							<td width='129'>请输入单号：</td>
							<td width='170'><input type='text' name='number' value=''
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
	<!--  内容列表   -->
	<form name="form2">
		<div id="printTable">
			<table width="98%" border="0" cellpadding="2" cellspacing="1"
				bgcolor="#3333FF" align="center" style="margin-top: 8px">
				<tr bgcolor="#E7E7E7">
					<td colspan="10" class="theader">出库列表</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">

					<td width="14%">单号</td>
					<td width="10%">网点</td>
					<td width="10%">发往网点</td>
					<td width="10%">车辆</td>
					<td width="20%">经手人</td>
					<td width="20%">日期</td>

					<td width="10%">操作</td>
				</tr>

				<c:forEach items="${chukuList}" var="chuku">
					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">

						<td>${chuku.number}</td>
						<td align="left">
							<div align="center">${chuku.name }</div>
						</td>
						<td align="left">
							<div align="center">${chuku.destination }</div>
						</td>
						<td>${chuku.car}</td>

						<td>${chuku.appuser }</td>

						<td><fmt:formatDate value="${chuku.date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>

						<td><a
							href="editchuku?chukuId=${chuku.chukuId }">编辑</a>	
							|<a href="deletechuku?chukuId=${chuku.chukuId }">删除</a></td>	
					</tr>
	</c:forEach>
	
					<tr bgcolor="#FAFAF1">	
					  <td  class="theader" colspan="10">	
						<a href="addChuku.action"><strong>添加出库</strong></a> </td>	
					</tr>	
	
				</table>	
			</div>	
		</form>	
	
		
	</body>	
</html>	
