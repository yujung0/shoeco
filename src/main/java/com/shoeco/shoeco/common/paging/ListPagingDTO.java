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
	
	//급추가
	private String gender = "" ;
	
	private String category = "" ;
	
	
	private String arraykeyword; //정렬관련 keyword desc
	
	private String keyword = "" ;
	
	private Integer sizeArray[];
	private String colorArray[];
	
	//230816 최신순, 가격별정렬 설정 
	private int array; // 0(기본값) = 최신순, 1 = 가격낮은순, 2 = 가격높은순 
	//230816 품절상태 제외 표시
	private int exSoldout; // 0 (기본값) = 제외x, 1 = 제외
	
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
			
			this.perPage= 15;
			
		}else {
			this.perPage= pageNum;
		}
		 
		
	}
}
