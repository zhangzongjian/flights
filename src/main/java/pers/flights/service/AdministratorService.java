package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Administrator;

public interface AdministratorService {

	Administrator searchByPrimaryKey(Integer id);
	
	List<Administrator> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Administrator administrator);

	int update(Administrator administrator);
	
	int delete(Integer id);
	
	List<Administrator> searchByKeywords(List<String> list);
}