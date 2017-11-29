<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>运单管理</title>
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
		
	</head>
	<body leftmargin="8" topmargin="8"'>

		<!--  快速转换位置按钮  -->
		<!--  搜索表单  -->
		<form action="SelectYundan.action" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入运单号：
								</td>
								<td width='170'>
									<input type='text' name='queryDanhao' value=''
										style='width: 150px' />
								</td>
								<td width='86'>
									<input name="imageField" type="submit" border="0" class="np"
										value='查询' />
								</td>
								<td width="84">&nbsp;
									
								</td>
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
						<td colspan="10"  class="theader">
							运单信息列表
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
					
						<td width="15%">
						    单号
						</td>
						<td width="25%">
						     出发地地址联系方式
						</td>
						<td width="25%">
						    目的地地址联系方式
						</td>
						<td width="10%">
						  日期
						</td>
						<td width="5%">
						 发货人
						</td>
						<td width="5%">
						 状态
						</td>
						

						<td width="10%">
							操作
						</td>
					</tr>

					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
						<td>
						${yundan.danHao}

						</td>
						<td align="left">
							<div align="center">
							${yundan.chuFadi }

							</div>
						</td>
						<td align="left">
							<div align="center">
							${yundan.muDidi}

							</div>
						</td>
						<td align="left">
							<div align="center">
								<fmt:formatDate value="${yundan.date}" pattern="yyyy-MM-dd" />

							</div>
						</td>
						<td align="left">
							<div align="center">
									${yundan.faHuoRen }

							</div>
						</td>
						
						<td align="left">
							<div align="center">
								${yundan.state }

							</div>
						</td>
					 
						<td>
							<a href="modYundan.action?danHao=${yundan.danHao}">编辑</a> |
							<a href="/DelYundan.action?id=${yundan.id }">删除</a>
						</td>
					</tr>
				</table>
			
			</div>
		</form>

		
	</body>
</html>