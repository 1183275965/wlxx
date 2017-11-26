<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>网点管理</title>
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">

	</head>
	<body leftmargin="8" topmargin="8"'>
		<!--  搜索表单  -->
		<form action="list.jsp" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入名称：
								</td>
								<td width='170'>
									<input type='text' name='queryName' value=''
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

		<!--  快速转换位置按钮  -->
		<!--  内容列表   -->
		<form name="form2">
			<div id="printTable">
				<table width="98%" border="0" cellpadding="2" cellspacing="1"
					bgcolor="#3333FF" align="center" style="margin-top: 8px">
					<tr bgcolor="#E7E7E7">
						<td colspan="10" class="theader">
							网点信息列表
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">

						<td width="15%">
							网点名
						</td>
						<td width="30%">
							地址
						</td>
						<td width="10%">
							负责人
						</td>
						<td width="20%">
							电话
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
						${name }

						</td>
						<td align="left">
							<div align="center">
								${address }

							</div>
						</td>
						<td align="left">
							<div align="center">
								${fuze }

							</div>
						</td>
						<td align="left">
							<div align="center">
								${tel }

							</div>
						</td>
						<td align="left">
							<div align="center">
								${beizhu }

							</div>
						</td>

						<td>
							<a href="admin/ku/modKu.jsp?id=${id }">编辑</a> |
							<a href="DelKuAction?id=${id }">删除</a>
						</td>
					</tr>

					<tr>
						<td colspan="10" class="theader">

							<a href="${ctp }addKu.jsp"><strong>添加网点</strong>
							</a>
						</td>
					</tr>

				</table>
			</div>
		</form>


	</body>
</html>