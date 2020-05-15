package com.spring.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ItemVO {
	private int itemno;
	private String title;
	private String category;	
	private String content;
	private int deposit;
	private int rentcost;
	private Date regdate;
	private String userid;
	private int readcount;
	private List<AttachFileDTO> attachList;
	
	private String address;	
}

