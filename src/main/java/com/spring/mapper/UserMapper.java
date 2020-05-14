package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;

public interface UserMapper {

	public int updateUser(@Param("userid") String userid, @Param("newPass") String newPass);
	public BoardVO getUser(String userid);
	
}
