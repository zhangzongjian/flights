package pers.flights.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Order;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface OrderMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Order order);

    Order selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Order order);

	List<Order> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Order> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Order> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
	/**
	 * 查询指定id的详细订单（包括其关联表格的数据）
	 * @param id
	 * @return
	 */
	Map<String, Object> selectDetailById(@Param("id")int id);
	
}