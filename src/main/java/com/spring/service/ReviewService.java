package com.spring.service;

import java.util.List;


import com.spring.domain.ReviewVO;

public interface ReviewService {
//	//item 등록
	public boolean ItemReviewRegister(ReviewVO vo) throws Exception;
	
	//리뷰목록
	public List<ReviewVO> getReview(int itemno) throws Exception;
}
