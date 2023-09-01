package com.shoeco.shoeco.common.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SCProductVO {
	
	//detail , orderpage에 쓰는 VO

	//products
	private long prodCode;
	private long brandCode;
	private String prodName;
	private String gender;
	private long sellPrice;
	private String category;
	private String material;
	private String country;
	
	
	//brand
//	private long prodCode;
	private String brandName;
	private String businessNo;
	private String managerName;
	private long brandPhoneNo;
	private String brandEmail;
	
	
	//option
	private long prodOptionNo;
//	private long prodCode;
	private int prodSize;
	private String color;
	private long prodCount;
	
	
	//추후 product_Attach 추가 예정
	
	
}
