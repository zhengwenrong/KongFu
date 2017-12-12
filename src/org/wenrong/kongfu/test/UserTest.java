package org.wenrong.kongfu.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.wenrong.kongfu.pojo.ResultPojo;
import org.wenrong.kongfu.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class UserTest {
	@Autowired
	private UserService userService;
	
	@Test
	public void test() {
		
		ResultPojo phoneAvailable = userService.isPhoneAvailable("15018159367");
		System.out.println("----------------------》"+phoneAvailable);
	}
	
	
}
