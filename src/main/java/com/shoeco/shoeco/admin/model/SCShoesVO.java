package com.shoeco.shoeco.admin.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SCShoesVO {
	
	//2309181600 장유정
	//상품 테이블(SC_PRODUCTS) 테이블의 데이터들을 한 번에 전달 받거나 전달하기 위해 생성
	
	
	private String prodName; 
	private String gender;
	private int sellPrice;
	private String category;
	private String material; //소재
	private String country; //제조국
	private Date regDate;
	private Date updateDate;
	private int prodDiscount; //상품 할인율
	private String prodContents; //제품 내용
	private int prodStock; //제품 재고
	private int prodCode;
	private int brandCode;
	
	
}
