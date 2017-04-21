package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Passenger;

public interface PassengerService {

	Passenger searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Passenger passenger);

	int update(Passenger passenger);
	
	int delete(Integer id);
	
}