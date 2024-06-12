package com.shoeco.shoeco.admin.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SCCateVO {

	// 2309281544 장유정
	// 카테고리 리스트 객체 (카테고리 테이블의 데이터를 저장)
	
	// 카테고리 등급
	private int tier;
	
	// 카테고리 이름
	private String cateName;
	
	// 카테고리 넘버
	private String cateCode;
	
	// 상위 카테고리
	private String cateParent;
}
