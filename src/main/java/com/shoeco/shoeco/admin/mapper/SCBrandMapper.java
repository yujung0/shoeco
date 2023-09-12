package com.shoeco.shoeco.admin.mapper;

import java.util.List;

import com.shoeco.shoeco.admin.model.SCBrandVO;
import com.shoeco.shoeco.admin.model.SCCriteria;

public interface SCBrandMapper {

	// 2308181539 장유정 
	//브랜드 등록
	public void brandEnroll(SCBrandVO brand);
	
	 // 가장 큰 브랜드 코드 조회
    int getMaxBrandCode();
    
    // 작가 목록
    public List<SCBrandVO> brandGetList(SCCriteria cri);
    
    // 작가 총 수
    public int brandGetTotal(SCCriteria cri); // 조건문에 사용할 keyword 데이터를 전달 받기 위해 파라미터로 SCCriteria 클래스 부여 

    // 2308291606 장유정
    // 브랜드 상세
    public SCBrandVO brandGetDetail (int brandCode);

    //세연: pull받고 serviceImpl오류나서 임시로 추가
	public int brandModify(SCBrandVO brand);
}
