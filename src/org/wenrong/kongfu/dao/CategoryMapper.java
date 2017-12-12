package org.wenrong.kongfu.dao;

import org.wenrong.kongfu.pojo.Category;

public interface CategoryMapper {

	/**
	 * 查询菜单的ID
	 * @param category
	 * @return
	 */
	public Integer getCategoryId(Category category);
	
}
