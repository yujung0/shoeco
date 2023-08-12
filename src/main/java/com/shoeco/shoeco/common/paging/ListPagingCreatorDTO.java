package com.shoeco.shoeco.common.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ListPagingCreatorDTO {

	private ListPagingDTO paging;
	  
	private int startNum;
	private int endNum;
	private boolean next;
	private boolean prev;
	private long rowTotal;
	private int pagingCount; //한번에 표시되는 페이지
	private int lastNum;


	public ListPagingCreatorDTO(long rowTotal,ListPagingDTO paging) {
	
		this.paging = paging;
		this.rowTotal = rowTotal;
		this.pagingCount = 10;
		
		this.endNum = (int)Math.ceil((double)paging.getPageNum() / this.pagingCount) * this.pagingCount ;
		this.startNum =  this.endNum  - (this.pagingCount - 1) ;
		this.lastNum = (int)Math.ceil((double)this.rowTotal/paging.getPerPage());
		this.prev = 1 < this.startNum ;
		this.next = this.lastNum > this.endNum ;
		
		
		if(this.endNum > this.lastNum) {
			this.endNum = this.lastNum ;
		}
		
		
		
		System.out.println("전달된 페이징 기본데이터-paging: " + this.paging.toString());
		System.out.println("시작 페이징번호: " + this.startNum);
		System.out.println("끝 페이징번호: " + this.endNum);
		System.out.println("이전버튼 표시 여부: " + this.prev);
		System.out.println("다음버튼 표시 여부: " + this.next);
		System.out.println("마지막 페이지 번호: " + this.lastNum);
	
	
	
	
	
	
	}















}
