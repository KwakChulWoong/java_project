package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@ToString
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PageVO {
	//페이지 나누기와 관련된 정보를 담고 있는 객체
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	//전체 게시물 수
	private int total;
	//현재 페이지 번호, 피이지당 보여줄 게시물 수 객체
	private Criteria cri;
	
	public PageVO(Criteria cri, int total) {
		this.total=total;
		this.cri = cri;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10;
		this.startPage = this.endPage-9;
		
		int realEndPage = (int)(Math.ceil((total/1.0)/cri.getAmount()));
		if(realEndPage < endPage) {
			this.endPage = realEndPage;
		}
		this.prev = this.startPage>1;
		this.next = this.endPage<realEndPage;
	}
}
