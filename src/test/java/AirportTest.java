

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

import pers.flights.mapper.AirportMapper;
import pers.flights.model.Airport;
import pers.flights.service.AirportService;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-common.xml"})
public class AirportTest {
	
	@Autowired
	private AirportMapper mapper;
	
	@Autowired
	private AirportService service;
	
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
		AirportMapper mapper = (AirportMapper) applicationContext.getBean("airportMapper");
		List<Attribute> list = new ArrayList<Attribute>();
		list.add(new Attribute("createTime","709823"));
		list.add(new Attribute("airportName","name3"));
		
		List<String> list1 = new ArrayList<String>();
		list1.add("o");
		list1.add("8");
		for(Airport a : mapper.searchByKeywords(list1))
			System.out.println(a);
	}
}
