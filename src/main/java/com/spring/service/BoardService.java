package com.spring.service;

import java.util.List;

import com.spring.domain.AttachFileDTO;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.changePwdVO;


public interface BoardService {
	public boolean register(BoardVO vo) throws Exception;
//	public List<BoardVO> getList(Criteria cri) throws Exception;
	public BoardVO getRow(int bno) throws Exception;
	public boolean updateRow(BoardVO vo) throws Exception;
	public boolean deleteRow(int bno) throws Exception;
	public int totalRows(Criteria cri) throws Exception;
	
//	//寃뚯떆湲� �옉�꽦
//	public boolean ItemRegister(BoardVO vo) throws Exception;
	//寃뚯떆湲� 紐⑸줉
//	//read 
//	public BoardVO readList(int bno) throws Exception;
//	//modify
//	public boolean updateRow(BoardVO vo) throws Exception;
//	//remove
//	public boolean deleteRow(int bno) throws Exception;
//	//寃뚯떆湲� �쟾泥�
//	public int totalRows() throws Exception;
//	
//	//泥⑤��뙆�씪 由ъ뒪�듃 異붿텧
//	public List<AttachFileDTO> getAttachList(int bno);
//	
//	
	//泥⑤��뙆�씪 由ъ뒪�듃 異붿텧
	public List<AttachFileDTO> getAttachlist(int bno);
	public boolean changeMember(changePwdVO change);

	
}
