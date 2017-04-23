package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Airport;
import pers.flights.mapper.AirportMapper;
import pers.flights.service.AirportService;

@Service
public class AirportServiceImpl implements AirportService {

	@Resource
	private AirportMapper airportMapper;
	
	public Airport searchById(Integer id){
		return airportMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Airport airport) {
		return airportMapper.insert(airport);
	}
	
	@Transactional
	public int update(Airport airport) {
		return airportMapper.updateByPrimaryKey(airport);
	}
	
	@Transactional
	public int delete(Integer id){
		return airportMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Airport> items = airportMapper.search(pager);
		long total = airportMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Airport> searchByKeywords(List<String> keywords) {
		return airportMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Airport> searchByAttributes(List<Attribute> attributes) {
		return airportMapper.searchByAttributes(attributes);
	}
}