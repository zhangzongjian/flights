package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Customer;

public interface CustomerService {

	Customer searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Customer customer);

	int update(Customer customer);
	
	int delete(Integer id);
	
}