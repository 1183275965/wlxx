<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>新闻资讯管理</title>
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
	
	</head>
	<body leftmargin="8" topmargin="8"'>

		<!--  快速转换位置按钮  -->
		<!--  搜索表单  -->
		<form action="list.jsp" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入新闻资讯标题：
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
							新闻资讯信息列表
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
					
						<td width="40%">
							标题名称
						</td>
						<td width="15%">
						          内容
						</td>
						
						<td width="20%">
						     日期
						</td>
						
						<td width="15%">
						     发布人
						</td>
					 
						

						<td width="10%">
							操作
						</td>
					</tr>

					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
						<td>${title }

						</td>
						<td align="left">
							<div align="center">
								<a href="admin/news/listNews.jsp?id=${id }">查看新闻资讯内容</a>

							</div>
						</td>
						
						 
						
						
						<td align="left">
							<div align="center">
								${date }

							</div>
						</td>
						
						<td align="left">
							<div align="center">
								
								${appuser }

							</div>
						</td>
					 
						<td>
							<a href="admin/news/modNews.jsp?id=${id }">编辑</a> |
							<a href="DelNewsAction?id=${id }">删除</a>
						</td>
					</tr>


					<tr bgcolor="#FAFAF1">
					  <td  class="theader" colspan="10">
							 
							  <a href="addNews.jsp"><strong>添加新闻资讯</strong></a> </td>
					</tr>

				</table>
			</div>
		</form>

		
	</body>
</html>