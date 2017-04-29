package pers.flights.mapper;

import org.apache.ibatis.annotations.Param;


public interface CommonMapper {
	
    int insertOrderAndPassenger(@Param("orderid")int orderid, @Param("passengerid")int passengerid);

}