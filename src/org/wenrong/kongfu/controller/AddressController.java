package org.wenrong.kongfu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wenrong.kongfu.pojo.Address;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.service.AddressService;

@Controller
public class AddressController {

	@Autowired
	private AddressService service;
	
	@RequestMapping("/saveaddress.action")
	public String saveAddress(Address address,HttpServletRequest request){
		
		User user = (User) request.getSession().getAttribute("user");
		
		address.setUserid(user.getId());
		
		service.saveAddressService(address);
	
		return "pay.action";
		
	}
	
}
