package com.OnlineShopping;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;





public class CustomerServices {
	
	public String creatUser(User c)
	{
		EntityManager em = null;
		String str = "yes";
		
		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
	
			em = emf.createEntityManager();	
			
			EntityTransaction et = em.getTransaction();
			
			et.begin();
			em.persist(c);
			
			et.commit();
			return str;

		}

		catch (Exception e) {
			//e.printStackTrace();
			//throw e;
			str = "no";
			return str;
		
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	
	public String userLogin(String email, String password)
	{
		String str="no";
		EntityManager em = null;
		try {
			System.out.println("InsideE Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("FROM User");
			@SuppressWarnings("unchecked")
			List<User> list1= q.getResultList();
			int i;
			for(i=0;i<list1.size();i++)
			{
				if(list1.get(i).getEmail().equals(email) && list1.get(i).getPassword().equals(password))
				{
					System.out.print("YEssssssss Successsss");
					str="yes";
					
				}
				
			}
			return str;
	}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
//			str="no";
//			return str;
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	public String adminLogin(String email, String password)
	{
		String str="no";
		EntityManager em = null;
		try {
			System.out.println("InsideE Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("FROM Manager");
			@SuppressWarnings("unchecked")
			List<Manager> list1= q.getResultList();
			int i;
			for(i=0;i<list1.size();i++)
			{
				if(list1.get(i).getEmail().equals(email) && list1.get(i).getPassword().equals(password))
				{
					System.out.print("YEssssssss Successsss");
					str="yes";
					
				}
				
			}
			return str;
	}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
//			str="no";
//			return str;
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	
	public int getTid()
	{
		int size=0;
		EntityManager em = null;
		try {
			System.out.println("InsideE Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("FROM Transaction");
			@SuppressWarnings("unchecked")
			List<Transaction> list1= q.getResultList();
			size = list1.size();
			System.out.print(size);
			return size;
	}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
//			str="no";
//			return str;
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	
	public void generateTransaction(Transaction t)
	{
		EntityManager em = null;
		
		
		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
	
			em = emf.createEntityManager();	
			
			EntityTransaction et = em.getTransaction();
			
			et.begin();
			em.persist(t);
			
			et.commit();
			

		}

		catch (Exception e) {
			e.printStackTrace();
			throw e;
			
		
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	public String changePassword(String email,String password)
	{
		String str="";
		
		EntityManager em = null;
		try {
			System.out.println("InsideE Service");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
			em = emf.createEntityManager();			
			EntityTransaction et = em.getTransaction();
			
			et.begin();
			User u=em.find(User.class, email);
			u.setPassword(password);
			et.commit();
			str="yes";
			return str;
		
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
	
	public String creatAdmin(Manager m)
	{
		EntityManager em = null;
		String str = "yes";
		
		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
	
			em = emf.createEntityManager();	
			
			EntityTransaction et = em.getTransaction();
			
			et.begin();
			em.persist(m);
			
			et.commit();
			return str;

		}

		catch (Exception e) {
			//e.printStackTrace();
			//throw e;
			str = "no";
			return str;
		
		} finally {
			if (em != null)
				em.close();
		}
	}
	
	public List<Transaction> listOfTransaction()
	{
		EntityManager em = null;
		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
			
			em = emf.createEntityManager();		
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("FROM Transaction");
			@SuppressWarnings("unchecked")
			List<Transaction> list1= q.getResultList();
			List<Transaction> list2= new ArrayList<Transaction>();
			int i;
			for(i=0;i<list1.size();i++)
			{
					Transaction de = new Transaction();
					de.setTid(list1.get(i).getTid());
					de.setName(list1.get(i).getName());
					
					de.setEmail(list1.get(i).getEmail());
					de.setBuyingDate(list1.get(i).getBuyingDate());
					de.setAddress(list1.get(i).getAddress());
					de.setCity(list1.get(i).getCity());
					
					list2.add(de);
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
	
	
	public List<Manager> ListOfAdmin()
	{
		EntityManager em = null;
		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("EcommerceProject");
			
			em = emf.createEntityManager();		
			EntityTransaction et = em.getTransaction();
			Query q = em.createQuery("FROM Manager");
			@SuppressWarnings("unchecked")
			List<Manager> list1= q.getResultList();
			List<Manager> list2= new ArrayList<Manager>();
			int i;
			for(i=0;i<list1.size();i++)
			{
					Manager de = new Manager();
					de.setName(list1.get(i).getName());
					de.setEmail(list1.get(i).getEmail());
					list2.add(de);
					
					
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


