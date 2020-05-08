package com.spring.domain;

import lombok.Data;

@Data
public class RegisterVO {
	
	private String userid;
	private String name;
	private String passwd;
	private String passwdconfirm;
	private String gender;
	private String address;
	private String email;
	
	public boolean isPasswordEqualToConfirmPassword() {
		return this.passwd.equals(passwdconfirm);
	}
}
