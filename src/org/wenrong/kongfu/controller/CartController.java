package org.wenrong.kongfu.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.service.MemuService;

/**
 * 处理购物车业务
 * @author Administrator
 *
 */
@Controller
public class CartController {

	@Autowired
	private MemuService memuService;
	
	@RequestMapping("/addMemuToCart.action")
	public String add2Cart(HttpServletRequest request,String memuid,String categoryId) {
		
		Map<Memu,Integer> cart = (Map<Memu, Integer>) request.getSession().getAttribute("cart");
		Double money = (Double) request.getSession().getAttribute("totalMomey");
		
		if(money == null) {
			//初始化购物车金额
			money = new Double(0);
			
		}
		
		Memu memu = new Memu();
		memu.setMemuid(memuid);

		if(cart == null) {
			
			cart = new HashMap<Memu,Integer>();
	
		}
				
		if(cart.containsKey(memu)) {
			
			Integer integer = cart.get(memu);
			integer = integer + 1;
			cart.put(memu, integer);
			
		}else {
			
			memu = memuService.getMemuById(memuid);
			
			cart.put(memu, 1);
			
		}
		money = getTotleMoney(cart);
		request.getSession().setAttribute("cart", cart);
		request.getSession().setAttribute("totalMomey", money);
		return "listProduct.action";
	}
		
	public Double getTotleMoney (Map<Memu,Integer> cart) {
		
		Double money = new Double(0);
		
		for(Map.Entry<Memu, Integer> m : cart.entrySet()) {
			
			double d = m.getKey().getMemuprice()*m.getValue();
			money += d;
		}
		
		
		return money;
	}
	
	@RequestMapping("/pay.action")
	public String toPayPage (HttpServletRequest request) {
		
		Object attribute = request.getSession().getAttribute("user");
		
		if(attribute == null) {
			
			return "login.html";
			
		}
		
		return "clearing.jsp";
	}
	
	
}
