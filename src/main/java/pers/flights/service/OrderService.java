package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Order;

public interface OrderService {

	Order searchByPrimaryKey(Integer id);
	
	List<Order> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(Order order);

	int update(Order order);
	
	int delete(Integer id);
	
	List<Order> searchByKeywords(List<String> list);
}