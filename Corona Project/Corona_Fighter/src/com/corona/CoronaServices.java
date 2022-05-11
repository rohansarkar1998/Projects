package com.corona;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
//import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class CoronaServices {

	public String creatCandidate(Candidate c) {
		EntityManager em = null;
		String str;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			et.begin();
			em.persist(c);
			et.commit();
			str="yes";
			return str;

		}

		catch (Exception e) {
			//e.printStackTrace();
			//throw e;
			str="not";
			return str;
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	public String CheckCandidate(String Username,String password)
	{
		String str;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("SELECT k FROM Candidate K");
			@SuppressWarnings("unchecked")
			List<Candidate> list1= q.getResultList();
			for(int i=0;i<list1.size();i++)
			{
				if(list1.get(i).getUsername().equals(Username)  && list1.get(i).getPassword().equals(password) )
				{
					str="yes";
					return str;
		
				}
				
			
			}
			
			return "null";
	
		
		
	}
	
		catch (Exception e) {
			//e.printStackTrace();
			//throw e;
			str="no";
			return str;
		} finally {
			if (em != null)
				em.close();
		}
	

}
	
	public String CandidateStatus(String Username,String str)
	{
		String str1;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			et.begin();
			Candidate candidate = em.find(Candidate.class, Username);
			candidate.setStatus(str);
			et.commit();
			str1="yes";
			return str1;
	}
	
		catch (Exception e) {
			str1="not";
			return str1;
		} finally {
			if (em != null)
				em.close();
		}
	
	
}
	
	public String CheckStatus(String Username)
	{
		String str;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("SELECT k FROM Candidate K");
			@SuppressWarnings("unchecked")
			List<Candidate> list1= q.getResultList();
			for(int i=0;i<list1.size();i++)
			{
				if(list1.get(i).getUsername().equals(Username))
				{
					str=list1.get(i).getStatus();
					System.out.print(str);
					return str;
		
				}
			
			}
			return "null";
		
		
	}
	
		catch (Exception e) {
			//e.printStackTrace();
			//throw e;
			str="not";
			return str;
		} finally {
			if (em != null)
				em.close();
		}
	

}
	
	public String Place(String location)
	{
		String str="";
		int count=0,count1=0;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("SELECT k FROM Candidate K");
			@SuppressWarnings("unchecked")
			List<Candidate> list1= q.getResultList();
			for(int i=0;i<list1.size();i++)
			{
				if(list1.get(i).getLocation().equals(location))
				{
					
						count = count+1;
					
				}
			}
			for(int i=0;i<list1.size();i++)
			{
				if(list1.get(i).getLocation().equals(location))
				{
					if(list1.get(i).getStatus().equals("Average chance of corona") || list1.get(i).getStatus().equals("High chance of corona"))
					{
						count1 = count1+1;
					}
		
				}
				str="Total number of test taken in your place is"+" "+count+" "+"among them number of possible cases"+" "+count1;
			
			}
			return str;
		
		
	}
	
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (em != null)
				em.close();
		}
	

}
	

	public String Person(String username)
	{
		String str;
		int count=0;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("SELECT k FROM Candidate K");
			@SuppressWarnings("unchecked")
			List<Candidate> list1= q.getResultList();
			for(int i=0;i<list1.size();i++)
			{
				if(list1.get(i).getUsername().equals(username))
				{
					str=list1.get(i).getStatus();
					return str;
		
				}
			
			}
		return "null";
		
		
	}
	
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (em != null)
				em.close();
		}
	

}
	
	public String Changepass(String username,String password)
	{

		String str1;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			et.begin();
			Candidate candidate = em.find(Candidate.class, username);
			candidate.setPassword(password);
			et.commit();
			str1="yes";
			return str1;
	}
	
		catch (Exception e) {
			str1="not";
			return str1;
		} finally {
			if (em != null)
				em.close();
		}
	
}
	
	public String adminlogin(String username,String password) {
	String str;
	EntityManager em = null;
	try {
		System.out.println("Inside Service");
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
		em = emf.createEntityManager();			
		EntityTransaction et = em.getTransaction();
		Query q = em.createQuery("SELECT k FROM Admin K");
		@SuppressWarnings("unchecked")
		List<Admin> list1= q.getResultList();
		for(int i=0;i<list1.size();i++)
		{
			if(list1.get(i).getUsername().equals(username)  && list1.get(i).getPassword().equals(password) )
			{
				str="yes";
				return str;
	
			}
			
		
		}
		
		return "null";

	
	
}

	catch (Exception e) {
		//e.printStackTrace();
		//throw e;
		str="no";
		return str;
	} finally {
		if (em != null)
			em.close();
	}


}
	
	public List<Candidate> showall()
	{
		String str;
		EntityManager em = null;
		try {
			System.out.println("Inside Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("Corona_Fighter");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("SELECT k FROM Candidate K");
			@SuppressWarnings("unchecked")
			List<Candidate> list1= q.getResultList();
			List<Candidate> list2 = new ArrayList<Candidate>();
			for(int i=0;i<list1.size();i++)
			{
				Candidate c = new Candidate();
				c.setName(list1.get(i).getName());
				c.setAge(list1.get(i).getAge());
				c.setLocation(list1.get(i).getLocation());
				c.setPhonenum(list1.get(i).getPhonenum());
				c.setStatus(list1.get(i).getStatus());
				list2.add(c);
			}
			return list2;
	}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (em != null)
				em.close();
		}
	
}
	
}
