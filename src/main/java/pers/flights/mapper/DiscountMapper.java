package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Discount;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface DiscountMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Discount discount);

    Discount selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Discount discount);

	List<Discount> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Discount> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Discount> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}