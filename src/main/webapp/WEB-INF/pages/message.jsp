<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%@ include file="/base.jsp" %>

<!DOCTYPE html >
<html >
	<head>
		<base href="${ctx}" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>留言板</title>
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
									<font color="#0a1450">留言</font>
								</h3>
							</div>
							<div class="m_content">

								<div class="leave_mes">
									<p class="mes_info">
										<span class="reply"> </span><span>留言人：${appuser}</span><span>时间：${date }</span>
									</p>
									<div class="mes_con">
										${msg }
									</div>
									<div class='mes_reply'><b>管理员回复: ${reply }</b></div>



								</div>


								<div class="message_con">
									<%
										Object user = session.getAttribute("user");
										if (user != null) {
									%>
									<script type="text/javascript">
										function check() {
											if (document.getElementById("msg").value == "") {
												alert("请输入留言信息");
												return false;
											}
											return true;
										
										}
									</script>
									<form id="form2" name="form2" method="post"
										action="AddMsgAction" onsubmit="return check()">
										<h3>
											我要留言：
										</h3>
										<p>
											<textarea name="msg" id="msg" cols="45" rows="5"
												class="text_mes"></textarea>
										</p>
										<p class="btn_box">
											<input type="submit" name="button2" id="button2" value="提交"
												class="btn" />
										</p>
									</form>
									<%
										}
									%>
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
