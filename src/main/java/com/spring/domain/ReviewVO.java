package com.spring.domain;

import java.util.Date;

import java.util.List;

import lombok.Data;

@Data
public class ReviewVO {
	int rno;
	int reno;
	int bno;
	String content;
	String replyer;
	int replycnt;
	String title;
	String userid;
	Date replydate;
	Date updatedate;
	private List<AttachFileDTO> attachList;
	
	
}
