package com.company.bean;

import java.util.Properties;

import javax.mail.Message;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sender {

	public static void send(String user, String subject, String msg,
			final String email, final String pass) {
		// TODO Auto-generated method stub
		
		Properties props = new Properties();
	
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
	

		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(email, pass);
					}

				});

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(email));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
					user));
			message.setSubject(subject);
			message.setText(msg);
			
			Transport.send(message);
			System.out.println("done");
		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}
