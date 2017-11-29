package cn.tarena.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellRangeAddress;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.pojo.Yundan;
import cn.tarena.service.YundanService;

@Controller
public class YundanController extends BaseController {
	@Autowired
	private YundanService yundanService;
	
	@RequestMapping("/yundanSelect")
	public String findOne(String dh,Model model){
		
		Yundan yundan= yundanService.finone(dh);
		model.addAttribute("yundan",yundan);
		
		return "yundanq";
		
	}
	@RequestMapping("/YundanList")
	public String findAll(Model model){
		
		List<Yundan> list= yundanService.findAll();
		model.addAttribute("list",list);
		
		return "admin/yundan/list";
		
	}
	//删除订单
	@RequestMapping("/DelYundan")
	public String delYun(Integer id){
		yundanService.delete(id);
		return "redirect:/YundanList";
	}
	//修改订单
	@RequestMapping("/modYundan")
	public String modYun(String danHao,Model model){
		Yundan yundan= yundanService.finone(danHao);
		model.addAttribute("yundan",yundan);
		return "/admin/yundan/modYundan";
	}
	@RequestMapping("/updateYundan")
	public String updateYundan(Yundan yundan){
		yundanService.toupdate(yundan);
		return "redirect:/YundanList";
	}

	@RequestMapping("/SelectYundan")
	public String findYundan(String queryDanhao,Model model){
		
		Yundan yundan= yundanService.finone(queryDanhao);
		if(yundan==null){
			return "redirect:/YundanList";
		}
		model.addAttribute("yundan",yundan);
		return "admin/yundan/list2";
		
	}
	//用户下单
	@RequestMapping("/AddYundan")
	public String AddYundan(Yundan yundan,Model model){
		
		yundanService.addYundan(yundan);
		
		Yundan myyudan= yundanService.findOneByname(yundan);
	model.addAttribute("myyudan",myyudan);
		return "mydanpay";
		
	}
	
	@RequestMapping("/MyYundan")
	public String MyYundanq(Model model,String userName){
		
		if(userName==null&&userName.equals("")){
			model.addAttribute("msg","请您先登录在查看订单");
			return "beforelogin";
		}
		List<Yundan> list1 =yundanService.findAllYundan(userName);
	model.addAttribute("listYundan",list1);
		return "yundan1";
	}

	/**************************/
	
	@RequestMapping("/printExcle")
	public String print(Model model){
		List<Yundan> dataList=yundanService.findAll();
		
		Workbook wb=new HSSFWorkbook();
        Sheet sheet = wb.createSheet();
        Row nRow=null;
        Cell nCell=null;

        //行号
        int  rowNo=0;
        //列号
        int colNo=1;

        //声明样式对象和字体对象
        CellStyle nStyle=wb.createCellStyle();
        Font font = wb.createFont();

        //列宽
        sheet.setColumnWidth(0,2*300);
        sheet.setColumnWidth(1,26*300);
        sheet.setColumnWidth(2,12*300);
        sheet.setColumnWidth(3,29*300);
        sheet.setColumnWidth(4,10*300);
        sheet.setColumnWidth(5,12*300);
        sheet.setColumnWidth(6,8*300);
        sheet.setColumnWidth(7,10*300);
        
        



        //大标题，合并单元格
        sheet.addMergedRegion(new CellRangeAddress(0,0,1,9));  //开始行，结束行，开始列，结束列
        //合并单元格的内容写在合并前第一个单元格中
        nRow=sheet.createRow(rowNo++);

        nRow.setHeightInPoints(36);

        nCell=nRow.createCell(1);
        nCell.setCellValue("运单详细信息表表");
        nCell.setCellStyle(bigTitle(wb, nStyle, font));
        
        String[] title=new String[]{"运单号","出发地址","目的地址","时间",
        		"发货人","运输状态","收货人"};

        nRow=sheet.createRow(rowNo++);
        nRow.setHeightInPoints(26.25f);

        //初始化
        nStyle=wb.createCellStyle();
        font=wb.createFont();

        for(int  i=0;i<title.length;i++){
            nCell=nRow.createCell(i+1);
            nCell.setCellValue(title[i]);
            nCell.setCellStyle(this.Title(wb, nStyle, font));

        }
        
      //初始化
        nStyle=wb.createCellStyle();
        font=wb.createFont();

        //换行
        for(int j=0;j<dataList.size();j++){
            Yundan op=dataList.get(j);
            colNo=1;

            nRow=sheet.createRow(rowNo++);

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getDanHao());
            nCell.setCellStyle(this.Text(wb, nStyle, font));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getChuFadi());
            nCell.setCellStyle(this.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getMuDidi());
            nCell.setCellStyle(this.Text(wb, nStyle, font));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getDate());
            nCell.setCellStyle(this.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getFaHuoRen());
            nCell.setCellStyle(this.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getState());
            nCell.setCellStyle(this.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(op.getShouhuoren());
            nCell.setCellStyle(this.Text(wb, nStyle, font));
            
        }
        
        OutputStream os=null;
        
		try {
			os = new FileOutputStream(new File("D:\\outProduct.xls"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			wb.write(os);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			os.flush();
			os.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      
      model.addAttribute("msg","打印成功，存放目录：D:\\outProduct.xls");
       /* DownloadUtil dUtil=new DownloadUtil();
        ByteArrayOutputStream os=new ByteArrayOutputStream();
        wb.write(os);
        dUtil.download(os, response, "出货表.xls");*/
        return "yundan1";
        
	}
	
	//大标题的样式
	public CellStyle bigTitle(Workbook wb,CellStyle nStyle,Font font){
        font.setFontName("宋体");
        font.setFontHeightInPoints((short) 16); 
        //字体加粗
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        //横向居中
        nStyle.setAlignment(CellStyle.ALIGN_CENTER);
        //纵向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);     //单元格垂直居中

        nStyle.setFont(font);
        return nStyle;
    }
	 //标题样式
    public CellStyle Title(Workbook wb,CellStyle nStyle,Font font){
        font.setFontName("黑体");
        font.setFontHeightInPoints((short) 12); 

        //横向居中
        nStyle.setAlignment(CellStyle.ALIGN_CENTER);
        //纵向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);     //单元格垂直居中

        //表格线
        nStyle.setBorderTop(CellStyle.BORDER_THICK);            //粗实线
        nStyle.setBorderBottom(CellStyle.BORDER_THIN);          //实线
        nStyle.setBorderLeft(CellStyle.BORDER_THIN);            
        nStyle.setBorderRight(CellStyle.BORDER_THIN);           

        nStyle.setFont(font);
        return nStyle;
    }
    
  //文字样式
    public CellStyle Text(Workbook wb,CellStyle nStyle,Font font){
        font.setFontName("Times New Roman");
        font.setFontHeightInPoints((short) 10); 

        //横向居中
        nStyle.setAlignment(CellStyle.ALIGN_CENTER);
        //纵向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);     //单元格垂直居中

        //表格线

        nStyle.setBorderBottom(CellStyle.BORDER_THIN);          //实线
        nStyle.setBorderLeft(CellStyle.BORDER_THIN);            
        nStyle.setBorderRight(CellStyle.BORDER_THIN);           //实线

        nStyle.setFont(font);
        return nStyle;
    }
	
	
}
