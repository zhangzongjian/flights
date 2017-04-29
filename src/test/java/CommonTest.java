

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

import pers.flights.mapper.CommonMapper;
import pers.flights.util.Attribute;
import pers.flights.util.Pager;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-common.xml"})
public class CommonTest {
	
	@Autowired
	private CommonMapper mapper;
	
	@Test
	public void test() {
		System.out.println(mapper);
	}
	
	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-common.xml");
		CommonMapper mapper = (CommonMapper) applicationContext.getBean("commonMapper");
		int i = mapper.insertOrderAndPassenger(24, 30);
		System.out.println(i);
	}
}
