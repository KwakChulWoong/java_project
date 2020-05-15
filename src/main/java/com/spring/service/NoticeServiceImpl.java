package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.mapper.AttachMapper;
import com.spring.mapper.BoardMapper;
import com.spring.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper mapper;
	
	@Override
	public List<BoardVO> listAll(Criteria cri) throws Exception {		
		return mapper.getList(cri);
	}	

	@Override
	public int totalRows(Criteria cri) throws Exception {		
		return mapper.getTotalCount(cri);
	}

	@Override
	public boolean register(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public BoardVO getRow(int bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateRow(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeRow(int bno) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<AttachFileDTO> getAttachList(int bno) {
		// TODO Auto-generated method stub
		return null;
	}
}






