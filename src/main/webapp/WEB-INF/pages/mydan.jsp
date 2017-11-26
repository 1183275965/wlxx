<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="${ctx}" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新闻资讯</title>
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
							<div class="m_title2">
								<h3>
									<font color="#0a1450">我的订单</font>
								</h3>
							</div>
							<div class="article_listbox">
								<ul>
									
									<li>
										<span class="time"><font color="red">${state }</font>&nbsp;&nbsp;&nbsp;&nbsp;${date }</span><a
											href="yundanq.jsp?dh=${danhao }"></a>
									</li>
									
								</ul>
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
