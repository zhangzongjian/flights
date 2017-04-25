package pers.flights.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeUtil {
	
	private static SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd HH:mm");
	
	/**
	 * 日期对象转指定默认格式的字符串
	 * 格式：yyyy-MM-dd HH:mm
	 * @param date
	 * @return
	 */
	public static String toString(Date date) {
		 return formatter.format(date); 
	}
	
	/**
	 * 日期对象转指指定格式的字符串
	 * 格式：yyyy-MM-dd HH:mm
	 * @param date
	 * @return
	 */
	public static String toString(Date date, String pattern) {
		SimpleDateFormat formatter = new SimpleDateFormat (pattern);
		return formatter.format(date); 
	}
	
	/**
	 * 默认格式的字符串转日期对象
	 * 格式：yyyy-MM-dd HH:mm
	 * @param date 日期格式的字符串
	 * @return
	 */
	public static Date toDate(String date) {
		try {
			return formatter.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 *指定格式的字符串转日期对象
	 * 格式：yyyy-MM-dd HH:mm
	 * @param date 日期格式的字符串
	 * @return
	 */
	public static Date toDate(String date, String pattern) {
		try {
			SimpleDateFormat formatter = new SimpleDateFormat (pattern);
			return formatter.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
