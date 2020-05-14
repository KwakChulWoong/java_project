package com.spring.service;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
	
	//네이버 설정에 가서 POP3/SMTP 사용안함을 사용함으로 바꾸기
	
	//메일 서버 설정
	String charSet="utf-8";
	String hostSMTP="smtp.naver.com";
	String hostUser="socratechnic";
	String hostPass="cjfdndqjvm0401-";
	
	
	//보내는 사람
	String subject="";
	String sendUser="socratechnic@naver.com";
	
	@Override
	public void sendEmail(String newPass,String userEmail,String name) {
		subject = "임시 비밀번호";
		String msg = "임시 비밀번호는 다음과 같습니다.";
		msg+="<p>";
		msg+=newPass+"</p>";
		
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setSSLOnConnect(true);
			email.setCharset(charSet);			
			email.setHostName(hostSMTP);
			email.setSmtpPort(465);

			email.setAuthentication(hostUser, hostPass);			
			email.addTo(userEmail, name);
			email.setFrom(sendUser, "고객센터", charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
}