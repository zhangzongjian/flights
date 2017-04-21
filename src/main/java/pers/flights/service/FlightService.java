package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Flight;

public interface FlightService {

	Flight searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Flight flight);

	int update(Flight flight);
	
	int delete(Integer id);
	
}