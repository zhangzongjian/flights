package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Discount;

public interface DiscountMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Discount discount);

    Discount selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Discount discount);

	List<Discount> search(Pager pager);
	
}