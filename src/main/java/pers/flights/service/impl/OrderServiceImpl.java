package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.Pager;
import pers.flights.model.Order;
import pers.flights.mapper.OrderMapper;
import pers.flights.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private OrderMapper orderMapper;
	
	public Order searchByPrimaryKey(Integer id){
		return orderMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Order order) {
		return orderMapper.insert(order);
	}
	
	@Transactional
	public int update(Order order) {
		return orderMapper.updateByPrimaryKey(order);
	}
	
	@Transactional
	public int delete(Integer id){
		return orderMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Order> items = orderMapper.search(pager);
		long total = orderMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Order> searchByKeywords(List<String> keywords) {
		return orderMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Order> searchByAttributes(List<Attribute> attributes) {
		return orderMapper.searchByAttributes(attributes);
	}
}