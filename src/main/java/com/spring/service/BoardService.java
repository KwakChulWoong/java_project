package com.spring.service;

import java.util.List;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;


public interface BoardService {
	public boolean register(BoardVO vo) throws Exception;
	public List<BoardVO> getList(Criteria cri) throws Exception;
	public BoardVO getRow(int bno) throws Exception;
	public boolean updateRow(BoardVO vo) throws Exception;
	public boolean deleteRow(int bno) throws Exception;
	public int totalRows(Criteria cri) throws Exception;
	
	
	//첨부파일 리스트 추출
	public List<AttachFileDTO> getAttachlist(int bno);
	
}
