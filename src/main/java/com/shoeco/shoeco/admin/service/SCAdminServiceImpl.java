package com.shoeco.shoeco.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.admin.mapper.SCAdminMapper;
import com.shoeco.shoeco.admin.model.SCCateVO;
import com.shoeco.shoeco.admin.model.SCShoesVO;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Log4j
@Log4j2
@Primary
@Service // 스프링이 해당 클래스가 service 역할을 하는 클래스로 인식할 수 있도록 하기 위함
public class SCAdminServiceImpl implements SCAdminService{

	@Autowired
	private SCAdminMapper scAdminMapper;
	
	// 상품 등록
	@Override
	public void shoesEnroll(SCShoesVO shoes) {
		System.out.println("(service)shoesEnroll 실행");
		
		scAdminMapper.shoesEnroll(shoes);
	}
	
	// 2309282030 장유정
	// 카테고리 리스트
	@Override
	public List<SCCateVO> cateList() {
		log.info("(service)cateList 실행");
		
		return scAdminMapper.cateList();
	}
	
}
