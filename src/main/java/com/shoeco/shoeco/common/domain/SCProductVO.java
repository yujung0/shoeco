package com.shoeco.shoeco.common.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SCProductVO {
	
	//prodCode 1개당 products 와 brand join해서 사용

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
	
	
}
