package org.wenrong.kongfu.service;

import java.util.List;
import java.util.Map;

import org.wenrong.kongfu.pojo.Category;

public interface CategoryService {

	/**
	 * 通过categroy的名称获取ID
	 * @param category
	 * @return
	 */
	public Integer getCategoryId(Category category);
	
	/**
	 * 获取所有的分类
	 * @return
	 */
	public Map<String,List<Category>> getAllCategory();
	
}
