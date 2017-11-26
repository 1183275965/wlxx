<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<div id="top">
	<!----------------页面头部开始-------------------->
	<div class="banner">
		<img src="${ctx}/staticfile/images/top.jpg" />
	</div>
	<!----------------页面头部结束-------------------->
	<!----------------主导航菜单开始-------------------->
	<div id="nav" align="center">
		<ul>
			<li>
				<a href="index.action"><span>首页</span> </a>
			</li>
			<li>
				<a href="news.action"><span>新闻资讯</span> </a>
			</li>
			<li>
				<a href="wd.action"><span>网点信息</span> </a>
			</li>
			<li>
				<a href="yundan.action"><span>运单查询</span> </a>
			</li>
			<li>
				<a href="yunfei.action"><span>运费查询</span> </a>
			</li>
			
			<li>
				<a href="message.action"><span>留言板</span> </a>
			</li>
		
			
		</ul>
	</div>
	<!----------------主导航菜单结束-------------------->
</div>
<!----------------内容区开始-------------------->
<div class="login_con">
    <%
      Object user= session.getAttribute("user");
      if(user==null){
     %>
	<form id="form1" name="form1" method="post" action="UserLogAction">
		<span>账号： <input type="text" name="name" id="name"
				class="text_input" /> </span>
		<span>密码： <input type="password" name="pwd"
				id="pwd" class="text_input" /> </span>
		<span> <input type="submit" name="button" id="button"
				value="登录" class="denlu" /> </span>
		<span>  <input type="button" name="button" id="button"
				value="注册" class="denlu" onclick="window.location.href='registered.jsp'" /></span>
		<span>  <input type="button" name="button" id="button"
				value="后台" class="denlu" width="10px" onclick="javascript:window.open('adminlogin.action','_blank')" /></span>		
		 
	</form>
	<%
	}else{ %>
	<span>欢迎你：<%=user %></span>
	
	<span><a href="logout.jsp" class="zc">注销</a> </span>
	<span><a href="newdan.jsp" class="zc">在线下单</a> </span>
	<span><a href="mydan.jsp" class="zc">我的订单</a> </span>
	<%
	}
	 %>
</div>