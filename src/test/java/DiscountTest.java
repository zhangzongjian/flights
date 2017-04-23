

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import pers.flights.mapper.DiscountMapper;
import pers.flights.model.Discount;
import pers.flights.service.DiscountService;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-common.xml"})
public class DiscountTest {
	
	@Autowired
	private DiscountMapper mapper;
	
	@Autowired
	private DiscountService service;
	
	@Test
	public void test() {
		System.out.println(mapper);
		System.out.println(service);
		Pager pager = new Pager();
		pager = service.search(pager);
		System.out.println(pager.getDatas());
	}
	
	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-common.xml");
		DiscountMapper mapper = (DiscountMapper) applicationContext.getBean("discountMapper");
		List<Attribute> list = new ArrayList<Attribute>();
		list.add(new Attribute("createTime","709823"));
		list.add(new Attribute("discountName","name3"));
		
		List<String> list1 = new ArrayList<String>();
		list1.add("大");
		list1.add("8");
		for(Discount a : mapper.searchByKeywords(list1))
			System.out.println(a.getDiscountType());
	}
}
