package org.wenrong.kongfu.service;

import org.wenrong.kongfu.pojo.Category;

public interface CategoryService {

	/**
	 * 通过categroy的名称获取ID
	 * @param category
	 * @return
	 */
	public Integer getCategoryId(Category category);
	
}
