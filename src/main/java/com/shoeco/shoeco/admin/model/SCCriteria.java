package com.shoeco.shoeco.admin.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter

// 2308251529 장유정 - 브랜드 목록 조회
public class SCCriteria {

	// 현재 페이지 번호
	private int pageNum;
	
	// 페이지 표시 개수
	private int amount;
	
	// 검색 타입
	private String type;
	
	// 검색 키워드
	private String keyword;
	
	// Criteria 생성자
	public SCCriteria (int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	// Criteria 기본 생성자
	public SCCriteria() {
		this(1, 10);
	}
	
	// 검색 타입 데이터 배열 변환
	public String[] getTypeArr() {
		return type == null? new String[] {}:type.split("");
	}
}
