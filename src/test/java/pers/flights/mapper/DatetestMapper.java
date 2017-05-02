package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Datetest;

public interface DatetestMapper {
	
    List<Datetest> test(@Param("phone")String phone);
	
}