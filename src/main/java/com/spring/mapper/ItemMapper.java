package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItemVO;
import com.spring.domain.ReviewVO;

public interface ItemMapper {
	public int insertItemRegister(ItemVO vo);
	public List<ItemVO> getList(Criteria cri);
	
	public List<ReviewVO> getReviewList();
//	public BoardVO readList(int bno);
//	public int update(BoardVO vo);
//	public int delete(int bno);
//	public int getTotalCount();
//	public int updateReplycnt(@Param("bno")int bno,@Param("amount")int amount);
	
	
	
	//----------------------------
	public List<ItemVO> selectItemList();
	
}
