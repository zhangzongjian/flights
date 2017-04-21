package pers.flights.mapper;

import java.util.List;
import pers.flights.util.Pager;
import org.apache.ibatis.annotations.Param;
import pers.flights.model.Company;

public interface CompanyMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Company company);

    Company selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Company company);

	List<Company> search(Pager pager);
	
}