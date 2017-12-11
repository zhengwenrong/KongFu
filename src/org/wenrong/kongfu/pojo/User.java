package org.wenrong.kongfu.pojo;
/**
 * 用户数据封装
 * @author Administrator
 *
 */
public class User {

	private String phone;//手机即用户账号
	private String id;//用户ID
	private String password;//用户密码
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
