package org.wenrong.kongfu.test;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.wenrong.kongfu.dao.CategoryMapper;
import org.wenrong.kongfu.pojo.Category;
import org.wenrong.kongfu.service.CategoryService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class CategoryTest {

	@Autowired
	CategoryMapper categoryMapper;
	
	@Autowired
	CategoryService service;
	
	@Test
	public void test1() {
		
		Category category = new Category();
		category.setCategoryname("包点");
		category.setParantcategory("营养早餐");
		Integer categoryId = categoryMapper.getCategoryId(category);
		System.out.println(categoryMapper);
		
	}
	
	@Test
	public void test2() {
		
		Map<String, List<Category>> allCategory = service.getAllCategory();
		
		
		System.out.println();
		
	}
	
}
