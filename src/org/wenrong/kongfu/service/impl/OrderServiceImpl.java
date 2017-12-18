package org.wenrong.kongfu.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.OrderitemMapper;
import org.wenrong.kongfu.dao.OrdersMapper;
import org.wenrong.kongfu.pojo.Address;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.pojo.Orderitem;
import org.wenrong.kongfu.pojo.OrderitemExample;
import org.wenrong.kongfu.pojo.Orders;
import org.wenrong.kongfu.pojo.OrdersExample;
import org.wenrong.kongfu.pojo.OrdersExample.Criteria;
import org.wenrong.kongfu.service.AddressService;
import org.wenrong.kongfu.service.MemuService;
import org.wenrong.kongfu.service.OrderService;
import org.wenrong.kongfu.utils.UUIDUtils;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private AddressService addressService;
	
	@Autowired
	private MemuService memuService;
	
	@Autowired
	private OrdersMapper orderMapper;
	
	@Autowired
	private OrderitemMapper orderItemsMapper;
	
	@Override
	public void saveOrder(String addressid, Map<Memu, Integer> cart,String userId) {
		
		Address address = addressService.getAddressById(addressid);
		
		Orders order = new Orders();
		String orderId = UUIDUtils.getRandomStr();
		order.setId(orderId);
		order.setLinkman(address.getLinkman());
		order.setMoney(getTotleMoney(cart));
		order.setPaystatus(0);
		order.setPhone(address.getPhone());
		order.setUserId(userId);
		order.setReceiverinfo(address.getCity()+address.getPlot()+address.getAddress());
		order.setOrdertime(new Date());
		
		orderMapper.insert(order);
		
		
		//插入订单项
		for(Map.Entry<Memu, Integer> item:cart.entrySet()) {
			
			Orderitem i = new Orderitem();
			
			i.setOrderId(orderId);
			i.setBuynum(item.getValue());
			i.setMemuId(item.getKey().getMemuid());
			orderItemsMapper.insert(i);
			
		}
		
	}

	public Double getTotleMoney (Map<Memu,Integer> cart) {
		
		Double money = new Double(0);
		
		for(Map.Entry<Memu, Integer> m : cart.entrySet()) {
			
			double d = m.getKey().getMemuprice()*m.getValue();
			money += d;
		}
		
		
		return money;
	}

	@Override
	public List<Orders> getOrdersById(String userid) {
		
		OrdersExample example = new OrdersExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUserIdEqualTo(userid);
		
		//用户所有的订单
		List<Orders> selectByExample = orderMapper.selectByExample(example );
		
		//获取订单项
		for(Orders o : selectByExample) {
			
			OrderitemExample orderExample = new OrderitemExample();
			org.wenrong.kongfu.pojo.OrderitemExample.Criteria createCriteria2 = orderExample.createCriteria();
						
			createCriteria2.andOrderIdEqualTo(o.getId());
			
			List<Orderitem> selectByExample2 = orderItemsMapper.selectByExample(orderExample );
			
			for(Orderitem item:selectByExample2) {
				
				item.setMemu(memuService.getMemuById(item.getMemuId()));	
				o.getItems().add(item);
			}
					
		}
		
		
		return selectByExample;
	}
	
	
}
