package org.wenrong.kongfu.dao;

import java.util.List;

import org.wenrong.kongfu.pojo.Category;

public interface CategoryMapper {

	/**
	 * 查询菜单的ID
	 * @param category
	 * @return
	 */
	public Integer getCategoryId(Category category);
	
	/**
	 * 
	 * @param parentCategory
	 * @return
	 */
	public List<Category> getCategoryByParentCategory(String parentCategory);
	
}
