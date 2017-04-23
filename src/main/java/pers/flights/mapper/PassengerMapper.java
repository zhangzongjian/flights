package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Passenger;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface PassengerMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Passenger passenger);

    Passenger selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Passenger passenger);

	List<Passenger> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Passenger> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Passenger> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}