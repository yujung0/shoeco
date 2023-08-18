package com.shoeco.shoeco.common.model;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@NoArgsConstructor
@Data
public class SCBrandVO {
	
//2308181536 장유정 - 관리자 페이지 브랜드 등록을 위해서
	private long brandCode;
	private String brandName;
	private String businessNo;
	private String managerName;
	private long brandPhoneNo;
	private String brandEmail;
	private Date regDate; //등록일
	private Date updateDate; //수정일
	
}
