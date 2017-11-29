<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="${ctx}">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新闻资讯</title>
		<link href="${ctx}/staticfile/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${ctx}/staticfile/js/tab.js">
</script>
	</head>

	<body>

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="inc/top.jsp"></jsp:include>
				<!----------------内容区开始-------------------->
				<div class="sub_main">
					<div class="sub_maincon">
						<div class="sub_mainbox clearfix">
							<div class="m_title2">
								<h3>
									<font color="#0a1450">新闻资讯</font>
								</h3>
							</div>
							<div class="article_listbox">
			<c:forEach items="${list}" var="news" varStatus="status">
			<tr>
			<td align="left">
			
				<div align="center">
					<a href="qiannews.action?id=${news.newsId}">查看新闻资讯内容</a>
				</div>
			</td>
			<td>${news.newsTitle}</td>
		<%-- 	<td>${news.newsTitle }</td>	 --%>
		</tr>
		
		</c:forEach>
																	
		
							</div>
							 <div class="message_con">
							  
                </div>
						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				<jsp:include flush="true" page="inc/foot.jsp"></jsp:include>
				<!---------------页脚结束---------------->
			</div>
		</div>
		<c:forEach items="${list}" var="news" varStatus="status">
			<tr>
			<td align="left">
			
				<div align="center">
					<a href="qiannews.action?id=${news.newsId}">查看新闻资讯内容</a>
				</div>
			</td>
			<td>${news.newsTitle}</td>
		<%-- 	<td>${news.newsTitle }</td>	 --%>
		</tr>
		
		</c:forEach>
	</body>
</html>
