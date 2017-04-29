package pers.flights.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


public interface CommonMapper {
	
    int insertOrderAndPassenger(@Param("orderid")int orderid, @Param("passengerid")int passengerid);
    
    List<Map<String, Object>> searchPassengerByOrderId(@Param("orderid")int orderid);

}