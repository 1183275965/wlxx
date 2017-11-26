<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

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
		<!--  内容列表   -->
		<form name="form2">
			<div id="printTable">
				<table width="98%" border="0" cellpadding="2" cellspacing="1"
					bgcolor="#3333FF" align="center" style="margin-top: 8px">
					<tr bgcolor="#E7E7E7">
						<td height="24" colspan="10" background="skin/images/tbg.gif">
							&nbsp;运单运输信息&nbsp;
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
						<td width="6%">
							ID
						</td>
						<td width="14%">
						    单号
						</td>
						<td width="20%">
						    状态
						</td>
						<td width="10%">
						  时间
						</td>
						
						
					</tr>


					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td>${id }
						</td>
						<td>
						${danhao }

						</td>
						<td align="left">
							<div align="center">
								${state }

							</div>
						</td>
						<td align="left">
							<div align="center">
								${date }

							</div>
						</td>
						
					</tr>


					<tr bgcolor="#FAFAF1">
					  <td height="28" colspan="10">
							&nbsp;
						
							  <a href="addYunshu.jsp?id=${id }&danhao=${danhao}"><strong>添加运输信息</strong></a> </td>
					</tr>

				</table>
			</div>
		</form>

		<!--  搜索表单  -->
		 
	</body>
</html>