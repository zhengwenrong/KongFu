package org.wenrong.kongfu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.MemuMapper;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.service.MemuService;

@Service
public class MemuServiceImpl implements MemuService{

	@Autowired
	private MemuMapper memuMapper;
	
	@Override
	public void addMemu(Memu memu) {
		
		memuMapper.insert(memu);
		
		
	}

	
	
	
}
