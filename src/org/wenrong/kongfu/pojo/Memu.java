package org.wenrong.kongfu.pojo;

public class Memu {

	private String memuId;
	private String memuName;
	private Double memuPrice;
	private String memuImageUrl;
	private String categoryId;
	
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getMemuId() {
		return memuId;
	}
	public void setMemuId(String memuId) {
		this.memuId = memuId;
	}
	public String getMemuName() {
		return memuName;
	}
	public void setMemuName(String memuName) {
		this.memuName = memuName;
	}
	
	public Double getMemuPrice() {
		return memuPrice;
	}
	public void setMemuPrice(Double memuPrice) {
		this.memuPrice = memuPrice;
	}
	public String getMemuImageUrl() {
		return memuImageUrl;
	}
	public void setMemuImageUrl(String memuImageUrl) {
		this.memuImageUrl = memuImageUrl;
	}
	
	
	
	
}
