package org.wenrong.kongfu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.service.MemuService;

@Controller
@RequestMapping("/memu")
public class MemuController {

	@Autowired
	private MemuService service;
	
	/**
	 * 处理上传的菜单
	 * @param uploadImg
	 * @param request
	 * @param memuname
	 * @param memuprice
	 * @param categort_1
	 * @param categort_2
	 * @return
	 */
	@RequestMapping("/addMemu.action")
	public String addMemu(MultipartFile uploadImg,HttpServletRequest request,
			String memuname,String memuprice,String categort_1,String categort_2){
		//获取保存上传菜单图片的文件夹
		String savePath = request.getSession().getServletContext().getRealPath("/uploadMemuImgs");
		
		//service.addMemu(memu);
		System.out.println();
		return "";
		
	}
	
}
