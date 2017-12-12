package org.wenrong.kongfu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.UserMapper;
import org.wenrong.kongfu.pojo.ResultPojo;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.pojo.UserExample;
import org.wenrong.kongfu.pojo.UserExample.Criteria;
import org.wenrong.kongfu.service.UserService;
import org.wenrong.kongfu.utils.CheckPhoneUtils;
import org.wenrong.kongfu.utils.MD5Utils;
import org.wenrong.kongfu.utils.UUIDUtils;

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
		
		if(selectByExample != null && selectByExample.size()==1) {
			
			User user2 = selectByExample.get(0);
			user2.setPassword(null);
			return user2;
		}else {
			
			return new ResultPojo(ResultPojo.STATUS_ERROR,ResultPojo.RESULT_FAIL,"用户名或密码错误");
			
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

}
