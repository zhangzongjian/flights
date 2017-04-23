package pers.flights.util;

public class Attribute {

	private String name;
	
	private Object value;

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

	@Override
	public String toString() {
		return "Attribute [name=" + name + ", value=" + value + "]";
	}

}
