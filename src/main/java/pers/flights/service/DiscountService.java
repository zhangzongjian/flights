package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Discount;

public interface DiscountService {

	Discount searchByPrimaryKey(Integer id);
	
	List<Discount> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Discount discount);

	int update(Discount discount);
	
	int delete(Integer id);
	
	List<Discount> searchByKeywords(List<String> list);
}