package com.shoeco.shoeco.common.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString	
public class SCList {

	//sc_products
	private String prodCode;
	private String brandCode;
	private String prodName;
	private String gender;
	private String sellPrice;
	private String category;
	private String material;
	private String country;
	
	
	//sc_products_attachments
	private String prodAttachUuid;
	//private String prodCode;
	private String uploadPath;
	private String prodFileName;
	private String prodFileType;
	
}
