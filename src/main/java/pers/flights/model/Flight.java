package pers.flights.model;

public class Flight {
	
	private Integer id;//编号
	  
	private String flightNo;//航班号
	  
	private String startTime;//出发时间
	  
	private Integer startAirportId;//出发机场
	  
	private String arrivalTime;//抵达时间
	  
	private Integer endAirportId;//目的机场
	  
	private Integer planeId;//飞机
	  
	private String startRealTime;//实际出发时间
	  
	private String arrivalRealTIme;//实际抵达时间
	  
	private String status;//状态
	  
	private String createTime;//创建时间
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getFlightNo() {
		 return flightNo;
	}
	
	public void setFlightNo(String flightNo) {
		 this.flightNo = flightNo;
	}
	
	public String getStartTime() {
		 return startTime;
	}
	
	public void setStartTime(String startTime) {
		 this.startTime = startTime;
	}
	
	public Integer getStartAirportId() {
		 return startAirportId;
	}
	
	public void setStartAirportId(Integer startAirportId) {
		 this.startAirportId = startAirportId;
	}
	
	public String getArrivalTime() {
		 return arrivalTime;
	}
	
	public void setArrivalTime(String arrivalTime) {
		 this.arrivalTime = arrivalTime;
	}
	
	public Integer getEndAirportId() {
		 return endAirportId;
	}
	
	public void setEndAirportId(Integer endAirportId) {
		 this.endAirportId = endAirportId;
	}
	
	public Integer getPlaneId() {
		 return planeId;
	}
	
	public void setPlaneId(Integer planeId) {
		 this.planeId = planeId;
	}
	
	public String getStartRealTime() {
		 return startRealTime;
	}
	
	public void setStartRealTime(String startRealTime) {
		 this.startRealTime = startRealTime;
	}
	
	public String getArrivalRealTIme() {
		 return arrivalRealTIme;
	}
	
	public void setArrivalRealTIme(String arrivalRealTIme) {
		 this.arrivalRealTIme = arrivalRealTIme;
	}
	
	public String getStatus() {
		 return status;
	}
	
	public void setStatus(String status) {
		 this.status = status;
	}
	
	public String getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(String createTime) {
		 this.createTime = createTime;
	}
	
}