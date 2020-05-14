package com.spring.service;

import java.util.List;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemVO;
import com.spring.domain.ReviewVO;

public interface ItemService {
	//게시글 작성
	public boolean ItemRegister(ItemVO vo) throws Exception;

	
	//	아이템 리스트
	public List<ItemVO> getItemList(ItemCriteria cri) throws Exception;
	public int totalItemRows(ItemCriteria cri) throws Exception;


//	public List<ReviewVO> getReviewList() throws Exception;
//	//read 
	public BoardVO readList(int bno) throws Exception;
//	//modify
//	public boolean updateRow(BoardVO vo) throws Exception;
//	//remove
//	public boolean deleteRow(int bno) throws Exception;
//	//게시글 전체
//	
//	//첨부파일 리스트 추출
//	public List<AttachFileDTO> getAttachList(int bno);
//	
//	

	public List<ItemVO> popularItem(); 
}
