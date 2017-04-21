package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Company;

public interface CompanyService {

	Company searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Company company);

	int update(Company company);
	
	int delete(Integer id);
	
}