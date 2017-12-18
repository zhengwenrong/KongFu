package org.wenrong.kongfu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wenrong.kongfu.pojo.Orders;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.service.OrderService;

@Controller
public class PageController {

	@RequestMapping("/helpcenter.action")
	public String toHelpCenter(ModelMap map) {
	
		map.put("currentPage", "helpcenter");
	
		return "helpCenter.jsp";
	}
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/ordercenter.action")
	public String toOrderCenter(HttpServletRequest request,ModelMap map) {
		map.put("currentPage", "ordercenter");
		
		User user = (User) request.getSession().getAttribute("user");
		
		List<Orders> ordersById = orderService.getOrdersById(user.getId());
		
		map.put("orders", ordersById);
				
		return "orderSelect.jsp";
	}
	
	@RequestMapping("/vipcenter.action")
	public String toVipCenter(ModelMap map) {
		map.put("currentPage", "vipcenter");	
		return "VIPcenter.jsp";
	}
	
	
}
