<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>留言管理</title>
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
		
	</head>
	<body leftmargin="8" topmargin="8"'>

		<!--  快速转换位置按钮  -->
		<!--  内容列表   -->
		<form name="form2">
			<div id="printTable">
				<table width="98%" border="0" cellpadding="2" cellspacing="1"
					bgcolor="#3333FF" align="center" style="margin-top: 8px">
					<tr bgcolor="#E7E7E7">
						<td colspan="10"  class="theader">
							留言信息列表
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
					 
					 
						<td width="20%">
						          内容
						</td>
						
						<td width="20%">
						      日期
						</td>
						
						<td width="20%">
						     发布人
						</td>
						
						<td width="20%">
						   回复内容
						</td>
					 
						

						<td width="10%">
							操作
						</td>
					</tr>



					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						 
					 
						<td align="left">
							<div align="center">
								${msg }

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
						
							<td align="left">
							<div align="center">
								${reply }

							</div>
						</td>
					 
					 
						<td>
							 
							<a href="DelMsgAction?id=${id }">删除</a>|
							<a href="addMsg.jsp?id=${id }">回复</a>
						</td>
					</tr>

					 

				</table>
			</div>
		</form>

		 
	</body>
</html>