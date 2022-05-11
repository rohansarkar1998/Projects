package com.OnlineShopping;
import com.email.*;
import com.email.durgesh.Email;
public class EmailBean {
	public void sendEmail(String mail)
	{
		try {
			
			Email email = new Email("rohansarkarmsit@gmail.com", "9474497622");
			email.setFrom("rohansarkarmsit@gmail.com", "Email test");
			email.setSubject("This is mail test");
			email.setContent("<h1>This is content</h1>", "text/html");
			email.addRecipient(mail);
			email.send();
		}
		catch(Exception e)
		{
			
		}
	}

}
