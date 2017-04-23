package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Company;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface CompanyMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Company company);

    Company selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Company company);

	List<Company> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Company> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Company> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}