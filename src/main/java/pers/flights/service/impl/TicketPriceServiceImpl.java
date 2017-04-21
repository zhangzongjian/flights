package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.TicketPrice;
import pers.flights.mapper.TicketPriceMapper;
import pers.flights.service.TicketPriceService;

@Service
public class TicketPriceServiceImpl implements TicketPriceService {

	@Resource
	private TicketPriceMapper ticketPriceMapper;
	
	public TicketPrice searchById(Integer id){
		return ticketPriceMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(TicketPrice ticketPrice) {
		return ticketPriceMapper.insert(ticketPrice);
	}
	
	@Transactional
	public int update(TicketPrice ticketPrice) {
		return ticketPriceMapper.updateByPrimaryKey(ticketPrice);
	}
	
	@Transactional
	public int delete(Integer id){
		return ticketPriceMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<TicketPrice> items = ticketPriceMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}