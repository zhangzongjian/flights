

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import pers.flights.mapper.AirportMapper;
import pers.flights.service.AirportService;
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
		System.out.println(mapper.search(new Pager()));
	}
}
