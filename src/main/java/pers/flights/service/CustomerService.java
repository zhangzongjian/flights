package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Customer;

public interface CustomerService {

	Customer searchByPrimaryKey(Integer id);
	
	List<Customer> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Customer customer);

	int update(Customer customer);
	
	int delete(Integer id);
	
	List<Customer> searchByKeywords(List<String> list);
}