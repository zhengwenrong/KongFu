package org.wenrong.kongfu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public Map<String,List<Category>> getAllCategory(){
		
		Map<String,List<Category>> map = new HashMap<String,List<Category>>();
		
		List<Category> list1 = categoryMapper.getCategoryByParentCategory("热卖");
		List<Category> list2 = categoryMapper.getCategoryByParentCategory("营养早餐");
		List<Category> list3 = categoryMapper.getCategoryByParentCategory("丰富主食");
		List<Category> list4 = categoryMapper.getCategoryByParentCategory("轻松下午茶");
		
		map.put("热卖", list1);
		map.put("营养早餐", list2);
		map.put("丰富主食", list3);
		map.put("轻松下午茶", list4);
		return map;
	}
	
}
