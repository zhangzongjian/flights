package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Passenger;
import pers.flights.mapper.PassengerMapper;
import pers.flights.service.PassengerService;

@Service
public class PassengerServiceImpl implements PassengerService {

	@Resource
	private PassengerMapper passengerMapper;
	
	public Passenger searchByPrimaryKey(Integer id){
		return passengerMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Passenger passenger) {
		return passengerMapper.insert(passenger);
	}
	
	@Transactional
	public int update(Passenger passenger) {
		return passengerMapper.updateByPrimaryKey(passenger);
	}
	
	@Transactional
	public int delete(Integer id){
		return passengerMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Passenger> items = passengerMapper.search(pager);
		long total = passengerMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Passenger> searchByKeywords(List<String> keywords) {
		return passengerMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Passenger> searchByAttributes(List<Attribute> attributes) {
		return passengerMapper.searchByAttributes(attributes);
	}
}