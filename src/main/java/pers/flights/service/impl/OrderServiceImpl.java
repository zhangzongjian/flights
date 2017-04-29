package pers.flights.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.mapper.OrderMapper;
import pers.flights.model.Order;
import pers.flights.service.OrderService;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private OrderMapper orderMapper;
	
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
		return orderMapper.selectDetailById(orderid);
	}
}