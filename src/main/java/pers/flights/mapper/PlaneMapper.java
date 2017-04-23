package pers.flights.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pers.flights.model.Plane;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

public interface PlaneMapper {
	
    int deleteByPrimaryKey(@Param(value="id")Integer id);

    int insert(Plane plane);

    Plane selectByPrimaryKey(@Param(value="id")Integer id);

    int updateByPrimaryKey(Plane plane);

	List<Plane> search(Pager pager);
	
	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	List<Plane> searchByAttributes(List<Attribute> attributes);
	
	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	List<Plane> searchByKeywords(List<String> keywords);
	
	long getTotal();
	
}