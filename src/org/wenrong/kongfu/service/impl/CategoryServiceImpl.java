package org.wenrong.kongfu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.kongfu.dao.CategoryMapper;
import org.wenrong.kongfu.pojo.Category;
import org.wenrong.kongfu.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public Integer getCategoryId(Category category) {
		// TODO Auto-generated method stub
		return categoryMapper.getCategoryId(category);
	}

	
	
}
