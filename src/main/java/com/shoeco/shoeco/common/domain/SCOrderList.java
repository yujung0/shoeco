package com.shoeco.shoeco.common.domain;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
 
public class SCOrderList {

	private long prodCode;
	private long prodOptionNo;
	private long rowCount;
	private long rowPrice;
	
	public SCOrderList(long prodCode,String optionNoStr,String countStr, String countStr2) {
		this.prodCode = prodCode;
		this.prodOptionNo= Long.parseLong(optionNoStr );
		this.rowPrice= Long.parseLong(countStr);
		this.rowCount= Long.parseLong(countStr2);
	}

}
