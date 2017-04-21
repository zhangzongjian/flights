package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.Administrator;
import pers.flights.mapper.AdministratorMapper;
import pers.flights.service.AdministratorService;

@Service
public class AdministratorServiceImpl implements AdministratorService {

	@Resource
	private AdministratorMapper administratorMapper;
	
	public Administrator searchById(Integer id){
		return administratorMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Administrator administrator) {
		return administratorMapper.insert(administrator);
	}
	
	@Transactional
	public int update(Administrator administrator) {
		return administratorMapper.updateByPrimaryKey(administrator);
	}
	
	@Transactional
	public int delete(Integer id){
		return administratorMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Administrator> items = administratorMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}