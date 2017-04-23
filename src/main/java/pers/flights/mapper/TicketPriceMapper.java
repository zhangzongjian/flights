package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.TicketPrice;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface TicketPriceMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(TicketPrice ticketPrice);

    TicketPrice selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(TicketPrice ticketPrice);

	List<TicketPrice> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<TicketPrice> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<TicketPrice> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}