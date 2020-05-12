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

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private AttachMapper attach;
	
	@Override
	public boolean register(BoardVO vo) {
		//새글 등록
		mapper.insert(vo);
		
		//첨부파일이 null이 아니면 첨부파일 등록
		if(vo.getAttachList() == null ||vo.getAttachList().size() <= 0) {
			return false;
		}
		
		vo.getAttachList().forEach(attach1 ->{
			attach1.setBno(vo.getBno());
			attach.insert(attach1);
			
		});
		
		return true;
	}
	
	@Override
	public List<BoardVO> getList(Criteria cri) throws Exception {
		
		return mapper.getList(cri);
	}
	
	@Override
	public BoardVO getRow(int bno) throws Exception {
		
		return mapper.read(bno);
	}
	
	@Override
	public boolean updateRow(BoardVO vo) throws Exception {
	
		return mapper.update(vo)>0;
	}
	
	@Transactional
	@Override
	public boolean deleteRow(int bno) throws Exception {
		attach.deleteAll(bno);
		return mapper.remove(bno)>0;
	}
	
	@Override
	public int totalRows(Criteria cri) {
	
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<BoardVO> getList() throws Exception {
		
		return null;
	}


}
