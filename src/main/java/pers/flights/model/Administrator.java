package pers.flights.model;

public class Administrator {
	
	private Integer id;//编号
	  
	private String username;//账号
	  
	private String password;//密码
	  
	private String realName;//姓名
	  
	private String position;//职位
	  
	private String lastLoginTime;//最后登录时间
	  
	private String createTime;//创建时间
	  
	private String authority;//权限
	  
	public Integer getId() {
		 return id;
	}
	
	public void setId(Integer id) {
		 this.id = id;
	}
	
	public String getUsername() {
		 return username;
	}
	
	public void setUsername(String username) {
		 this.username = username;
	}
	
	public String getPassword() {
		 return password;
	}
	
	public void setPassword(String password) {
		 this.password = password;
	}
	
	public String getRealName() {
		 return realName;
	}
	
	public void setRealName(String realName) {
		 this.realName = realName;
	}
	
	public String getPosition() {
		 return position;
	}
	
	public void setPosition(String position) {
		 this.position = position;
	}
	
	public String getLastLoginTime() {
		 return lastLoginTime;
	}
	
	public void setLastLoginTime(String lastLoginTime) {
		 this.lastLoginTime = lastLoginTime;
	}
	
	public String getCreateTime() {
		 return createTime;
	}
	
	public void setCreateTime(String createTime) {
		 this.createTime = createTime;
	}
	
	public String getAuthority() {
		 return authority;
	}
	
	public void setAuthority(String authority) {
		 this.authority = authority;
	}

	@Override
	public String toString() {
		return "Administrator [id=" + id + ", username=" + username
				+ ", password=" + password + ", realName=" + realName
				+ ", position=" + position + ", lastLoginTime=" + lastLoginTime
				+ ", createTime=" + createTime + ", authority=" + authority
				+ "]";
	}
	
}