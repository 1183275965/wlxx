<%@ page language="java" import="java.util.*,java.sql.*,cn.tarena.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>网点信息</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/tab.js">
</script>
	</head>

	<body>

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="../inc/top.jsp"></jsp:include>
				<!----------------内容区开始-------------------->
				<div class="sub_main">
					<div class="sub_maincon">
						<div class="sub_mainbox clearfix">
							<!-------------左边开始------------->

							<!-------------左边结束------------->

							<div class="m_border">

								<div class="m_content">
									<div class="article_conbox">
									<%-- 
									<%
										DBManager dbm = new DBManager();
										Connection conn = dbm.getConnection();
										String queryName = request.getParameter("queryName");
										String sql = "select * from ku where id="+request.getParameter("id");
										 
										PreparedStatement pstmt = conn.prepareStatement(sql);
										ResultSet rs = pstmt.executeQuery();

										while (rs.next()) {
											String id = rs.getString("name");
									%> --%>
										<h1 class="title">
											<%-- <%=rs.getString("name") %> --%>
										</h1>
										<div class="article_info">
											<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
										</div>
										<div class="article_con">
											<p>
											<%-- 地址：<%=rs.getString("address") %><br/>
											  &nbsp;&nbsp;&nbsp;&nbsp;负责人：<%=rs.getString("fuze") %><br/>
											  &nbsp;&nbsp;&nbsp;&nbsp;联系方式：<%=rs.getString("tel") %><br/>
												 &nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("beizhu") %> --%>
											</p>
										</div>
										
										<%-- <%
										}
										if (rs != null)
											rs.close();
										if (pstmt != null)
											pstmt.close();
										if (conn != null)
											conn.close();
									%> --%>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				<jsp:include flush="true" page="../inc/foot.jsp"></jsp:include>
				<!---------------页脚结束---------------->
			</div>
		</div>
	</body>
</html>
