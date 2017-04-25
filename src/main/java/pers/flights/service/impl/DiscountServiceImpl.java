package pers.flights.service.impl;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.flights.util.Attribute;
import pers.flights.util.DateTimeUtil;
import pers.flights.util.Pager;
import pers.flights.model.Discount;
import pers.flights.mapper.DiscountMapper;
import pers.flights.service.DiscountService;

@Service
public class DiscountServiceImpl implements DiscountService {

	@Resource
	private DiscountMapper discountMapper;
	
	public Discount searchByPrimaryKey(Integer id){
		return discountMapper.selectByPrimaryKey(id);
	}
	
	@Transactional
	public int insert(Discount discount) {
		discount.setCreateTime(DateTimeUtil.toString(new Date()));
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
		long total = discountMapper.getTotal();
		pager.setTotal(total);
		pager.setDatas(items);	  
		return pager;
	}

	/**
	 * 模糊查询
	 * @param attributes
	 * @return
	 */
	public List<Discount> searchByKeywords(List<String> keywords) {
		return discountMapper.searchByKeywords(keywords);
	}

	/**
	 * 按属性查询
	 * @param attributes
	 * @return
	 */
	public List<Discount> searchByAttributes(List<Attribute> attributes) {
		return discountMapper.searchByAttributes(attributes);
	}
}