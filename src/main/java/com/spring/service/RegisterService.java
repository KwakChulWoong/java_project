package com.spring.service;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;

public interface RegisterService {

	//회원가입
	public boolean registMember(RegisterVO vo);
	
	//로그인
	public AuthInfo loginMember(LoginVO vo);
}
