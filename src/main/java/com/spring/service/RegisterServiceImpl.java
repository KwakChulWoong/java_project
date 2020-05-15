package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.domain.changePwdVO;
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

	@Override
	public RegisterVO dupId(String userid) {
		
		return mapper.selectById(userid);
	}

	@Override
	public boolean leaveMember(LoginVO vo) {
		
		return mapper.leave(vo)>0?true:false;
	}
	
	@Override
	public RegisterVO getUser(String userid) {
		return mapper.getUser(userid);
	}

	@Override
	public boolean updateUser(String userid, String newPass) {
		return mapper.updateUser(userid, newPass)>0?true:false;
	}
	@Override
	public boolean changeMember(changePwdVO change) {
//		change.setNew_password(MemberSha256.encrypt(change.getNew_password()));
//		change.setConfirm_password(MemberSha256.encrypt(change.getConfirm_password()));		
		return mapper.changePwd(change) >0 ? true:false;
	}

	@Override
	public boolean updateMember(RegisterVO vo) {
		vo.setPasswdconfirm(MemberSha256.encrypt(vo.getPasswdconfirm()));
		return mapper.updateMember(vo)>0?true:false;
	}

}
