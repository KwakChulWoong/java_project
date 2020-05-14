package com.spring.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.spring.domain.ReviewVO;
import com.spring.mapper.ReviewAttachMapper;
import com.spring.mapper.ReviewMapper;





@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewAttachMapper attach;
	@Autowired
	private ReviewMapper review;
	@Override
	
	public boolean ItemReviewRegister(ReviewVO vo) throws Exception {
		review.insertReview(vo);
		//첨부파일이 null이 아니면 첨부파일 등록
				if(vo.getAttachList()==null || vo.getAttachList().size()<=0) {
					return false;
				}
				vo.getAttachList().forEach(attach1 ->{
					attach1.setReviewno(vo.getReviewno());
					attach.insert(attach1);
				});
				return true;
	}








}
