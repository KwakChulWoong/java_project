package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.changePwdVO;
import com.spring.mapper.AttachMapper;
import com.spring.mapper.BoardMapper;
import com.spring.mapper.RegisterMapper;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private RegisterMapper register;
	
	@Autowired
	private AttachMapper attach;
	
//	@Override
//	public boolean register(BoardVO vo) {
//		//�깉湲� �벑濡�
//		mapper.insert(vo);
//		
//		//泥⑤��뙆�씪�씠 null�씠 �븘�땲硫� 泥⑤��뙆�씪 �벑濡�
//		if(vo.getAttachList() == null ||vo.getAttachList().size() <= 0) {
//			return false;
//		}
//		
//		vo.getAttachList().forEach(attach1 ->{
//			attach1.setBno(vo.getBno());
//			attach.insert(attach1);
//			
//		});
//		
//		return true;
//	}
	
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
	public boolean changeMember(changePwdVO change) {		
		return register.changePwd(change)>0?true:false;
	}

@Override
public List<AttachFileDTO> getAttachlist(int bno) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public boolean register(BoardVO vo) throws Exception {
	// TODO Auto-generated method stub
	return false;
}
}
