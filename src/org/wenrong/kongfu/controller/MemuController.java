package org.wenrong.kongfu.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.wenrong.kongfu.pojo.Category;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.service.CategoryService;
import org.wenrong.kongfu.service.MemuService;
import org.wenrong.kongfu.utils.UUIDUtils;

@Controller
@RequestMapping("/memu")
public class MemuController {

	@Autowired
	private MemuService memuService;
	
	@Autowired
	private CategoryService categoryService;
	
	/**
	 * 处理上传的菜单
	 * @param uploadImg
	 * @param request
	 * @param memuname
	 * @param memuprice
	 * @param categort_1
	 * @param categort_2
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("/addMemu.action")
	public String addMemu(MultipartFile memuImg,HttpServletRequest request,
			String memuName,String memuPrice,String categort_1,String categort_2) throws Exception, IOException{
	
		Category category = new Category();
		category.setParantcategory(categort_1);
		category.setCategoryname(categort_2);
		
		Integer categoryId = categoryService.getCategoryId(category);
		
		//获取保存上传菜单图片的文件夹
		String savePath = request.getSession().getServletContext().getRealPath("/uploadMemuImg");
			
		String originalFilename = memuImg.getOriginalFilename();
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String fileName = UUIDUtils.getRandomStr()+ext;
		File file = new File(savePath,fileName);
		memuImg.transferTo(file);
		
		Memu memu = new Memu();
		
		memu.setMemucategory(categoryId);
		memu.setMemuimageurl("uploadMemuImg/"+fileName);
		
		memu.setMemuid(UUIDUtils.getRandomStr());
		memu.setMemuname(memuName);
		memu.setMemuprice(Double.parseDouble(memuPrice));
		memuService.addMemu(memu);
		System.out.println();
		return "redirect:../addMemu.html";
		
	}
	
}
