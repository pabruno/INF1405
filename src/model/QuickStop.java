package model;

import java.util.Date;

public class QuickStop {
	private Date startDate;
	private Date departureDate;
	private int id;
	private float price;
	private int placeId;
	private int aircraftId;
	private int paymentId;
	
	// Getters
	
	public Date getStartDate(){
		return this.startDate;
	}
	
	public Date getDepartureDate(){
		return this.departureDate;
	}
	
	public int getId(){
		return this.id;
	}
	
	public float getPrice(){
		return this.price;
	}
	
	public int getPlaceId(){
		return this.placeId;
	}
	
	public int getAircraftId(){
		return this.aircraftId;
	}
	
	public int getPaymentId(){
		return this.paymentId;
	}
	
	// Setters
	
	public void setStartDate(Date startDate){
		this.startDate = startDate;
	}
	
	public void setDepartureDate(Date departureDate){
		this.departureDate = departureDate;
	}
	
	public void setId(int id){
		this.id = id;
	}
	
	public void setPrice(float price){
		this.price = price;
	}
	
	public void setPlaceId(int placeId){
		this.placeId = placeId;
	}
	
	public void setAircraftId(int aircraftId){
		this.aircraftId = aircraftId;
	}
	
	public void setPaymentId(int paymentId){
		this.paymentId = paymentId;
	}
}
