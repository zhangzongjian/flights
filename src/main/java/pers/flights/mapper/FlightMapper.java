package pers.flights.mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

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
	
	/**
	 * 查询详细航班
	 * @return
	 */
	//调用存储过程，@Param不能少。。
	List<Map<String, Object>> searchFlights(@Param("startCity")String startCity, @Param("arrivalCity")String arrivalCity, @Param("startTime")Date startTime);
	
	/**
	 * 按航班号查询航班
	 * @return
	 */
	List<Map<String, Object>> searchFlightsByNo(@Param("flightNo")String flightNo, @Param("startTime")Date startTime);
		
}