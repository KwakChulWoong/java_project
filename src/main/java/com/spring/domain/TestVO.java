package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class TestVO {

	private int itemno;
	private String title;
	private String category;	
	private String content;
	private int deposit;
	private int rentcost;
	private Date regdate;
	private String userid;
	private int readcount;
	
	private String uuid;
	private String uploadPath;
	private String fileName;
	
	
}
