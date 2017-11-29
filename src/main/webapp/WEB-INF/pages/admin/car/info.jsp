<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE >
<html>
	<head>
		<base href="${ctx}">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>车辆管理</title>
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">

		<script type="text/javascript"
			src="${ctx}/staticfile/My97DatePicker/WdatePicker.js">
</script>


	</head>
	<body leftmargin="8" topmargin="8"'>

		<!--  快速转换位置按钮  -->
		<!--  搜索表单  -->
		<form action="tofind.action" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入车牌号：
								</td>
								<td width='170'>
									<input type='text' name='pai' value=''
										style='width: 150px' />
								</td>
								<td width='86'>
									<input name="imageField" type="submit" border="0" class="np"
										value='查询' />
								</td>
								<td width="84">
									&nbsp;

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
							车辆列表
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
					
						<td width="10%">
							车牌号码
						</td>

						<td width="10%">
							车型
						</td>

						<td width="10%">
							长短途
						</td>

						<td width="10%">
							状态
						</td>

						<td width="10%">
							备注
						</td>

						<td width="10%">
							操作
						</td>
					</tr>


            
					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						
						<td>
							${car.pai }
						</td>

						<td>
							${car.size }
						</td>

						<td>
							${car.type }
						</td>

						<td>
							${car.state }
						</td>

						<td>
							${car.info }
						</td>

						<td>
							<a href="toupdate.action?id=${car.id }">编辑</a> |
							<a href="todelete.action?id=${car.id }">删除</a>
						</td>
					</tr>



					<tr bgcolor="#FAFAF1">
						<td  class="theader" colspan="10">
							<a href="tocreate.action"><strong>添加车辆</strong>
							</a>
						</td>
					</tr>

				</table>
			</div>
		</form>

		
	</body>
</html>
