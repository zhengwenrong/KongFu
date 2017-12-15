package org.wenrong.kongfu.service;

import java.util.List;

import org.wenrong.kongfu.pojo.Memu;

public interface MemuService {

	/**
	 * 插入菜单到数据库中
	 * @param memu
	 */
	public void addMemu(Memu memu);
	
	/**
	 * 通过分类的ID获取所有的菜单数据
	 * @param categoryId
	 * @return
	 */
	public List<Memu> getAllMemuByCategoryId(Integer categoryId);
	
	/**
	 * 通过MemuId获取Memu
	 * @param id
	 * @return
	 */
	public Memu getMemuById(String id);
	
}
