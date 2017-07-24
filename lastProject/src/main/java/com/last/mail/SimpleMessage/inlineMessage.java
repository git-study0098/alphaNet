package com.last.mail.SimpleMessage;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class inlineMessage {
	private JavaMailSender mailSender;
	private String  title;
	private String  sender;
	private String  receiver;
	private String  content;
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	public String getSender() {
		return sender;
	}


	public void setSender(String sender) {
		this.sender = sender;
	}


	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	public void send(String email,String ranNum){
		MimeMessage message =mailSender.createMimeMessage();
		try {
			MimeMessageHelper messageHelper=
					new MimeMessageHelper(message,true,"utf-8");
			messageHelper.setSubject("알파넷 본인인증을 위한 이메일입니다.");
			String htmlContent="<h1><strong>알파넷</strong>본인인증.<h1>"
					+ "<h3>본인인증을 위한 번호는 ["+ranNum+"]입니다."
					+ "<h3>해당페이지에 이 번호를 입력해주세요</h3>";
			messageHelper.setText(htmlContent, true);
			messageHelper.setFrom("qndjddl3008@naver.com", "알파넷관리자");
			messageHelper.setTo(new InternetAddress(email,"utf-8"));
			
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}


