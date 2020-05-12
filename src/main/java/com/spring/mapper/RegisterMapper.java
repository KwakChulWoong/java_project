package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.RegisterVO;
import com.spring.domain.changePwdVO;

public interface RegisterMapper {

	public int insertMember(RegisterVO vo);
	
	public AuthInfo login(LoginVO vo);
	
	public RegisterVO selectById(String userid);
	
	public int leave(LoginVO vo);
	
	public int updateUser(@Param("userid")String userid, @Param("newPass") String newPass);
	
	public RegisterVO getUser(String userid);
	
	public int changePwd(changePwdVO vo);
	public int updateMember(RegisterVO vo);
}
