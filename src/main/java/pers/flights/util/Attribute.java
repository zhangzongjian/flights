package pers.flights.util;

import java.util.ArrayList;
import java.util.List;

public class Attribute {

	private String name;
	
	private Object value;
	
	private List<Attribute> list;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Object getValue() {
		if(value instanceof String) {
			value = "'"+value+"'";
		}
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}

	public Attribute(String name, Object value) {
		super();
		this.name = name;
		this.value = value;
	}
	
	public Attribute() {
		super();
		this.list = new ArrayList<Attribute>();
	}

	/**
	 * 快捷的组装一个属性数组
	 * @param name
	 * @return
	 */
	public Attribute put(String name, Object value) {
		this.list.add(new Attribute(name, value));
		return this;
	}
	
	/**
	 * 快捷的得到一个属性数组
	 * @param name
	 * @return
	 */
	public List<Attribute> getList() {
		return this.list;
	}
	
	@Override
	public String toString() {
		return "Attribute [name=" + name + ", value=" + value + "]";
	}

}
