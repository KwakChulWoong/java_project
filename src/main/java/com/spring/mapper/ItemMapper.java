package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemCriteria;
import com.spring.domain.ItemVO;
import com.spring.domain.ReviewVO;
import com.spring.domain.TestVO;

public interface ItemMapper {
	public int insertItemRegister(ItemVO vo);
	public List<ItemVO> getList(Criteria cri); //마이페이지 보여주는 리스트
	
	public List<ReviewVO> getReviewList();
	
	public ItemVO detail(int itemno);
	
	
//	public BoardVO readList(int bno);
//	public int update(BoardVO vo);
//	public int delete(int bno);
//	public int updateReplycnt(@Param("bno")int bno,@Param("amount")int amount);
	
	
	
	//----------------------------
	public List<ItemVO> selectItemList();
	//8개씩 가져오기
	public List<ItemVO> totalItemList(ItemCriteria cri);
	public int totalItemCount(ItemCriteria cri);
	
	public List<TestVO> itemno();
	
	public AttachFileDTO get_detail_img(AttachFileDTO dto);
	
	//페이지 나누기 관련 총게시물
	public int mypageTotalCount(Criteria cri);
	
}
