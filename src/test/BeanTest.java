package test;

public class BeanTest {
/*자바빈을 사용하려면 getter와 setter를 사용해야 한다.*/
	private String name="정자바";
	private int age;
	
	//name 변수에 대한 getter & setter를 생성 
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	
}
