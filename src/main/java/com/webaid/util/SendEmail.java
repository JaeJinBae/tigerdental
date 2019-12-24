package com.webaid.util;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

public class SendEmail {
	public void SendMail(String name, String m_addr, String content, String title) {
		System.out.println("sendmail 진입");
		
		String host = "smtp.naver.com";
		String user = "jangsiwonhp";
		String password = "jangsiwon1234";
		int port=465;
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(m_addr));

			// Subject
			//String subject = title;
			try {
				message.setSubject(MimeUtility.encodeText(title, "UTF-8", "B"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*String PwMeg = content;*/
			String PwMeg = content;

			// Text/Project_JSP/img/login/login.gif
			message.setText(PwMeg, "UTF-8");
			message.setHeader("content-Type", "text/html");

			// send the message
			Transport.send(message);
			System.out.println("전송성공");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
