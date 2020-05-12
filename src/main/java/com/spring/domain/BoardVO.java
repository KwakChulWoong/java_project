package com.spring.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private String address;
	private int despoit;
	private int rentcost;
	private int likes;
	private String uploadpath;
	private Date regdate;
	private String cat;
	private int reno;
	private int qno;
	private Date updatedate;
	private int replycnt;
	private String userid;
	//첨부파일 목록
	private List<AttachFileDTO> attachList;
}
