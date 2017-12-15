package org.wenrong.kongfu.service.impl;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.UserMapper;
import org.wenrong.kongfu.pojo.ResultPojo;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.pojo.UserExample;
import org.wenrong.kongfu.pojo.UserExample.Criteria;
import org.wenrong.kongfu.service.UserService;
import org.wenrong.kongfu.utils.ArrayUtils;
import org.wenrong.kongfu.utils.CheckPhoneUtils;
import org.wenrong.kongfu.utils.MD5Utils;
import org.wenrong.kongfu.utils.UUIDUtils;

import com.sun.org.apache.bcel.internal.generic.NEW;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public Object login(User user) {

		UserExample example = new UserExample();
		Criteria createCriteria = example.createCriteria();
		
		createCriteria.andPasswordEqualTo(MD5Utils.md5(user.getPassword()));
		createCriteria.andPhoneEqualTo(user.getPhone());
		List<User> selectByExample = userMapper.selectByExample(example);
		
		if(null == user.getPassword()) {
			
			return new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_FAIL, "密码不能为空！");
			
		}
		
		if(selectByExample != null && selectByExample.size()==1) {
			
			User user2 = selectByExample.get(0);
			
			return user2;
		}else {
			
			return new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_FAIL, "用户名或密码错误！");
		}	
	}

	@Override
	public void saveUser(User user) {
	
		user.setId(UUIDUtils.getRandomStr());
		user.setPassword(MD5Utils.md5(user.getPassword()));
		userMapper.insert(user);

	}

	@Override
	public ResultPojo isPhoneAvailable(String phone) {

		//手机合法性检测
		ResultPojo pojo = null;
		boolean legal = CheckPhoneUtils.isPhoneLegal(phone);

		if (!legal) {

			pojo = new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_FAIL, "手机号格式不合法");

			return pojo;
		}

		//查询数据库
		UserExample example = new UserExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andPhoneEqualTo(phone);
		List<User> selectByExample = userMapper.selectByExample(example);

		if (selectByExample != null && selectByExample.size() == 1) {

			pojo = new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_SUCCESS, "手机号已注册");

		} else {

			pojo = new ResultPojo(ResultPojo.STATUS_SUCCESS, ResultPojo.RESULT_SUCCESS, "手机号可以使用");

		}

		return pojo;

	}

	@Override
	public ResultPojo updateUser(HttpServletRequest request) {

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String id = request.getParameter("id");
		String city = request.getParameter("city");
		String email = request.getParameter("email");
		
		String province =  request.getParameter("province");
		
		String[] interest = request.getParameterValues("interest");
		String[] tag = request.getParameterValues("tag");
		

		//更新用户
		User user = userMapper.selectByPrimaryKey(id);
		
		user.setBirthday(birthday);
		user.setCity(city);
		user.setEmail(email);
		user.setGender(gender);
		user.setId(id);
		user.setInterest(ArrayUtils.arr2Str(interest, ArrayUtils.SEPARATOR_WHIPPLE));
		user.setName(name);
		user.setProvince(province);
		user.setTag(ArrayUtils.arr2Str(tag, ArrayUtils.SEPARATOR_WHIPPLE));

		int result = userMapper.updateByPrimaryKey(user);
		
		try {
			if(result>=1){
				
				
				return new ResultPojo(ResultPojo.STATUS_SUCCESS,ResultPojo.RESULT_SUCCESS,"更新成功");
			}else {
				
				return new ResultPojo(ResultPojo.STATUS_SUCCESS,ResultPojo.RESULT_FAIL,"更新失败");
				
			}
			
		}catch (Exception e){
			
			return new ResultPojo(ResultPojo.STATUS_ERROR,ResultPojo.RESULT_FAIL,"服务器内部错误");
		}
	
	}

}
