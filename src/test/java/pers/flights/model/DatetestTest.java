package pers.flights.model;


import java.util.Date;

import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import pers.flights.mapper.DatetestMapper;
import pers.flights.util.DateTimeUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-common.xml"})
public class DatetestTest {
	
	
	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-common.xml");
		DatetestMapper mapper = (DatetestMapper) applicationContext.getBean("datetestMapper");
		Date startTime = DateTimeUtil.toDate("2017-04-12 18:30:39", "yyyy-MM-dd HH:mm:ss");
		Date endTime = DateTimeUtil.toDate("2017-04-30", "yyyy-MM-dd");
		for(Datetest d : mapper.test(null, endTime)) {
			System.out.println(DateTimeUtil.toString(d.getDate(), "yyyy-MM-dd HH:mm:ss"));
		}
	}
}
