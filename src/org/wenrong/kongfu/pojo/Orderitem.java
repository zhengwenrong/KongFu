package org.wenrong.kongfu.pojo;

public class Orderitem {
    private String orderId;

    private String memuId;

    private Integer buynum;

    private Memu memu;
     
    public Memu getMemu() {
		return memu;
	}

	public void setMemu(Memu memu) {
		this.memu = memu;
	}

	public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public String getMemuId() {
        return memuId;
    }

    public void setMemuId(String memuId) {
        this.memuId = memuId == null ? null : memuId.trim();
    }

    public Integer getBuynum() {
        return buynum;
    }

    public void setBuynum(Integer buynum) {
        this.buynum = buynum;
    }
}