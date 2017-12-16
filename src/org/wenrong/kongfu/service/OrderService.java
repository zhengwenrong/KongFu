package org.wenrong.kongfu.service;

import java.util.List;
import java.util.Map;

import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.pojo.Orders;

public interface OrderService {

	/**
	 * 保存订单
	 */
	public void saveOrder(String addressid,Map<Memu,Integer> cart,String userId);
	
	/**
	 * 获取订单列表
	 * @param userid
	 */
	public List<Orders> getOrdersById(String userid);
	
}
