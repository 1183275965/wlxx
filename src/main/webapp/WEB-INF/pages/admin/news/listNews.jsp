<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>

<!DOCTYPE HTML >
<html>
	<head>
		<base href="${ctx }">

		<title>新闻资讯信息查看</title>

		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="${ctx}/staticfile/css/admin.css" type="text/css" rel="stylesheet">
		<style type="text/css">
<!--
.STYLE3 {
	font-size: 16px
}
-->
</style>
	</head>

	<body>
		<p>
			&nbsp;
		</p>
		<p>
			&nbsp;
		</p>
		
			<table width="39%" border="0" align="center" cellspacing="1"
				bordercolor="#000000" bgcolor="#0000CC">
				<tr>
					<td width="28%" bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							标题：
						</div>
					</td>
					<td width="72%" bgcolor="#FFFFFF">
						<label>
								${news.newsTitle }
							 
						</label>
					</td>
				</tr>
				 
				
				
				<tr>
					<td bgcolor="#FFFFFF">
						<div align="right" class="STYLE3">
							 内容：
						</div>
					</td>
					<td bgcolor="#FFFFFF">
					
						${news.newsInfo}
					</td>
				</tr>
				
			 
				
				<tr>
					<td colspan="2" bgcolor="#FFFFFF">
						<label>
							<div align="center">
								<input type="button" name="button" onclick="window.history.back()" value="返回">
								 
							</div>
						</label>
					</td>
				</tr>
			</table>
		
		 
	</body>
</html>
