package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Flight;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface FlightMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Flight flight);

    Flight selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Flight flight);

	List<Flight> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Flight> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Flight> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}