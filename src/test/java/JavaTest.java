import java.lang.reflect.InvocationTargetException;




public class JavaTest {

	/**
	 * @param args
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	public static void main(String[] args) throws IllegalAccessException, InvocationTargetException {
		A a = new A(); a.a = "aa";a.c = "cc";
		A b = new A(); b.b = "bb";

		System.out.println(a.b);
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