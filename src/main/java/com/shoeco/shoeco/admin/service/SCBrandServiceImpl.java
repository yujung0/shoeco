package com.shoeco.shoeco.admin.service;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.admin.mapper.SCBrandMapper;
import com.shoeco.shoeco.admin.model.SCBrandVO;
import com.shoeco.shoeco.admin.model.SCCriteria;

import lombok.extern.log4j.Log4j;

@Service
@Primary // @Primary 어노테이션을 사용하여 우선적으로 주입할 빈을 지정
@Log4j
public class SCBrandServiceImpl implements SCBrandService  {

	// 2308261435 장유정 - 브랜드 목록 페이징 처리
	private static final Logger log = LoggerFactory.getLogger(SCBrandServiceImpl.class);
	
	// 2308181601 장유정
	@Autowired
	SCBrandMapper scBrandMapper;
	

	@Override
	public void brandEnroll(SCBrandVO brand) {
	    try {
	        int maxBrandCode = scBrandMapper.getMaxBrandCode(); // 최대 브랜드 코드 조회

	        // 다음 브랜드 코드가 313보다 작으면 313으로 설정
	        int nextBrandCode = Math.max(maxBrandCode + 1, 313);

	        brand.setBrandCode(nextBrandCode); // 브랜드 객체에 브랜드 코드 설정

	        Date now = new Date();
	        brand.setRegDate(now);
	        brand.setUpdateDate(now);

	        scBrandMapper.brandEnroll(brand); // 브랜드 등록 쿼리 수행
	        System.out.println("maxBrandCode: " + maxBrandCode);
	        
	    } catch (Exception e) {
	        // 예외 처리
	        // 예: logger.error("브랜드 등록 중 오류 발생", e);
	        // 또는 예외를 다시 던질 수도 있습니다.
	        throw new RuntimeException("브랜드 등록 중 오류 발생", e);
	    }
	}


	@Override
	public int getMaxBrandCode() throws Exception {
	    return scBrandMapper.getMaxBrandCode();
	}
	
	@Override
	public List<SCBrandVO> brandGetList(SCCriteria cri) throws Exception {
		
		log.info("(service)brandGetList()..." + cri);
		
		return scBrandMapper.brandGetList(cri);
	}

	// 작가 총 수
	@Override
	public int brandGetTotal(SCCriteria cri) throws Exception {
		log.info("(service)brandGetTotal()..." + cri);
		return scBrandMapper.brandGetTotal(cri);
	}
	
	// 2308291603 장유정
	// 작가 상세 페이지
	@Override
	public SCBrandVO brandGetDetail (int brandCode) throws Exception {
		log.info("brandGetDetail - " + brandCode);
		return scBrandMapper.brandGetDetail(brandCode);
	}

}

	

