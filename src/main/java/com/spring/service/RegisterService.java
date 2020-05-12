package com.spring.service;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;

public interface RegisterService {

	//회원가입
	public boolean registMember(RegisterVO vo);
	
	//로그인
	public AuthInfo loginMember(LoginVO vo);
	
	//중복아이디 검사
	public RegisterVO dupId(String userid);
	
	//탈퇴처리
	public boolean leaveMember(LoginVO vo);
	
	//getuser
	public RegisterVO getUser(String userid);
	
	//updateuser
	public boolean updateUser(String userid, String newPass);
}
