package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Company;

public interface CompanyService {

	Company searchByPrimaryKey(Integer id);
	
	List<Company> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Company company);

	int update(Company company);
	
	int delete(Integer id);
	
	List<Company> searchByKeywords(List<String> list);
}