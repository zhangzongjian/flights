package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Administrator;

public interface AdministratorMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Administrator administrator);

    Administrator selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Administrator administrator);

	List<Administrator> search(Pager pager);
	
}