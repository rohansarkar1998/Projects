package com.OnlineShopping;


import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Transaction {
	@Id
	int tid;
	String email;
	String name;
	String address;
	String city;
	String BuyingDate;
	int price;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getBuyingDate() {
		return BuyingDate;
	}
	public void setBuyingDate(String buyingDate) {
		BuyingDate = buyingDate;
	}
	
	
	
	
	

}
