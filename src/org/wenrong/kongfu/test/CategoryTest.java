package org.wenrong.kongfu.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.wenrong.kongfu.dao.CategoryMapper;
import org.wenrong.kongfu.pojo.Category;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class CategoryTest {

	@Autowired
	CategoryMapper categoryMapper;
	@Test
	public void test1() {
		
		Category category = new Category();
		category.setCategoryname("包点");
		category.setParantcategory("营养早餐");
		Integer categoryId = categoryMapper.getCategoryId(category);
		System.out.println(categoryMapper);
		
	}
	
}
