package pers.flights.model;

import java.util.Date;

public class Flight {
	
	private Integer id;//编号
	  
	private String flightNo;//航班号
	  
	private Date startTime;//出发时间
	  
	private Integer startAirportId;//出发机场
	  
	private Date arrivalTime;//抵达时间
	  
	private Integer endAirportId;//目的机场
	  
	private Integer planeId;//飞机
	  
	private Date startRealTime;//实际出发时间
	  
	private Date arrivalRealTIme;//实际抵达时间
	  
	private String status;//状态
	  
	private Date createTime;//创建时间
	  
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
	
	public Date getStartTime() {
		 return startTime;
	}
	
	public void setStartTime(Date startTime) {
		 this.startTime = startTime;
	}
	
	public Integer getStartAirportId() {
		 return startAirportId;
	}
	
	public void setStartAirportId(Integer startAirportId) {
		 this.startAirportId = startAirportId;
	}
	
	public Date getArrivalTime() {
		 return arrivalTime;
	}
	
	public void setArrivalTime(Date arrivalTime) {
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
	
	public Date getStartRealTime() {
		 return startRealTime;
	}
	
	public void setStartRealTime(Date startRealTime) {
		 this.startRealTime = startRealTime;
	}
	
	public Date getArrivalRealTIme() {
		 return arrivalRealTIme;
	}
	
	public void setArrivalRealTIme(Date arrivalRealTIme) {
		 this.arrivalRealTIme = arrivalRealTIme;
	}
	
	public String getStatus() {
		 return status;
	}
	
	public void setStatus(String status) {
		 this.status = status;
	}
	
	public Date getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		 this.createTime = createTime;
	}
	
}