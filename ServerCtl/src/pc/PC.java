package pc;

public class PC {
	String name;
	
	public PC(){
		name = "unamed";
	}
	
	public PC(String name){
		this.name =  name;
	}
	@Override
	public String toString(){
		return name;
	}

}
