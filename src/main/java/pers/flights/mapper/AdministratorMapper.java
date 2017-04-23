package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Administrator;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface AdministratorMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Administrator administrator);

    Administrator selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Administrator administrator);

	List<Administrator> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Administrator> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Administrator> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}