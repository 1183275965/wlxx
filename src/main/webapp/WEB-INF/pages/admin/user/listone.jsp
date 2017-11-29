<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>会员管理</title>
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
	
	<object id="LODOP"
			classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0>
		</object>
		<script language="javascript">CheckLodop();</script>
	</head>
	<body leftmargin="8" topmargin="8"'>

		<!--  快速转换位置按钮  -->
		<!--  搜索表单  -->
		<form action="findOne.action" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入会员名称：
								</td>
								<td width='170'>
									<input type='text' name='queryName' value=''
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
							会员信息列表
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
						
						<td width="10%">
							账号
						</td>
						<td width="10%">
						          密码	
						</td>
						<td width="10%">
						          姓名
						</td>
						<td width="10%">
						          性别
						</td>
						<td width="10%">
						         年龄
						</td>
						<td width="10%">
						         电话
						</td>
						<td width="10%">
						         邮箱
						</td>
						<td width="10%">
							操作
						</td>
					</tr>

				<c:forEach items="${userinfo}" var="ui" varStatus="status"> 
					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						
						<td>
						${ui.name }

						</td>
						<td align="left">
							<div align="center">
								${ui.pwd }

							</div>
						</td>
						<td align="left">
							<div align="center">
								${ui.rname }

							</div>
						</td>
						<td align="left">
							<div align="center">
								${ui.sex }

							</div>
						</td>
						
						
						<td align="left">
							<div align="center">
								${ui.age }

							</div>
						</td>
					 
					 <td align="left">
							<div align="center">
								${ui.tel }
							</div>
						</td>
						<td align="left">
							<div align="center">
								${ui.email }

							</div>
						</td>
						<td>
							<a href="toupdate.action?id=${ui.id }">修改</a> |
							<a href="delete.action?id=${ui.id }">删除</a>
						</td>
					</tr>

				</c:forEach>
				<tr bgcolor="#FAFAF1">
						<td  class="theader" colspan="10">
							<a href="tocreate.action"><strong>添加签收信息</strong>
							</a>
						</td>
				</tr>
				</table>
			</div>
		</form>

		
	</body>
</html>