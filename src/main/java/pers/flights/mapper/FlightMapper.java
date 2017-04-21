package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Flight;

public interface FlightMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Flight flight);

    Flight selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Flight flight);

	List<Flight> search(Pager pager);
	
}