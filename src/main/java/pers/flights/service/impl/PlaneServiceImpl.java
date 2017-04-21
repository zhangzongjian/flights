package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.Plane;
import pers.flights.mapper.PlaneMapper;
import pers.flights.service.PlaneService;

@Service
public class PlaneServiceImpl implements PlaneService {

	@Resource
	private PlaneMapper planeMapper;
	
	public Plane searchById(Integer id){
		return planeMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Plane plane) {
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
		pager.setDatas(items);	  
		return pager;
	}

}