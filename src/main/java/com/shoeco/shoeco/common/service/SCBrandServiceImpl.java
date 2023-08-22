package com.shoeco.shoeco.common.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.mapper.SCBrandMapper;
import com.shoeco.shoeco.common.model.SCBrandVO;

@Service
@Primary // @Primary 어노테이션을 사용하여 우선적으로 주입할 빈을 지정
public class SCBrandServiceImpl implements SCBrandService  {

	// 2308181601 장유정
	@Autowired
	SCBrandMapper scBrandMapper;
	
	  @Autowired
	    BrandService brandService; // BrandService 클래스 주입
	
	@Override
	public void brandEnroll(SCBrandVO brand) throws Exception {
		 // 브랜드 코드 설정 로직
        int maxBrandCode = scBrandMapper.getMaxBrandCode(); // 최대 브랜드 코드 조회
        int nextBrandCode = maxBrandCode + 1; // 다음 브랜드 코드 계산
        brand.setBrandCode(nextBrandCode); // 브랜드 객체에 브랜드 코드 설정
        
        // regDate와 updateDate 필드 설정
        Date now = new Date(); // 현재 시간 가져오기
        brand.setRegDate(now);
        brand.setUpdateDate(now);
        
        // 브랜드 등록 쿼리 수행
        scBrandMapper.brandEnroll(brand);
		

	}
}

	

