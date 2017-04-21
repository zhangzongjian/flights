package pers.flights.service;
import pers.flights.util.Pager;
import pers.flights.model.TicketPrice;

public interface TicketPriceService {

	TicketPrice searchById(Integer id);
	
	Pager search(Pager pager);
	
	int insert(TicketPrice ticketPrice);

	int update(TicketPrice ticketPrice);
	
	int delete(Integer id);
	
}