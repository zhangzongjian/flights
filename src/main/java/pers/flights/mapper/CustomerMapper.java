package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Customer;

public interface CustomerMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Customer customer);

    Customer selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Customer customer);

	List<Customer> search(Pager pager);
	
}