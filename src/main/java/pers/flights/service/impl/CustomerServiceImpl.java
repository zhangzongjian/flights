package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.Customer;
import pers.flights.mapper.CustomerMapper;
import pers.flights.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Resource
	private CustomerMapper customerMapper;
	
	public Customer searchById(Integer id){
		return customerMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Customer customer) {
		return customerMapper.insert(customer);
	}
	
	@Transactional
	public int update(Customer customer) {
		return customerMapper.updateByPrimaryKey(customer);
	}
	
	@Transactional
	public int delete(Integer id){
		return customerMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Customer> items = customerMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}