package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.mapper.RegisterMapper;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	private RegisterMapper mapper;
	
	@Override
	public boolean registMember(RegisterVO vo) {
		return mapper.insertMember(vo)>0?true:false;
	}

	@Override
	public AuthInfo loginMember(LoginVO vo) {
		return mapper.login(vo);
	}

}
