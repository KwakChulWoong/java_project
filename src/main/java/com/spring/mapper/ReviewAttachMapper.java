package com.spring.mapper;

import java.util.List;

import com.spring.domain.ReviewAttachFileDTO;



public interface ReviewAttachMapper {
	public int insert(ReviewAttachFileDTO attach);
//	//특정 첨부물 삭제
//	public int delete(int uuid);
//	//전체 첨부물 삭제 (게시글삭제)
//	public int deleteAll(int bno);
//	public List<AttachFileDTO> select(int bno);
//	//어제 날짜의 첨부물 리스트
//	public List<AttachFileDTO> getOldFiles();
}
