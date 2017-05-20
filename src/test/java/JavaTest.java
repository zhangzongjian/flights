import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;




public class JavaTest {

	/**
	 * @param args
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 * @throws ParseException 
	 */
	public static void main(String[] args) throws IllegalAccessException, InvocationTargetException, ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date starttime = format.parse("2017-5-4 23:37");
		Date d2 = format.parse("2017-5-5 23:08");
		System.out.println((starttime.getTime()-d2.getTime()) < 30*60*1000);
	}

	
	
	
	
}

class A {
	String a;
	String b;
	String c;
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	
	
}