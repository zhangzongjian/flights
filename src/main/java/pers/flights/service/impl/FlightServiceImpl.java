package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.Flight;
import pers.flights.mapper.FlightMapper;
import pers.flights.service.FlightService;

@Service
public class FlightServiceImpl implements FlightService {

	@Resource
	private FlightMapper flightMapper;
	
	public Flight searchById(Integer id){
		return flightMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Flight flight) {
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
		pager.setDatas(items);	  
		return pager;
	}

}