package pers.flights.service.impl;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.DateTimeUtil;
import pers.flights.util.Pager;
import pers.flights.model.Company;
import pers.flights.mapper.CompanyMapper;
import pers.flights.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Resource
	private CompanyMapper companyMapper;
	
	public Company searchByPrimaryKey(Integer id){
		return companyMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Company company) {
		company.setCreateTime(DateTimeUtil.toString(new Date()));
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
		long total = companyMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Company> searchByKeywords(List<String> keywords) {
		return companyMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Company> searchByAttributes(List<Attribute> attributes) {
		return companyMapper.searchByAttributes(attributes);
	}
}