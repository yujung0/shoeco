package com.shoeco.shoeco.common.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ListPagingDTO {
	
	private Integer pageNum;
	private Integer perPage;
	
//	검색 관련
	private String category;
	
	private String arraykeyword; //정렬관련 keyword desc
	
	private String keyword;
	private String colorArray[];
	private String sizeArray[];
	private String brandArray[];
	
//	private String soldOut; 향후 고려 
	

	public ListPagingDTO(Integer pageNum, Integer perPage){
		
		this.pageNum = pageNum;
		 
		
		if(pageNum == null || pageNum <=0) {
		
			this.pageNum = 1;
			
		}else {
			this.pageNum = pageNum;
		}
		
		if(perPage== null ) {
			
			this.perPage= 20;
			
		}else {
			this.perPage= pageNum;
		}
		 
	}
}
