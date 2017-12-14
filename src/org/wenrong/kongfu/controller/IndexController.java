package org.wenrong.kongfu.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.wenrong.kongfu.pojo.Category;
import org.wenrong.kongfu.service.CategoryService;

@Controller
public class IndexController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/index.action")
	public String getCategorys(ModelMap map) {
		
		
		Map<String, List<Category>> allCategory = categoryService.getAllCategory();
		
		map.put("hot", allCategory.get("热卖"));
		map.put("breakfast", allCategory.get("营养早餐"));
		map.put("dinner", allCategory.get("丰富主食"));
		map.put("tea", allCategory.get("轻松下午茶"));
		
		return "index.jsp";
	}
	
	
	
}
