package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class ItemCriteria {
	private int pageNum;	//페이지 번호
	private int amount;		//한 페이지당 보여줄 게시물 수
	
	//검색과 관련된 정보 추가
	private String category;	
	
	
	public ItemCriteria() {
		this(1,8);
		this.category = "";
	}
	public ItemCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}	
	
}

