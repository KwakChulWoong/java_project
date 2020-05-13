package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemVO;
import com.spring.domain.ReviewVO;

public interface ItemMapper {
	public int insertItemRegister(ItemVO vo);
	public List<BoardVO> getList();
	public List<ReviewVO> getReviewList();
//	public BoardVO readList(int bno);
//	public int update(BoardVO vo);
//	public int delete(int bno);
//	public int updateReplycnt(@Param("bno")int bno,@Param("amount")int amount);
	
	
	
	//----------------------------
	public List<ItemVO> selectItemList();
	//8개씩 가져오기
	public List<ItemVO> totalList(Criteria cri);
	public int totalCount(Criteria cri);
	
}
