<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp" %>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="${ctx} />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>运单查询</title>
		<link href="${ctx}/staticfile/css/style.css" rel="stylesheet" type="text/css" />

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
										<font color="#0a1450">查询</font>
									</h3>
								</div>
								<div class="m_content message_con">
									<form id="form1" name="form1" method="post"
										action="yundanq.jsp" >
										<p class="tips">
											<b>注：</b>带
											<span class="red">*</span>号为必填项
										</p>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="left_name">
													单号：
												</td>
												<td>
													<input type="text" name="dh" id="dh"
														class="text_input text150" />
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>

											<tr>
												<td>
													&nbsp;
												</td>
												<td>
													<input type="submit" name="button" id="button" value="查询" />
												</td>
											</tr>
										</table>
									</form>
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
