package com.shoeco.shoeco.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.admin.mapper.SCAdminMapper;
import com.shoeco.shoeco.admin.model.SCShoesVO;

import lombok.extern.log4j.Log4j;


//@Log4j
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
	
}
