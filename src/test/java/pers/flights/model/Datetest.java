package pers.flights.model;

import java.util.Date;


public class Datetest {
	private int id;
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Datetest [id=" + id + ", date=" + date + "]";
	}
	
}
