package org.wenrong.kongfu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.AddressMapper;
import org.wenrong.kongfu.pojo.Address;
import org.wenrong.kongfu.pojo.AddressExample;
import org.wenrong.kongfu.pojo.AddressExample.Criteria;
import org.wenrong.kongfu.service.AddressService;
import org.wenrong.kongfu.utils.UUIDUtils;

@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressMapper mapper;
	
	@Override
	public void saveAddressService(Address address) {
		address.setAddressid(UUIDUtils.getRandomStr());
		mapper.insert(address);
		
	}

	@Override
	public List<Address> getUserAddressList(String userId) {
		
		AddressExample example = new AddressExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUseridEqualTo(userId);
		List<Address> selectByExample = mapper.selectByExample(example );
		
		
		return selectByExample;
	}

	
	
}
