

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

import pers.flights.mapper.FlightMapper;
import pers.flights.model.Flight;
import pers.flights.service.FlightService;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-common.xml"})
public class FlightTest {
	
	@Autowired
	private FlightMapper mapper;
	
	@Autowired
	private FlightService service;
	
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
		FlightMapper mapper = (FlightMapper) applicationContext.getBean("flightMapper");
		FlightService service = (FlightService) applicationContext.getBean("flightServiceImpl");
		System.out.println(service.searchFlights("广州", "大连", "2017-04-25 22:35"));
	}
}
