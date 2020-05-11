package com.spring.mapper;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;

public interface RegisterMapper {

	public int insertMember(RegisterVO vo);
	
	public AuthInfo login(LoginVO vo);
	
	public RegisterVO selectById(String userid);
	
}
