

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import pers.flights.model.Airport;

public class JavaTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			Field f = Airport.class.getDeclaredField("createTime");
			System.out.println(f.getType());
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	
	
}
