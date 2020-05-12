package com.spring.service;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.domain.changePwdVO;

public interface RegisterService {

	//�쉶�썝媛��엯
	public boolean registMember(RegisterVO vo);
	
	//濡쒓렇�씤
	public AuthInfo loginMember(LoginVO vo);
	
	//以묐났�븘�씠�뵒 寃��궗
	public RegisterVO dupId(String userid);
	
	//�깉�눜泥섎━
	public boolean leaveMember(LoginVO vo);
	
	//getuser
	public RegisterVO getUser(String userid);
	
	//updateuser
	public boolean updateUser(String userid, String newPass);
	
	//비밀번호 변경
	public boolean changeMember(changePwdVO change);
	//정보 수정
	public boolean updateMember(RegisterVO vo);
}
