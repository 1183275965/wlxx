package cn.tarena.tool;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DanHaoUtiles {
	public static String getHao() {
		String key="";
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		key = "BH"+formatter.format(d);
		return key;
	}

}
