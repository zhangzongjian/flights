package pers.flights.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.mapper.FlightMapper;
import pers.flights.model.Flight;
import pers.flights.service.FlightService;
import pers.flights.util.Attribute;
import pers.flights.util.DateTimeUtil;
import pers.flights.util.Pager;

@Service
public class FlightServiceImpl implements FlightService {

	@Resource
	private FlightMapper flightMapper;
	
	public Flight searchByPrimaryKey(Integer id){
		return flightMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Flight flight) {
		flight.setCreateTime(DateTimeUtil.toString(new Date()));
		return flightMapper.insert(flight);
	}
	
	@Transactional
	public int update(Flight flight) {
		return flightMapper.updateByPrimaryKey(flight);
	}
	
	@Transactional
	public int delete(Integer id){
		return flightMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Flight> items = flightMapper.search(pager);
		long total = flightMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Flight> searchByKeywords(List<String> keywords) {
		return flightMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Flight> searchByAttributes(List<Attribute> attributes) {
		return flightMapper.searchByAttributes(attributes);
	}
	
	/**
	 * 查询详细航班
	 * @return
	 */
	public List<Map<String, Object>> searchFlights(String startCity, String arrivalCity, String startTime) {
		return flightMapper.searchFlights(startCity, arrivalCity, startTime);
	}
}