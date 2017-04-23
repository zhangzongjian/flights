package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Customer;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface CustomerMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Customer customer);

    Customer selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Customer customer);

	List<Customer> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Customer> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Customer> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}