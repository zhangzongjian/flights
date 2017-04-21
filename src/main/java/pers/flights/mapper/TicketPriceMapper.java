package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.TicketPrice;

public interface TicketPriceMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(TicketPrice ticketPrice);

    TicketPrice selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(TicketPrice ticketPrice);

	List<TicketPrice> search(Pager pager);
	
}