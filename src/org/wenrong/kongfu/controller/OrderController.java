package org.wenrong.kongfu.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.service.OrderService;

@Controller
public class OrderController {


	@Autowired
	private OrderService service;
	
	@RequestMapping("/commitOrder.action")
	public String commitOrder(HttpServletRequest request,String addressId) {
		User user = (User) request.getSession().getAttribute("user");
		Map<Memu,Integer> cart = (Map<Memu, Integer>) request.getSession().getAttribute("cart");
		
		
		service.saveOrder(addressId, cart, user.getId());
		
		return "redirect:ordercenter.action";
	}
	
}
