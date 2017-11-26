<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="${ctx}"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>物流信息管理系统</title>
		<link href="${ctx}/staticfile/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${ctx}/staticfile/js/tab.js">
</script>
	</head>

	<body>

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="${ctx}/staticfile/inc/top.jsp"></jsp:include>
				
				<div class="main">
					<div class="main_con">
						<div class="main_box clearfix">
							 
							<div class="main_center">
								
								
								<div class="m_border">
									<div class="m_title2">
										<h3>
											<font color="#0a1450">新闻资讯</font>
										</h3>
									</div>
									<div class="m_content">
										<div class="article_listbox ">
											<ul>
											
												<li>
													<span class="time">${date }</span><a href="news_detail.jsp?id=${id }"
											>${title }</a>
												</li>
											
											</ul>
										</div>
									</div>
								</div>
								
								
								
								
								<div class="m_border">
									<div class="m_title2">
										<h3>
											<font color="#0a1450">网点信息</font>
										</h3>
									</div>
									<div class="m_content">
										<div class="article_listbox ">
											<ul>
									<%-- 		<%
												sql = "select * from ku";

												pstmt = conn.prepareStatement(sql);
												rs = pstmt.executeQuery();

												while (rs.next()) {
													String id = rs.getString("id");
											%> --%>
												<li>
													<span class="time">${adress }</span><a href="wd_detail.jsp?id=${id }"
											>${name }</a>
												</li>
											 
											</ul>
										</div>
									</div>
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
