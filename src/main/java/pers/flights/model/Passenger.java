package pers.flights.model;

public class Passenger {
	
	private Integer id;//编号
	  
	private String passengerName;//乘客姓名
	  
	private String passengerCard;//身份证号
	  
	private String passengerType;//乘客类型
	  
	private String mobilePhone;//手机号码
	  
	private Integer customerId;//客户编号
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getPassengerName() {
		 return passengerName;
	}
	
	public void setPassengerName(String passengerName) {
		 this.passengerName = passengerName;
	}
	
	public String getPassengerCard() {
		 return passengerCard;
	}
	
	public void setPassengerCard(String passengerCard) {
		 this.passengerCard = passengerCard;
	}
	
	public String getPassengerType() {
		 return passengerType;
	}
	
	public void setPassengerType(String passengerType) {
		 this.passengerType = passengerType;
	}
	
	public String getMobilePhone() {
		 return mobilePhone;
	}
	
	public void setMobilePhone(String mobilePhone) {
		 this.mobilePhone = mobilePhone;
	}
	
	public Integer getCustomerId() {
		 return customerId;
	}
	
	public void setCustomerId(Integer customerId) {
		 this.customerId = customerId;
	}

	@Override
	public String toString() {
		return "Passenger [id=" + id + ", passengerName=" + passengerName
				+ ", passengerCard=" + passengerCard + ", passengerType="
				+ passengerType + ", mobilePhone=" + mobilePhone
				+ ", customerId=" + customerId + "]";
	}
	
}