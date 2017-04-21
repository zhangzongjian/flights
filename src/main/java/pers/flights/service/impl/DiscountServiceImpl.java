package pers.flights.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pers.flights.util.Pager;
import pers.flights.model.Discount;
import pers.flights.mapper.DiscountMapper;
import pers.flights.service.DiscountService;

@Service
public class DiscountServiceImpl implements DiscountService {

	@Resource
	private DiscountMapper discountMapper;
	
	public Discount searchById(Integer id){
		return discountMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Discount discount) {
		return discountMapper.insert(discount);
	}
	
	@Transactional
	public int update(Discount discount) {
		return discountMapper.updateByPrimaryKey(discount);
	}
	
	@Transactional
	public int delete(Integer id){
		return discountMapper.deleteByPrimaryKey(id);
	}
	
	public Pager search(Pager pager) {
		if(pager == null){
		  pager = new Pager();
		}
		List<Discount> items = discountMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}