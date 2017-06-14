package model;

public class AircraftView {
	private int id;
	private String model;
	private String manufacturer;
	private String code;
	private String size;
	private String clientName;
	
	// Getters
	
	public int getId(){
		return this.id;
	}
	
	public String getModel(){
		return this.model;
	}
	
	public String getManufacturer(){
		return this.manufacturer;
	}
	
	public String getCode(){
		return this.code;
	}
	
	public String getSize(){
		return this.size;
	}
	
	public String getClientName(){
		return this.clientName;
	}
	
	// Setters
	
	public void setId(int id){
		this.id = id;
	}
	
	public void setCode(String code){
		this.code = code;
	}
	
	public void setSize(String size){
		this.size = size;
	}
	
	public void setModel(String model){
		this.model = model;
	}
	
	public void setManufacturer(String manufacturer){
		this.manufacturer = manufacturer;
	}
	
	public void setClientName(String clientName){
		this.clientName = clientName;
	}
}
