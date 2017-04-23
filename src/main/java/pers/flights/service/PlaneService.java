package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Plane;

public interface PlaneService {

	Plane searchByPrimaryKey(Integer id);
	
	List<Plane> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Plane plane);

	int update(Plane plane);
	
	int delete(Integer id);
	
	List<Plane> searchByKeywords(List<String> list);
}