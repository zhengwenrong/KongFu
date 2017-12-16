package org.wenrong.kongfu.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Orders {
    private String id;

    private Double money;

    private Date ordertime;

    private String receiverinfo;

    private Integer paystatus;

    private String userId;

    private String linkman;

    private String phone;

    private List<Orderitem> items = new ArrayList<Orderitem>();
    
    public List<Orderitem> getItems() {
		return items;
	}

	public void setItems(List<Orderitem> items) {
		this.items = items;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public String getReceiverinfo() {
        return receiverinfo;
    }

    public void setReceiverinfo(String receiverinfo) {
        this.receiverinfo = receiverinfo == null ? null : receiverinfo.trim();
    }

    public Integer getPaystatus() {
        return paystatus;
    }

    public void setPaystatus(Integer paystatus) {
        this.paystatus = paystatus;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
}