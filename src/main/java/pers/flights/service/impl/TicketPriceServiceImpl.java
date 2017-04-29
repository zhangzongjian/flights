package pers.flights.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.DateTimeUtil;
import pers.flights.util.Pager;
import pers.flights.model.TicketPrice;
import pers.flights.mapper.TicketPriceMapper;
import pers.flights.service.TicketPriceService;

@Service
public class TicketPriceServiceImpl implements TicketPriceService {

	@Resource
	private TicketPriceMapper ticketPriceMapper;
	
	public TicketPrice searchByPrimaryKey(Integer id){
		return ticketPriceMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(TicketPrice ticketPrice) {
		ticketPrice.setCreateTime(DateTimeUtil.toString(new Date()));
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
		long total = ticketPriceMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<TicketPrice> searchByKeywords(List<String> keywords) {
		return ticketPriceMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<TicketPrice> searchByAttributes(List<Attribute> attributes) {
		return ticketPriceMapper.searchByAttributes(attributes);
	}

	@Override
	public List<Map<String, Object>> searchByFlightid(int flightid) {
		return ticketPriceMapper.searchByFlightid(flightid);
	}
}