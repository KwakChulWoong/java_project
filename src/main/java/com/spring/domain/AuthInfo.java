package com.spring.domain;

import lombok.Data;

@Data
public class AuthInfo {
	//로그인 성공한 후 정보를 담을 객체
	private String userid;
	private String name;
}
