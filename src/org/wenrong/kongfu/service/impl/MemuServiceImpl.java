package org.wenrong.kongfu.service.impl;

import java.util.List;

import org.apache.logging.log4j.core.helpers.UUIDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.MemuMapper;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.pojo.MemuExample;
import org.wenrong.kongfu.pojo.MemuExample.Criteria;
import org.wenrong.kongfu.service.MemuService;
import org.wenrong.kongfu.utils.UUIDUtils;

@Service
public class MemuServiceImpl implements MemuService{

	@Autowired
	private MemuMapper memuMapper;
	
	@Override
	public void addMemu(Memu memu) {
	
		memuMapper.insert(memu);
	
	}

	@Override
	public List<Memu> getAllMemuByCategoryId(Integer categoryId) {

		MemuExample example = new MemuExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andMemucategoryEqualTo(categoryId);
		List<Memu> selectByExample = memuMapper.selectByExample(example );
		
		
		return selectByExample;
	}

	@Override
	public Memu getMemuById(String id) {

		Memu memu = memuMapper.selectByPrimaryKey(id);
		
		
		
		return memu;
	}

	
	
	
}
