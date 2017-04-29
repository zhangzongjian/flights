package pers.flights.service;
import java.util.Date;
import java.util.List;
import java.util.Map;

import pers.flights.model.Flight;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface FlightService {

	Flight searchByPrimaryKey(Integer id);
	
	List<Flight> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Flight flight);

	int update(Flight flight);
	
	int delete(Integer id);
	
	List<Flight> searchByKeywords(List<String> list);
	
	List<Map<String, Object>> searchFlights(String startCity, String arrivalCity, Date startTime);
	
	List<Map<String, Object>> searchFlightsByNo(String flightNo, Date startTime);
}