package org.wenrong.kongfu.service;

import javax.servlet.http.HttpServletRequest;

import org.wenrong.kongfu.pojo.ResultPojo;
import org.wenrong.kongfu.pojo.User;

public interface UserService {

	/**
	 * 用户登陆
	 */
	public Object login(User user);
	
	/**
	 * 用户注册
	 * @param user
	 */
	public void saveUser(User user);
	
	/**
	 * 判断当前手机号是否可用
	 * @param phone
	 * @return 
	 */
	public ResultPojo isPhoneAvailable(String phone);
	
	/**
	 * 更新用户
	 * @return
	 */
	public ResultPojo updateUser(HttpServletRequest request);
	
}
