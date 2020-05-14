package com.spring.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ReviewVO {
	int itemno;
	int reviewno;
	String content;
	int replycnt;
	String title;
	String userid;
	Date replydate;
	Date updatedate;
	int readcount;
	private List<ReviewAttachFileDTO> attachList;
	
	
}
