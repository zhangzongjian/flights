package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Plane;

public interface PlaneMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Plane plane);

    Plane selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Plane plane);

	List<Plane> search(Pager pager);
	
}