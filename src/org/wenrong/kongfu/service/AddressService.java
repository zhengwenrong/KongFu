package org.wenrong.kongfu.service;

import java.util.List;

import org.wenrong.kongfu.pojo.Address;

public interface AddressService {

	/**
	 * 保存地址到数据库
	 * @param address
	 */
	public void saveAddressService(Address address);
	
	/**
	 * 获取用户所有的地址
	 */
	public List<Address> getUserAddressList(String userId);
	
	/**
	 * 通过地址id获取地址
	 * @param id
	 * @return
	 */
	public Address getAddressById(String id);
	
}
