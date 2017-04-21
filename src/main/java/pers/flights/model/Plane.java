package pers.flights.model;


public class Plane {
	
	private Integer id;//编号
	  
	private String planeVersion;//型号
	  
	private String planeType;//类型
	  
	private Integer planeAge;//机龄
	  
	private Integer businessClassAmount;//公务舱座位数量
	  
	private Integer firstClassAmount;//头等舱座位数量
	  
	private Integer economyClassAmount;//经济舱座位数量
	  
	private String createTime;//创建时间
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getPlaneVersion() {
		 return planeVersion;
	}
	
	public void setPlaneVersion(String planeVersion) {
		 this.planeVersion = planeVersion;
	}
	
	public String getPlaneType() {
		 return planeType;
	}
	
	public void setPlaneType(String planeType) {
		 this.planeType = planeType;
	}
	
	public Integer getPlaneAge() {
		 return planeAge;
	}
	
	public void setPlaneAge(Integer planeAge) {
		 this.planeAge = planeAge;
	}
	
	public Integer getBusinessClassAmount() {
		 return businessClassAmount;
	}
	
	public void setBusinessClassAmount(Integer businessClassAmount) {
		 this.businessClassAmount = businessClassAmount;
	}
	
	public Integer getFirstClassAmount() {
		 return firstClassAmount;
	}
	
	public void setFirstClassAmount(Integer firstClassAmount) {
		 this.firstClassAmount = firstClassAmount;
	}
	
	public Integer getEconomyClassAmount() {
		 return economyClassAmount;
	}
	
	public void setEconomyClassAmount(Integer economyClassAmount) {
		 this.economyClassAmount = economyClassAmount;
	}
	
	public String getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(String createTime) {
		 this.createTime = createTime;
	}
	
}