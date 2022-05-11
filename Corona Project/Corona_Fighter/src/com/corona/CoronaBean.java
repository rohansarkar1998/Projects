package com.corona;

import java.util.ArrayList;
import java.util.List;

public class CoronaBean {
	String username;
	String password;
	String name;
	int age;
	String status;
	int id;
	String breading; 
	String feabour;
	String chestpain;
	String cough;
	int count=0;
	String str="";
	public List<Candidate> l1; 
	String phonenum;
	String location;
	String massage;
	String uname;
	int PlaceNum;
	int num;
	String heart;
	String diabetis;
	String hypertention;
	String tour;
	public String getTour() {
		return tour;
	}




	public void setTour(String tour) {
		this.tour = tour;
	}




	public String getMassage() {
		return massage;
	}




	public void setMassage(String massage) {
		this.massage = massage;
	}
	
	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public String getBreading() {
		return breading;
	}




	public void setBreading(String breading) {
		this.breading = breading;
	}




	public String getFeabour() {
		return feabour;
	}




	public void setFeabour(String feabour) {
		this.feabour = feabour;
	}




	public String getChestpain() {
		return chestpain;
	}




	public void setChestpain(String chestpain) {
		this.chestpain = chestpain;
	}




	public String getCough() {
		return cough;
	}




	public void setCough(String cough) {
		this.cough = cough;
	}




	public String getPhonenum() {
		return phonenum;
	}




	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}




	public String getLocation() {
		return location;
	}




	public void setLocation(String location) {
		this.location = location;
	}




	public int getAge() {
		return age;
	}




	public void setAge(int age) {
		this.age = age;
	}

	



	public int getPlaceNum() {
		return PlaceNum;
	}




	public void setPlaceNum(int placeNum) {
		PlaceNum = placeNum;
	}




	public List<Candidate> getL1() {
		return l1;
	}




	public void setL1(List<Candidate> l1) {
		this.l1 = l1;
	}

	


	public String getHeart() {
		return heart;
	}




	public void setHeart(String heart) {
		this.heart = heart;
	}




	public String getDiabetis() {
		return diabetis;
	}




	public void setDiabetis(String diabetis) {
		this.diabetis = diabetis;
	}




	public String getHypertention() {
		return hypertention;
	}




	public void setHypertention(String hypertention) {
		this.hypertention = hypertention;
	}




	public String CreatProfile()
	{
		String creat="";
		String s="";
		String stat="User data requre";
		System.out.println("Inside Student Bean");
		Candidate c = new Candidate();
		s=location.toUpperCase();
		c.setAge(age);
		c.setName(name);
		c.setLocation(s);
		c.setPassword(password);
		c.setPhonenum(phonenum);
		c.setUsername(username);
		c.setStatus(stat);
		CoronaServices c1 = new CoronaServices();
		creat=c1.creatCandidate(c);
		if(creat.equals("yes")) {
			return "Success"; }
		else
		{
			return "Fail";
		}
	}
	
	public String CheckProfile()
	{
		String str2;
		Candidate c = new Candidate();
		System.out.print(username);
		CoronaServices c1 = new CoronaServices();
		str2=c1.CheckCandidate(username,password);
		if(str2.equals("yes"))
		{
			return "TestYourSelf";
		}
		return "Failfind";
	}
	
	public String CreatStatus()
	{
		String s;
		if(breading.equals("YES"))
		{
			count=count+3;
		}
		if(chestpain.equals("YES"))
		{
			count=count+5;
		}
		if(cough.equals("YES"))
		{
			count=count+2;
		}
		if(feabour.equals("YES"))
		{
			count=count+1;
		}
		if(diabetis.equals("YES"))
		{
			count = count+3;
		}
		if(heart.equals("YES"))
		{
			count = count+2;
		}
		if(hypertention.equals("YES"))
		{
			count=count+2;
		}
		if(tour.equals("YES"))
		{
			count=count+1;
		}
		
		if(count>=12)
		{
			str="High chance of corona";
		}
		else if(count>=6 && count<12)
		{
			str="Average chance of corona";
		}
		else
		{
			str="No chance of corona";
		}
		CoronaServices c1 = new CoronaServices();
		s=c1.CandidateStatus(username, str);
		if(s.equals("yes"))
		{
			return "StatusCheek";
		}
		return "Failfind";
	}
	
	public String CheckStatus()
	{

		CoronaServices c1= new CoronaServices();
		massage=c1.CheckStatus(username);
		if(massage.equals("null"))
		{
			return "Failcheck";
		}
		else {
			return "ShowStatus";
			}
		
	}
	
	public String CheckPlace()
	{
		String loc="";
		CoronaServices c1 = new CoronaServices();
		loc=location.toUpperCase();
		massage=c1.Place(loc);
		return "ShowPlace";
		}
	
	public String Checkperson()
	{
		CoronaServices c1 = new CoronaServices();
		massage = c1.Person(username);
		if(massage.equals("null"))
		{
			return "PersonNot";
		}
		else {
		return "PersonCheck";}
	}
	public String CheekRandumPerson()
	{
		String s;
		if(breading.equals("YES"))
		{
			count=count+3;
		}
		if(chestpain.equals("YES"))
		{
			count=count+5;
		}
		if(cough.equals("YES"))
		{
			count=count+2;
		}
		if(feabour.equals("YES"))
		{
			count=count+1;
		}
		if(diabetis.equals("YES"))
		{
			count = count+3;
		}
		if(heart.equals("YES"))
		{
			count = count+2;
		}
		if(hypertention.equals("YES"))
		{
			count=count+2;
		}
		if(tour.equals("YES"))
		{
			count=count+1;
		}
		
		if(count>=12)
		{
			massage="High chance of corona";
		}
		else if(count>=6 && count<12)
		{
			massage="Average chance of corona";
		}
		else
		{
			massage="No chance of corona";
		}
		return "PersonCheck";
	}
	
	public String changepassword()
	{
		String pass="";
		CoronaServices c1 = new CoronaServices();
		pass=c1.Changepass(username, password);
		if(pass.equals("yes"))
		{
			return "update";
		}
		else
		{
			return "UpdateFail";
		}
	}
	
	
	public String adminlogin()
	{
		String ad="";
		CoronaServices c1 = new CoronaServices();
		ad=c1.adminlogin(username, password);
		if(ad.equals("yes"))
		{
			return "DisplayTable";
		}
		else
		{
			return "Adminfail";
		}
	}
	
	public String showTable()
	{
		CoronaServices c1= new CoronaServices();
		//c1.showall();
		this.setL1(new ArrayList<>());
		try {
			this.setL1(c1.showall());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "Showtable";
	}

		
	
}
