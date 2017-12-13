package org.wenrong.kongfu.utils;
/**
 * 数组工具类
 * @author Administrator
 *
 */
public class ArrayUtils {

	public static final String SEPARATOR_WHIPPLE = "-";
	public static final String SEPARATOR_STAR = "*";
	public static final String SEPARATOR_BACKSLASH = "/";
	public static final String SEPARATOR_SLASH = "\\";
	
	
	
	/**
	 * 将字符数组转换为数组
	 * @param arr  要操作的数组
	 * @param grep 连接符
	 * @return
	 */
	public static String arr2Str(String[] arr,String grep){
		
		StringBuffer buffer = new StringBuffer();
		for(int i = 0;i<arr.length;i++){
			
			if(i==arr.length-1){
				//最后一个
				buffer.append(arr[i]);
				
			}else {
				
				buffer.append(arr[i]);
				buffer.append(grep);
			}
			
			
		}		
		
		return buffer.toString();	
	}
	
	public static void main(String[] args) {
		
		String[] arr = {"asfd","sdfa","rty","yt","gh"};
		
		String arr2Str = arr2Str(arr, "-");
		System.out.println(arr2Str);
	}
	
}
