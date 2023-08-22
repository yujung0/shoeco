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
	private int brandCode; // 브랜드 코드
	private String brandName; // 브랜드명
	private String businessNo; // 사업자 번호
	private String managerName; // 담당자 이름
	private long brandPhoneNo; // 브랜드 번호
	private String brandEmail; // 브랜드 메일
	private Date regDate; // 등록일
	private Date updateDate; // 수정일
	
}
