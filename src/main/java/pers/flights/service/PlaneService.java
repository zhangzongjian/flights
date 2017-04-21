package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Plane;

public interface PlaneService {

	Plane searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Plane plane);

	int update(Plane plane);
	
	int delete(Integer id);
	
}