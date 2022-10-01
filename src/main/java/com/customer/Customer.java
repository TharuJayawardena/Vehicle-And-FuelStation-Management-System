package com.customer;

public class Customer {
	private int idcustomer;
	private String email;
	private String name;
	private String phone;
	private String Username;
	private String Password;
	public Customer(int idcustomer, String email, String name, String phone, String Username, String Password) {
		super();
		this.idcustomer = idcustomer;
		this.email = email;
		this.name = name;
		this.phone = phone;
		this.Username = Username;
		this.Password = Password;
	}
	public int getIdcustomer() {
		return idcustomer;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getName() {
		return name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getUsername() {
		return Username;
	}
	
	public String getPassword() {
		return Password;
	}
	
	

}
