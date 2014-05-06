package com.gtafe.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeutil {
	public static final String FULL_YMD_HMS_NOSPACE = "yyyyMMddHHmmss";

	public static final String FULL_YMD_HMS = "yyyy-MM-dd HH:mm:ss";

	public static final String FULL_YMD_HM = "yyyy-MM-dd HH:mm";

	public static final String FULL_YMD = "yyyy-MM-dd";
	public static final String FULL_HMS = "HH:mm:ss";
	
	public static String Dateformate(Date d ,String pattern){
		SimpleDateFormat sd = new SimpleDateFormat(pattern);
		return sd.format(d);
	}
}
