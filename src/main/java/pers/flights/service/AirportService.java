package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Airport;

public interface AirportService {

	Airport searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Airport airport);

	int update(Airport airport);
	
	int delete(Integer id);
	
}