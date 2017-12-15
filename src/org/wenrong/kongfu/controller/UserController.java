package org.wenrong.kongfu.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.client.utils.URLEncodedUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.wenrong.kongfu.pojo.ResultPojo;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.service.UserService;
import org.wenrong.kongfu.utils.ArrayUtils;
import org.wenrong.kongfu.utils.CheckPhoneUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.action",produces="text/html;charset=UTF-8;")
	@ResponseBody
	public String login(HttpServletRequest request) {

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		if("".equals(password) || null == password){
			
			return JSON.toJSONString(new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_SUCCESS, "密码不能为空!"));
			
		}
		
		User user = new User();
		user.setPhone(phone);
		user.setPassword(password);
		Object login = userService.login(user);
		
		if(login instanceof User) {
			
			HttpSession session = request.getSession();
			session.setAttribute("user", login);	
		
			login = new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_SUCCESS, "登陆成功!");
		}
		
		return JSON.toJSONString(login);
	}
	
	@RequestMapping(value="/register.action",produces="text/html;charset=UTF-8;")
	@ResponseBody
	public String register(String phone,String password) {
		
		User user = new User();
		user.setPhone(phone);
		user.setPassword(password);
		
		ResultPojo phoneAvailable = userService.isPhoneAvailable(user.getPhone()); 
			
		if("手机号格式不合法".equals(phoneAvailable.getMessage())
				||"手机号已注册".equals(phoneAvailable.getMessage())) {
			
			return JSON.toJSONString(phoneAvailable);
			
		}
		
		if("".equals(password)||null == password){
			
			return JSON.toJSONString(new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_SUCCESS,"密码不能为空！"));
			
		}
	
		try {			
			userService.saveUser(user);
			return JSON.toJSONString(new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_SUCCESS,"注册成功"));			
		}catch (Exception e) {
			e.printStackTrace();
			return JSON.toJSONString(new ResultPojo(ResultPojo.STATUS_ERROR,ResultPojo.RESULT_FAIL,"注册失败"));
		}
	}
	
	
	@RequestMapping(value="/check.action",produces="text/html;charset=UTF-8;")
	@ResponseBody
	public String checkPhone(@RequestBody String params) {
		
		JSONObject jSONObject = JSON.parseObject(params);
		
		String phone = (String) jSONObject.get("phone");
		
		ResultPojo phoneAvailable = userService.isPhoneAvailable(phone);
		
		
		return JSON.toJSONString(phoneAvailable);
	}
	
	@ResponseBody
	@RequestMapping(value="/updateUser.action",produces="text/html;charset=UTF-8;")
	public String updateUser(HttpServletRequest request) throws UnsupportedEncodingException {
		
		ResultPojo updateUser = userService.updateUser(request);
	
		return JSON.toJSONString(updateUser);
	}
	
	@RequestMapping("/logout.action")
	public String loginOut(HttpServletRequest request) {
		
		request.getSession().removeAttribute("user");
		
		return "redirect:../index.action";
	}
	
}
