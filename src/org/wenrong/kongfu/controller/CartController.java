package org.wenrong.kongfu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wenrong.kongfu.pojo.Address;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.pojo.User;
import org.wenrong.kongfu.service.AddressService;
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
	
	@Autowired
	private AddressService addressAervice;
	
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
	public String toPayPage (ModelMap map,HttpServletRequest request) {
	
		User user = (User) request.getSession().getAttribute("user");
		List<Address> address = addressAervice.getUserAddressList(user.getId());
		
		
		map.put("addresss", address);
		
		return "clearing.jsp";

	}
	
	@RequestMapping("/reducememu.action")
	public String reduceMemu(HttpServletRequest request,String memuid){
		
		Map<Memu,Integer> cart = (Map<Memu, Integer>) request.getSession().getAttribute("cart");
		Double money = (Double) request.getSession().getAttribute("totalMomey");
		if(cart != null){
			
			Memu memu = new Memu();
			memu.setMemuid(memuid);
			
			Memu deleteMemu = null;
			
			for(Map.Entry<Memu, Integer> m : cart.entrySet()){
				
				if(memuid.equals(m.getKey().getMemuid())){
					
					Integer value = m.getValue();
					value--;
					
					if(value<=0){
						
						deleteMemu = m.getKey();
						
					
					}
					
					cart.put(m.getKey(), value);
				}
					
			}
			
			if(deleteMemu != null){
				
				cart.remove(deleteMemu);
			}
			
		}
		
		money = getTotleMoney(cart);
		request.getSession().setAttribute("totalMomey", money);

			
		return "pay.action";
	}
	
	
	@RequestMapping("/addmemu.action")
	public String addMemu(HttpServletRequest request,String memuid){
		
		Map<Memu,Integer> cart = (Map<Memu, Integer>) request.getSession().getAttribute("cart");
		Double money = (Double) request.getSession().getAttribute("totalMomey");
		if(cart != null){
			
			Memu memu = new Memu();
			memu.setMemuid(memuid);
			
			for(Map.Entry<Memu, Integer> m : cart.entrySet()){
				
				if(memuid.equals(m.getKey().getMemuid())){
					
					Integer value = m.getValue();
					value++;		
					cart.put(m.getKey(), value);
				}
					
			}		
			
		}
		
		money = getTotleMoney(cart);
		request.getSession().setAttribute("totalMomey", money);

			
		return "pay.action";
	}
	
	
	@RequestMapping("/deletememu.action")
	public String deleteMemu(HttpServletRequest request,String memuid){
		
		Map<Memu,Integer> cart = (Map<Memu, Integer>) request.getSession().getAttribute("cart");
		Double money = (Double) request.getSession().getAttribute("totalMomey");
		
		if(cart != null){
			
			Memu memu = new Memu();
			memu.setMemuid(memuid);
			
			cart.remove(memu);
			
		}
		money = getTotleMoney(cart);
		request.getSession().setAttribute("totalMomey", money);
			
		return "pay.action";
	}
	
}
