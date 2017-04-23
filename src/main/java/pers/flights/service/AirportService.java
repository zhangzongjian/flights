package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Airport;

public interface AirportService {

	Airport searchByPrimaryKey(Integer id);
	
	List<Airport> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Airport airport);

	int update(Airport airport);
	
	int delete(Integer id);
	
	List<Airport> searchByKeywords(List<String> list);
}