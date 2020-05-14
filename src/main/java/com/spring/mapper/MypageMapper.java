package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface MypageMapper {
	public int insert(BoardVO vo);
	public List<BoardVO> getList(Criteria cri); //마이페이지 보여주는 리스트
	public BoardVO read(int bno);
	public int update(BoardVO vo);
	public int remove(int bno);
	public int getTotalCount(Criteria cri);
	public int updateReplycnt(@Param("bno") int bno, @Param("amount") int amount);
}
