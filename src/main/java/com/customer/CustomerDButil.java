package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDButil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs =null;

	
	public static List<Customer> validate(String Username,String Password){
		ArrayList<Customer> cus=new ArrayList<>();
		//crste dabase connrction
		String url ="jdbc:mysql://localhost:3306/vehicle";
		String user="root";
		String pass="Tharu@03";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con= DriverManager.getConnection(url, user,pass);
			Statement stmt=con.createStatement();
			
			String sql="select * from vehicle.customer where username='"+Username+"'and password='"+Password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int idcustomer=rs.getInt(1);
				String email = rs.getString(2);
				String name = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Customer c = new Customer(idcustomer,email,name,phone,username,password);
				cus.add(c);
				
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//validate
		return cus;
	}
	
	public static boolean insertcustomer(String name,String email, String phone, String Username,String Password ) {
		boolean isSuccess = false;
		//ceate connection
		String url ="jdbc:mysql://localhost:3306/vehicle";
		String user="root";
		String pass="Tharu@03";
		
		try {
          Class.forName("com.mysql.jdbc.Driver");
			
			Connection con= DriverManager.getConnection(url, user,pass);
			Statement stmt=con.createStatement();
			
			String sql = "insert into customer values (0,'"+email+"','"+name+"','"+phone+"','"+Username+"','"+Password+"')";
			
			int  rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	
	public static boolean updatecustomer(String idcustomer,String name ,String email,String phone) {
		String url ="jdbc:mysql://localhost:3306/vehicle";
		String user="root";
		String pass="Tharu@03";
		
	try {
		
		 Class.forName("com.mysql.jdbc.Driver");
			
			Connection con= DriverManager.getConnection(url, user,pass);
			Statement stmt=con.createStatement();
			String sql ="update customer set idcustomer='"+idcustomer+"', name='"+name+"',email='"+email+"',phone='"+phone+"'"
					+ "where idcustomer='"+idcustomer+"'";
		
			int  rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
			}
			else {
				isSuccess=false;
			}
			
	}catch(Exception e) {
		e.printStackTrace();
	}
		return isSuccess;
	}
	
	public static boolean deleteCustomer(String idcustomer) {
		String url ="jdbc:mysql://localhost:3306/vehicle";
		String user="root";
		String pass="Tharu@03";
		
	
		int covID= Integer.parseInt(idcustomer);
		
		
		try {
			 Class.forName("com.mysql.jdbc.Driver");
				
				Connection con= DriverManager.getConnection(url, user,pass);
				Statement stmt=con.createStatement();
				String sql = "delete from customer  where idcustomer='"+covID+"'";
	
	int  rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess =true;
				}
				
				else {
					isSuccess = false;
				}
		}catch(Exception e) {
			
		e.printStackTrace();
		
	}
		return isSuccess;
	}

	public static List<Customer> getCustomerDetails(String id) {
		// TODO Auto-generated method stub
		return null;
	}
}
