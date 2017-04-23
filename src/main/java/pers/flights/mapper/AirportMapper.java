package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Airport;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface AirportMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Airport airport);

    Airport selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Airport airport);

	List<Airport> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Airport> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Airport> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}