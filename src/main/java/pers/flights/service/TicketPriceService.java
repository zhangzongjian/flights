package pers.flights.service;
import java.util.List;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.TicketPrice;

public interface TicketPriceService {

	TicketPrice searchByPrimaryKey(Integer id);
	
	List<TicketPrice> searchByAttributes(List<Attribute> attributes);
	
	Pager search(Pager pager);
	
	int insert(TicketPrice ticketPrice);

	int update(TicketPrice ticketPrice);
	
	int delete(Integer id);
	
	List<TicketPrice> searchByKeywords(List<String> list);
}