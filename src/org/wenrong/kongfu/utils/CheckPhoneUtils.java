package org.wenrong.kongfu.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CheckPhoneUtils {

	/**
	 * 检测手机是否合法
	 * @param telNum
	 * @return
	 */
	public static boolean isPhoneLegal(String telNum) {
		String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";  
        Pattern p = Pattern.compile(regExp);  
        Matcher m = p.matcher(telNum);  
        return m.matches();   
	}
	
}
