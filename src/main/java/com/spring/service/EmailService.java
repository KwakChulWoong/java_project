package com.spring.service;

public interface EmailService {
	
	//회원 비밀번호 잊어버렸을때 이메일로 인증하게끔 하는 서비스
	void sendEmail(String newPass, String userEmail, String name);
}
