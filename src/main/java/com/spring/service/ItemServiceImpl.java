package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemVO;
import com.spring.domain.ReviewVO;
import com.spring.mapper.AttachMapper;

import com.spring.mapper.ItemMapper;

@Service
public class ItemServiceImpl implements ItemService {

	
	@Autowired
	private AttachMapper attach;
	@Autowired
	private ItemMapper item;

	@Override
	public boolean ItemRegister(ItemVO vo) throws Exception {			
		item.insertItemRegister(vo);
		
		//첨부파일이 null이 아니면 첨부파일 등록
		if(vo.getAttachList()==null || vo.getAttachList().size()<=0) {
			return false;
		}
		vo.getAttachList().forEach(attach1 ->{
			attach1.setItemno(vo.getItemno());
			attach.insert(attach1);			
		});
		return true;
		
	}

	@Override
	public BoardVO readList(int bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

//	@Transactional
//	@Override
//	public boolean ItemRegister(ItemVO vo) throws Exception {
//		//새글 등록
//		mapper.insertItemRegister(vo);
//		
//		//첨부파일이 null이 아니면 첨부파일 등록
//		if(vo.getAttachList()==null || vo.getAttachList().size()<=0) {
//			return false;
//		}
//		vo.getAttachList().forEach(attach1 ->{
//			attach1.setBno(vo.getBno());
//			attach.insert(attach1);			
//		});
//		return true;
//	}
//

//	@Override
//	public BoardVO readList(int bno) throws Exception {
//		// TODO Auto-generated method stub
//		return mapper.readList(bno);
//	}

//	@Transactional
//	@Override
//	public boolean updateRow(BoardVO vo) throws Exception {
//		// bno에 해당하는 첨부물 삭제 후 현재 가져온 첨부물 삽입
//		attach.deleteAll(vo.getBno());
//
//		if (vo.getAttachList() == null || vo.getAttachList().size() <= 0) {
//			return false;
//		}
//		boolean modifyResult = mapper.update(vo) == 0 ? false : true;
//
//		if (modifyResult && vo.getAttachList().size() > 0) {
//			for (AttachFileDTO dto : vo.getAttachList()) {
//				dto.setBno(vo.getBno());
//				attach.insert(dto);
//			}
//
//		}
//
//		return modifyResult;
//	}

//	@Override
//	public boolean deleteRow(int bno) throws Exception {
//		// 첨부물 삭제
//		attach.deleteAll(bno);
//		// 게시글 삭제
//		return mapper.delete(bno) == 0 ? false : true;
//	}

//	@Override
//	public List<BoardVO> getList() throws Exception {
//		// TODO Auto-generated method stub
//		return mapper.getList();
//	}
//
//
//	@Override
//	public BoardVO readList(int bno) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//
//	@Override
//	public List<ReviewVO> getReviewList() throws Exception {
//		// TODO Auto-generated method stub
//		return mapper.getReviewList();
//	}

//
//	@Override
//	public int totalRows() throws Exception {
//		
//		return mapper.getTotalCount();
//	}
//
//
//	@Override
//	public List<AttachFileDTO> getAttachList(int bno) {
//		return attach.select(bno);
//	}

}
