package com.OnlineShopping;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class CustomerBean {
	
	String name;
	String email;
	String password;
	String phonenumber;
	String address;
	String city;
	String password1;
	int price;
	public List<Transaction> t1;
	public List<Manager> m;
	String type;
	
	public String fail;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getFail() {
		return fail;
	}
	public void setFail(String fail) {
		this.fail = fail;
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
	
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	
	
	public List<Transaction> getT1() {
		return t1;
	}
	public void setT1(List<Transaction> t1) {
		this.t1 = t1;
	}
	
	
	
	public List<Manager> getM() {
		return m;
	}
	public void setM(List<Manager> m) {
		this.m = m;
	}
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String creatProfile()
	{
		User c = new User();
		int flag = 0;
		String str = new String();
		CustomerServices c1 = new CustomerServices();
		
		//  Phone number validate
		if(phonenumber.length()!=10)
		{
			flag = 1;
		}
		
		if(!(phonenumber.charAt(0)=='6'|| phonenumber.charAt(0)=='7' || phonenumber.charAt(0)=='8' || phonenumber.charAt(0)=='9'))
		{
			flag = 1;
			
		}
		for(int i = 0;i<phonenumber.length();i++)
		{
			if(Character.isLetter(phonenumber.charAt(i)))
			{
				flag = 1;
			}
		}
		
		
		// E mail validate
		if(email.charAt(0)!=' ' && email.charAt(0)!='@' && email.charAt(0)!='.')
	      {
	    	  if(!(email.contains("@gmail.com"))) {
	    		  flag = 2;
	    	  }
	      }
	      else
	      {
	    	  flag = 2;
	      }
	    
	    
	    
	    
	    if(flag==0)
	    {
	    	c.setName(name);
			c.setEmail(email);
			c.setPassword(password);
			c.setPhonenumber(phonenumber);
			str =  c1.creatUser(c);
			if(str.equals("yes"))
			{
				return "index.jsp";
			}
			else
			{
				fail = "CREDENTIAL MATCH";
			}
	    }
	    
	  else if(flag == 1)
	  {
		  fail= "PLEASE ENTER A VALID PHONE NUMBER";
	  }
	  
	  else if(flag == 2)
	  {
		  fail = "PLEASE ENTER A VALID EMAIL LIKE **@GMAIL.COM";
	  }
	  
	  return "FailPage";
				
	}
	
	
	
	public String login()
	{
		String str = "";
		CustomerServices c1 = new CustomerServices();
		int flag = 0;
		if(type.equals("user"))
		{
			str = c1.userLogin(email, password);
			if(str.equals("no"))
			{
				flag = 1;
			}
			else
			{
				flag = 2;
			}
		}
		else if(type.equals("admin"))
		{
			str = c1.adminLogin(email, password);
			if(str.equals("no"))
			{
				flag = 1;
			}
			else
			{
				flag = 3;
			}
		}
		if(flag==1)
		{
			return "loginFail";
		}
		else if(flag==2)
		{
			return "index";
		}
		else
		{
			return "AdminHome";
		}
	}
	
	
	public void transaction()
	{
		CustomerServices c = new CustomerServices();
		Transaction t = new Transaction();
		String date;
		t.setName(name);
		t.setEmail(email);
		t.setCity(city);
		t.setAddress(address);
		t.setPrice(10000);
		Date d = new Date();
		date = d.toString();
		t.setBuyingDate(date);
		int size=c.getTid();
		int tid = size+1;
		t.setTid(tid);
		
		c.generateTransaction(t);
		
		EmailBean e = new EmailBean();
		e.sendEmail(email);
		
	}
	
	public String changePasseord()
	{
		String s = new String();
		if(password.equals(password1))
		{
			CustomerServices c = new CustomerServices();
			s=c.changePassword(email, password);
			if(s.equals("no"))
			{
				fail = "User Id not found";
			}
			else
			{
				fail = "Your password is change successfully";
			}
		}
		else if(!password.equals(password1))
		{
			fail = "Please enter the correct password";
		}
		
		return "FailPage";
	}
	
	
	public String creatAdmin()
	{
		Manager m = new Manager();
		int flag = 0;
	    String str;
		m.setName(name);
		m.setEmail(email);
		m.setPassword(password);
		
		CustomerServices c = new CustomerServices();
		str = c.creatAdmin(m);
		if(str.equals("yes"))
		{
			return "AdminHome";
		}
		else
		{
			fail = "Cradential Matchs";
			return "FailPage";
		}
	}
	
	public String showTransaction()
	{
		CustomerServices c= new CustomerServices();
		System.out.print("ok made");
		this.setT1(new ArrayList<>());
		try {
			this.setT1(c.listOfTransaction());
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "ShowTransaction";
	}
	
	public String showAdmin()
	{
		CustomerServices c= new CustomerServices();
		System.out.print("ok made");
		this.setM(new ArrayList<>());
		try {
			this.setM(c.ListOfAdmin());
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "ShowAdmin";
	}
	
	
	

}
