package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;



import com.spring.domain.ReviewVO;

public interface ReviewMapper {
	public int insertReview(ReviewVO vo);
	public List<ReviewVO> getReview(int itemno);

}
