package cn.tarena.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tarena.service.PayService;
import cn.tarena.tool.PaymentUtil;
import cn.tarena.tool.PropPayUtils;

@Controller
public class PayController {
	@Autowired
	private PayService payService;
	
	@RequestMapping("/topay.action")
	public String toPay(String orderId,Model model){
		model.addAttribute("orderId", orderId);
		return "pay";
	}
	@RequestMapping("/pay.action")
	public String Pay(@RequestParam("pd_FrpId")String pd,String orderId,Model model){
		//1、准备参数
		String p0_Cmd ="Buy";//业务类型
		//商户编号
		String p1_MerId=PropPayUtils.getProperty("p1_MerId");
		//订单id 此处模拟订单号为1112
		String p2_Order = orderId;
		//订单金额：
		//测试时使用
		String p3_Amt ="0.01";
		
		String p4_Cur = "CNY";//交易币种
		String p5_Pid ="";//商品名称
		String p6_Pcat="";//商品种类
		String p7_Pdesc="";//商品描述
		//回调的url地址
		String p8_Url=PropPayUtils.
				getProperty("responseURL");
		String p9_SAF = "";//收货地址
		String pa_MP = "";//商户扩展信息
		//支付通道
		String pd_FrpId=pd;
		String pr_NeedResponse="1";
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order,
				p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, 
				p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse,
				PropPayUtils.getProperty("keyValue"));
		//2、将准备好的参数保存到request作用域中
		model.addAttribute("p0_Cmd", p0_Cmd);
		model.addAttribute("p1_MerId", p1_MerId);
		model.addAttribute("p2_Order", p2_Order);
		model.addAttribute("p3_Amt", p3_Amt);
		model.addAttribute("p4_Cur", p4_Cur);
		model.addAttribute("p5_Pid", p5_Pid);
		model.addAttribute("p6_Pcat", p6_Pcat);
		model.addAttribute("p7_Pdesc", p7_Pdesc);
		model.addAttribute("p8_Url", p8_Url);
		model.addAttribute("p9_SAF", p9_SAF);
		model.addAttribute("pa_MP", pa_MP);
		model.addAttribute("pd_FrpId", pd_FrpId);
		model.addAttribute("pr_NeedResponse", pr_NeedResponse);
		model.addAttribute("hmac", hmac);
		//3、转发到confirm.jsp

		return "confirm";
	}
	@RequestMapping("CallBack.action")
	@ResponseBody
	public String CallBack(HttpServletResponse response,
			@RequestParam("p1_MerId")String p1,
			@RequestParam("r0_Cmd")String r0,
			@RequestParam("r1_Code")String r1,
			@RequestParam("r2_TrxId")String r2,
			@RequestParam("r3_Amt")String r3,
			@RequestParam("r4_Cur")String r4,
			@RequestParam("r5_Pid")String r5,
			@RequestParam("r6_Order")String r6,
			@RequestParam("r7_Uid")String r7,
			@RequestParam("r8_MP")String r8,
			@RequestParam("r9_BType")String r9,
			@RequestParam("rb_BankId")String rb,
			@RequestParam("ro_BankOrderId")String ro,
			@RequestParam("rp_PayDate")String rp,
			@RequestParam("rq_CardNo")String rq,
			@RequestParam("ru_Trxtime")String ru,
			@RequestParam("hmac")String hmac_p
			){
		//接收第三方支付平台传回的参数
		String p1_MerId = p1;
		String r0_Cmd = r0;
		String r1_Code =r1;
		//易宝支付平台上的交易的流水号
		String r2_TrxId= r2;
		String r3_Amt= r3;
		String r4_Cur = r4;
		String r5_Pid = r5;
		//订单id
		String r6_Order = r6;
		String r7_Uid = r7;
		String r8_MP = r8;
		//交易结果返回类型：1表示重定向 2表示点对点通讯
		String r9_BType = r9;
		String rb_BankId= rb;
		String ro_BankOrderId = ro;
		String rp_PayDate= rp;
		String rq_CardNo = rq;
		String ru_Trxtime = ru;
		String hmac = hmac_p;
		//验证数据是否被篡改
		boolean result=PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid, r8_MP, r9_BType, 
				PropPayUtils.getProperty("keyValue"));
		if(!result){//表示数据被篡改了
			System.out.println("数据被篡改了...");
		}else{//未被篡改
			//判断重定向过来的还是点对点通讯过来的
			if("1".equals(r9_BType)){
				//以下两行代码正式部署时要记得删除掉
				//创建业务层对象
				//OrderService os = BasicFactory.getFactory().getInstance(OrderService.class);
				//修改订单的支付状态
				//os.changePaystate(r6_Order,1);
				payService.changePaystate(r6_Order,1);
				//重定向过来的
				try {
					response.getWriter().write(
							"<h1 style='color:red;text-align:center'>" +
							"您的支付请求已被受理，支付结果需等待进一步的通知...</h1>");
				} catch (IOException e) {
					e.printStackTrace();
				}
				response.setHeader("Refresh", "3;url=/index.jsp");
				
				
			}else if("2".equals(r9_BType)&&"1".equals(r1_Code)){
				//点对点通知
				//创建业务层对象
				//OrderService os = BasicFactory.getFactory().getInstance(OrderService.class);
				//修改订单的支付状态
				//os.changePaystate(r6_Order,1);
				payService.changePaystate(r6_Order,1);	
				//响应给第三方支付平台success
				return "success";
			}
		}
		return "index";
	}
}
