package org.wenrong.kongfu.pojo;

public class Memu {
    private String memuid;

    private String memuname;

    private Double memuprice;

    private String memuimageurl;

    /**
     * 外键 Category表的Id列
     */
    private Integer memucategory;
    
    private Category category;
 
    public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getMemuid() {
        return memuid;
    }

    public void setMemuid(String memuid) {
        this.memuid = memuid == null ? null : memuid.trim();
    }

    public String getMemuname() {
        return memuname;
    }

    public void setMemuname(String memuname) {
        this.memuname = memuname == null ? null : memuname.trim();
    }

    public Double getMemuprice() {
        return memuprice;
    }

    public void setMemuprice(Double memuprice) {
        this.memuprice = memuprice;
    }

    public String getMemuimageurl() {
        return memuimageurl;
    }

    public void setMemuimageurl(String memuimageurl) {
        this.memuimageurl = memuimageurl == null ? null : memuimageurl.trim();
    }

    public Integer getMemucategory() {
        return memucategory;
    }

    public void setMemucategory(Integer memucategory) {
        this.memucategory = memucategory;
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memuid == null) ? 0 : memuid.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Memu other = (Memu) obj;
		if (memuid == null) {
			if (other.memuid != null)
				return false;
		} else if (!memuid.equals(other.memuid))
			return false;
		return true;
	}
    
    
}