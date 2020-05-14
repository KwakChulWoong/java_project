package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;
import com.spring.domain.ItemCriteria;

public interface BoardMapper {
	public int insert(BoardVO vo);
	public List<BoardVO> getList(ItemCriteria cri);
	public BoardVO read(int bno);
	public int update(BoardVO vo);
	public int remove(int bno);
	public int getTotalCount(ItemCriteria cri);
	public int updateReplycnt(@Param("bno") int bno, @Param("amount") int amount);
}
