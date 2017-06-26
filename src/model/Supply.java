package model;

import java.util.Date;

public class Supply {
	private int id;
	private Date fueldate;
	private float price;
	private int aircraftId;
	private int fuelId;
	private int paymentId;
	private int liter;
	
	// Getters
	
	public int getLiter(){
		return this.liter;
	}
	
	public int getId(){
		return this.id;
	}
	
	public Date getFueldate(){
		return this.fueldate;
	}
	
	public float getPrice(){
		return this.price;
	}
	
	public int getAircraftId(){
		return this.aircraftId;
	}
	
	public int getFuelId(){
		return this.fuelId;
	}
	
	public int getPaymentId(){
		return this.paymentId;
	}
	
	// Setters
	
	public void setId(int id){
		this.id = id;
	}
	
	public void setFueldate(Date fueldate){
		this.fueldate = fueldate;
	}
	
	public void setPrice(float price){
		this.price = price;
	}
	
	public void setAircraftId(int aircraftId){
		this.aircraftId = aircraftId;
	}
	
	public void setFuelId(int fuelId){
		this.fuelId = fuelId;
	}
	
	public void setPaymentId(int paymentId){
		this.paymentId = paymentId;
	}
	
	public void setLiter(int liter){
		this.liter = liter;
	}
}
