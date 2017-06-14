package model;

public class Client {
	private int id;
	private String phone;
	private String email;
	private String license;
	private String name;
	
	// Setters
	
	public void setId(int id){
		this.id = id;
	}
	
	public void setPhone(String phone){
		this.phone = phone;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public void setLicense(String license){
		this.license = license;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	// Getters
	
	public int getId(){
		return this.id;
	}
	
	public String getPhone(){
		return this.phone;
	}
	
	public String getEmail(){
		return this.email;
	}
	
	public String getLicense(){
		return this.license;
	}
	
	public String getName(){
		return this.name;
	}
}

