package model;

public class PlacesView {
	private int id;
	private String size;
	private boolean availability;
	
	// Getters
	
	public int getId(){
		return this.id;
	}
	
	public String getSize(){
		return this.size;
	}
	
	public boolean getAvailability(){
		return this.availability;
	}
	
	// Setters
	
	public void setId(int id){
		this.id = id;
	}
	
	public void setSize(String size){
		this.size = size;
	}
	
	public void setAvailability(boolean availability){
		this.availability = availability;
	}
}
