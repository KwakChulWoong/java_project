package com.spring.service;

import java.util.List;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemVO;
import com.spring.domain.TestVO;

public interface ItemService {
	//게시글 작성
	public boolean ItemRegister(ItemVO vo) throws Exception;

	
	//	아이템 리스트
	public List<ItemVO> getItemList(ItemCriteria cri) throws Exception;
	public int totalItemRows(ItemCriteria cri) throws Exception;


	//itemno 해당 디테일 페이지
	public ItemVO detail(int itemno) throws Exception;
	

	public List<ItemVO> getList(Criteria cri) throws Exception;


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

	public AttachFileDTO get_detail_img(AttachFileDTO dto) throws Exception;
	
	public List<ItemVO> popularItem(); 
	
	public List<TestVO> itemno();
	
	
	//페이지 나누기 총게시물
	public int mypagetotalRows(Criteria cri) throws Exception;
}

