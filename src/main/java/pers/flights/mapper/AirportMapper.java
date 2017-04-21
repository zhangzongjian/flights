package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Airport;

public interface AirportMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Airport airport);

    Airport selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Airport airport);

	List<Airport> search(Pager pager);
	
}