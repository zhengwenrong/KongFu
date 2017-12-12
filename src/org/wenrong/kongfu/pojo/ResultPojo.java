package org.wenrong.kongfu.pojo;

/**
 * 请求结果返回类
 * @author admin
 *
 */
public class ResultPojo {

	public static final Integer STATUS_SUCCESS = 200;
	public static final Integer STATUS_ERROR = 500;
	public static final String RESULT_SUCCESS = "success";
	public static final String RESULT_FAIL = "fail";
	
	
	private String message;
	private Integer status;
	private String result;
	public ResultPojo(Integer status, String result,String message) {
		super();
		this.status = status;
		this.result = result;
		this.message = message;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public ResultPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "ResultPojo [message=" + message + ", status=" + status + ", result=" + result + "]";
	}
	
	
	
	
}
