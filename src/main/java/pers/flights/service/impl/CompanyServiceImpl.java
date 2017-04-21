package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.Company;
import pers.flights.mapper.CompanyMapper;
import pers.flights.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Resource
	private CompanyMapper companyMapper;
	
	public Company searchById(Integer id){
		return companyMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Company company) {
		return companyMapper.insert(company);
	}
	
	@Transactional
	public int update(Company company) {
		return companyMapper.updateByPrimaryKey(company);
	}
	
	@Transactional
	public int delete(Integer id){
		return companyMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Company> items = companyMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}