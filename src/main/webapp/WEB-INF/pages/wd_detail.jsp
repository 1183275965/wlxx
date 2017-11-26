<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="${ctx }">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>网点信息</title>
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
							<!-------------左边开始------------->

							<!-------------左边结束------------->

							<div class="m_border">

								<div class="m_content">
									<div class="article_conbox">
								
										<h1 class="title">
											
											${name }
										</h1>
										<div class="article_info">
											<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
										</div>
										<div class="article_con">
											<p>
											地址：${address }<br/>
											  &nbsp;&nbsp;&nbsp;&nbsp;负责人：${fuze }<br/>
											  &nbsp;&nbsp;&nbsp;&nbsp;联系方式：${tel }<br/>
												 &nbsp;&nbsp;&nbsp;&nbsp;${beizhu }
											</p>
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
