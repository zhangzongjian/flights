package pers.flights.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.mapper.CommonMapper;
import pers.flights.mapper.OrderMapper;
import pers.flights.mapper.PassengerMapper;
import pers.flights.model.Order;
import pers.flights.model.Passenger;
import pers.flights.service.OrderService;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private OrderMapper orderMapper;
	
	@Autowired
	private CommonMapper commonMapper;
	
	@Autowired
	private PassengerMapper passengerMapper;
 	
	public Order searchByPrimaryKey(Integer id){
		return orderMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Order order) {
		order.setCreateTime(new Date());
		order.setOrderTime(new Date());
		order.setOrderStatus("未付款");
		order.setOrderNo(System.currentTimeMillis()+"");
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
	
	/**
	 * 查询指定id的详细订单（包括其关联表格的数据）
	 * @param id
	 * @return
	 */
	public Map<String, Object> getOrderDetailById(int orderid) {
		Map<String, Object> order = orderMapper.selectDetailById(orderid);
		List<Map<String, Object>> passengers = commonMapper.searchPassengerByOrderId(orderid);
		List<Passenger> passengerList = new ArrayList<Passenger>();
		for(Map<String, Object> passenger : passengers) {
			passengerList.add(passengerMapper.selectByPrimaryKey((Integer) passenger.get("passengerid")));
		}
		order.put("passenger", passengerList);
		order.put("passengerCount", passengers.size());
		return order;
	}
	
	public List<Map<String, Object>> searchDetailByCustomer(int customerid) {
		return orderMapper.searchDetailByCustomer(customerid);
	}
}