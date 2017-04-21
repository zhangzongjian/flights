package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.Order;

public interface OrderService {

	Order searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(Order order);

	int update(Order order);
	
	int delete(Integer id);
	
}