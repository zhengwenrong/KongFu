package org.wenrong.kongfu.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.wenrong.kongfu.pojo.Category;
import org.wenrong.kongfu.service.CategoryService;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@ResponseBody
	@RequestMapping(value="/getAllCategory.action",produces="text/html;charset=UTF-8;")
	public String getAllCategory() {
		
		Map<String, List<Category>> allCategory = categoryService.getAllCategory();
	
		return JSON.toJSONString(allCategory);
	}
	
	
}
