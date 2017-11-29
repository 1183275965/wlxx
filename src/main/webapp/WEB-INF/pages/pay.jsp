<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>选择银行</title>
   <link href="${ctx}/staticfile/css/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="base.jsp" %>
	<form action="${ctx }/pay.action" method="post">
		<dl class="payment_page">
			<dt>
				<strong>订单号：</strong> 
				<!-- 此处接收订单号，需要修改value -->
				<input class="idinp" name="orderId" readonly="readonly" type="text" value="${orderId}">
				<strong>支付金额：</strong>
				<!-- 此处接收订单金额，需要修改value值 -->
				<input class="moneyinp" name="" type="text" readonly="readonly" type="text" value="0.01">元
			</dt>
			<dd class="payment_page_name">
				<strong>请您选择在线支付银行 :</strong>
			</dd>
			<dd class="banks">
				<ul>
					<li>
						<input name="pd_FrpId" type="radio" value="ICBC-NET-B2C"> 
						<img src="${ctx}/staticfile/img/pay/01gs.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="CMBCHINA-NET-B2C">
						<img src="${ctx}/staticfile/img/pay/02zs.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="CCB-NET-B2C">
						<img src="${ctx}/staticfile/img/pay/03js.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/04ny.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/05zg.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/06jt.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/07hx.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/08xy.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/09gd.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/10sz.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/11ms.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/12sh.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/13zx.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/14gd.jpg" width="130" height="52">
					</li>
	
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/15cq.jpg" width="130" height="52">
					</li>
					<li>
						<input name="pd_FrpId" type="radio" value="">
						<img src="${ctx}/staticfile/img/pay/16bh.jpg" width="130" height="52">
					</li>
				</ul>
			</dd>
			<div style="clear: both;"></div>
			<dd class="ok_dd">
				<input  type="submit" class="ok_pay" value="确认支付">
			</dd>
		</dl>
	</form>

</body>
</html>
