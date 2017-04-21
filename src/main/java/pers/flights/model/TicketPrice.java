package pers.flights.model;


public class TicketPrice {
	
	private Integer id;//编号
	  
	private String classType;//舱位类型
	  
	private String classAmount;//舱位数量
	  
	private Float price;//价格
	  
	private Integer flightId;//航班编号
	  
	private Integer discountId;//折扣类型
	  
	private Float dprice;//优惠价
	  
	private String createTime;//创建时间
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getClassType() {
		 return classType;
	}
	
	public void setClassType(String classType) {
		 this.classType = classType;
	}
	
	public String getClassAmount() {
		 return classAmount;
	}
	
	public void setClassAmount(String classAmount) {
		 this.classAmount = classAmount;
	}
	
	public Float getPrice() {
		 return price;
	}
	
	public void setPrice(Float price) {
		 this.price = price;
	}
	
	public Integer getFlightId() {
		 return flightId;
	}
	
	public void setFlightId(Integer flightId) {
		 this.flightId = flightId;
	}
	
	public Integer getDiscountId() {
		 return discountId;
	}
	
	public void setDiscountId(Integer discountId) {
		 this.discountId = discountId;
	}
	
	public Float getDprice() {
		 return dprice;
	}
	
	public void setDprice(Float dprice) {
		 this.dprice = dprice;
	}
	
	public String getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(String createTime) {
		 this.createTime = createTime;
	}
	
}