package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemVO;
import com.spring.domain.TestVO;
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

	@Override
	public List<ItemVO> popularItem() {
		return item.selectItemList();
		
	}

	//카테고리별 페이지 나누기
	@Override
	public List<ItemVO> getItemList(ItemCriteria cri) throws Exception {		
		return item.totalItemList(cri);
	}

	@Override
	public int totalItemRows(ItemCriteria cri) throws Exception {		
		return item.totalItemCount(cri);
	}
	
	
	public List<TestVO> itemno() {
		return item.itemno();
	}

	@Override

	public ItemVO detail(int itemno) throws Exception {
		
		return item.detail(itemno);
	}

	@Override
	public AttachFileDTO get_detail_img(AttachFileDTO dto) throws Exception {

		return item.get_detail_img(dto);
	}
	@Override
	public List<ItemVO> getList(Criteria cri) throws Exception {
		return item.getList(cri);

	}

	@Override
	public int mypagetotalRows(Criteria cri) throws Exception {
		return item.mypageTotalCount(cri);
		
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

