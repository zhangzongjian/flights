package pers.flights.service.impl;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.DateTimeUtil;
import pers.flights.util.Pager;
import pers.flights.model.Plane;
import pers.flights.mapper.PlaneMapper;
import pers.flights.service.PlaneService;

@Service
public class PlaneServiceImpl implements PlaneService {

	@Resource
	private PlaneMapper planeMapper;
	
	public Plane searchByPrimaryKey(Integer id){
		return planeMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Plane plane) {
		plane.setCreateTime(DateTimeUtil.toString(new Date()));
		return planeMapper.insert(plane);
	}
	
	@Transactional
	public int update(Plane plane) {
		return planeMapper.updateByPrimaryKey(plane);
	}
	
	@Transactional
	public int delete(Integer id){
		return planeMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Plane> items = planeMapper.search(pager);
		long total = planeMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Plane> searchByKeywords(List<String> keywords) {
		return planeMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Plane> searchByAttributes(List<Attribute> attributes) {
		return planeMapper.searchByAttributes(attributes);
	}
}