package pers.flights.model;

public class Airport {
	
	private Integer id;//编号
	  
	private String airportName;//机场名称
	  
	private String airportCity;//所属城市
	  
	private String createTime;//创建时间
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getAirportName() {
		 return airportName;
	}
	
	public void setAirportName(String airportName) {
		 this.airportName = airportName;
	}
	
	public String getAirportCity() {
		 return airportCity;
	}
	
	public void setAirportCity(String airportCity) {
		 this.airportCity = airportCity;
	}
	
	public String getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(String createTime) {
		 this.createTime = createTime;
	}
	
}