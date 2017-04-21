package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Administrator;

public interface AdministratorService {

	Administrator searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Administrator administrator);

	int update(Administrator administrator);
	
	int delete(Integer id);
	
}