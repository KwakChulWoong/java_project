package com.spring.mapper;

import java.util.List;

import com.spring.domain.AttachFileDTO;

public interface AttachMapper {
	public int insert(AttachFileDTO attach);
	
	//특정 첨부물 삭제
	public int delete(int uuid);
	public List<AttachFileDTO> select(int bno);
	
	//전체 첨부물 삭제
	
	public int deleteAll(int bno);
	
	
	
}
