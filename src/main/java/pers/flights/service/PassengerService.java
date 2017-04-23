package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Passenger;

public interface PassengerService {

	Passenger searchByPrimaryKey(Integer id);
	
	List<Passenger> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Passenger passenger);

	int update(Passenger passenger);
	
	int delete(Integer id);
	
	List<Passenger> searchByKeywords(List<String> list);
}