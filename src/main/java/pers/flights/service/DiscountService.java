package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Discount;

public interface DiscountService {

	Discount searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Discount discount);

	int update(Discount discount);
	
	int delete(Integer id);
	
}