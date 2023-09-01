package com.shoeco.shoeco.common.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/*
 * @NoArgsConstructor
 * 
 * @AllArgsConstructor
 */
public class SCOrderList {

	private long prodCode;
	private long prodOptionNo;
	private long rowCount;
	private long rowPrice;
	
	public SCOrderList(String prodCode,String optionNoStr,String countStr, String countStr2) {
		this.prodCode = Long.parseLong(prodCode);
		this.prodOptionNo= Long.parseLong(optionNoStr );
		this.rowCount= Long.parseLong(countStr);
		this.rowPrice= Long.parseLong(countStr2);
	}

}
