package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;

public interface UserMapper {

	//비밀번호 잊었을 때 이메일 인증 작업 userid, newPass
	public int updateUser(@Param("userid") String userid, @Param("newPass") String newPass);
	public BoardVO getUser(String userid);
	
}
