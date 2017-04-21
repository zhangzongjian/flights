package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Passenger;

public interface PassengerMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Passenger passenger);

    Passenger selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Passenger passenger);

	List<Passenger> search(Pager pager);
	
}