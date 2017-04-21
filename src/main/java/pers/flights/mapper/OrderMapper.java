package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Order;

public interface OrderMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Order order);

    Order selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Order order);

	List<Order> search(Pager pager);
	
}