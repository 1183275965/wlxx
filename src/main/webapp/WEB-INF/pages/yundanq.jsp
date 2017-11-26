<%@ page language="java" import="java.util.*,java.sql.*,com.biyeseng.db.*" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp" %>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="${ctx }"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>运单查询</title>
		<link href="${ctx}/staticfile/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${ctx}/staticfile/js/tab.js">
</script>

		
	</head>

	<body>

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="${ctx}/staticfile/inc/top.jsp"></jsp:include>
				<!----------------内容区开始-------------------->
				<div class="sub_main">
					<div class="sub_maincon">
						<div class="sub_mainbox clearfix">


							<div class="m_border">
								<div class="m_title2">
									<h3>
										<font color="#0a1450">查询结果</font>
									</h3>
								</div>
								<div class="m_content message_con" style="padding-left: 100px">
									<form id="form1" name="form1" method="post"
										action="QueryYun"   >
										<p class="tips">
											 
										</p>
										
										
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="left_name">
													单号：
												</td>
												<td>
													${danhao }
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													出发地地址联系方式：
												</td>
												<td>
													${chufa }
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											
											
											<tr>
												<td class="left_name">
													目的地地址联系方式 ：
												</td>
												<td>
													${mudi }
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											
											<tr>
												<td class="left_name">
													日期 ：
												</td>
												<td>
													${date }
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											
											<tr>
												<td class="left_name">
													发货人：
												</td>
												<td>
													${fahuoren }
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											
											<tr>
												<td class="left_name">
													状态 ：
												</td>
												<td>
													${state }
													<br />
													
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											
										</table>
									</form>
									<table  align="center" width="80%" bgcolor="#D7F1FE">
										<tr>
										    
										     <td align="center">运输轨迹</td>
										      
										</tr>
										<tr bgcolor="#DDDDDD">
										   
										     <td align="center">${state }</td>
										    
										      </tr>
									
									</table>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				<jsp:include flush="true" page="${ctx}/staticfile/inc/foot.jsp"></jsp:include>
				<!---------------页脚结束---------------->
			</div>
		</div>
	</body>
</html>
