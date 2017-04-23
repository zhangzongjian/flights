package pers.flights.model;

public class Discount {
	
	private Integer id;//编号
	  
	private String discountType;//折扣类型
	  
	private Float discountRate;//折扣率
	  
	private String createTime;//创建时间
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getDiscountType() {
		 return discountType;
	}
	
	public void setDiscountType(String discountType) {
		 this.discountType = discountType;
	}
	
	public Float getDiscountRate() {
		 return discountRate;
	}
	
	public void setDiscountRate(Float discountRate) {
		 this.discountRate = discountRate;
	}
	
	public String getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(String createTime) {
		 this.createTime = createTime;
	}
	
}