package com.shoeco.shoeco.common.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shoeco.shoeco.common.model.SCBrandVO;
import com.shoeco.shoeco.common.service.SCBrandService;

@Controller
@RequestMapping("/admin")
	public class AdminController {
	 
	    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	    
	    @Autowired
	    private SCBrandService scBrandService; // 서비스 인터페이스를 의존성 주입
	    
	    /* 관리자 메인 페이지 이동 */
	    @RequestMapping(value="main", method = RequestMethod.GET)
	    public void adminMainGET() throws Exception{
	        
	        logger.info("관리자 페이지 이동");
	        
	    }
	    
	    // 상품 등록 페이지 접속
	    @RequestMapping(value = "goodsManage", method = RequestMethod.GET)
	    public void goodsManageGet() throws Exception {
	    	logger.info("상품 등록 페이지 접속");
	    }
	    
	    // 상품 등록 페이지 접속
	    @RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
	    public void goodsEnrollGET() throws Exception {
	    	logger.info("상품 등록 페이지 접속");
	    }
	    
	    // 브랜드 등록 페이지 접속 (author -> brand 대체)
	    @RequestMapping(value = "brandEnroll", method = RequestMethod.GET)
	    public void brandEnrollGET() throws Exception {
	        logger.info("브랜드 등록 페이지 접속");
	    }
	    
	    // 브랜드 관리 페이지 접속
	    @RequestMapping(value = "brandManage", method = RequestMethod.GET)
	    public void brandManageGET() throws Exception {
	    	logger.info("브랜드 관리 페이지 접속");
	    }
	    
	    // 2308211425 장유정
	    // 브랜드 등록
	    @RequestMapping (value = "brandEnroll.do", method = RequestMethod.POST)
	    public String brandEnrollPOST(SCBrandVO brand, RedirectAttributes rttr) throws Exception { 
	    	
//	    	logger.info("brandEnroll : " + brand);
//	    	
//	    	scBrandService.brandEnroll(brand);// 브랜드 등록 쿼리 수행
//	    	
//	    	rttr.addFlashAttribute("enroll_result", brand.getBrandName()); // 등록 성공 메시지 (브랜드 이름)
//	    	
//	    	return "redirect:/admin/brandManage";
	    	
	    	
	    	   logger.info("brandEnroll : " + brand);
	    	    
	    	    // 브랜드 코드 설정 로직
	    	    int maxBrandCode = scBrandService.getMaxBrandCode(); // 최대 브랜드 코드 조회
	    	    int nextBrandCode = maxBrandCode + 1; // 다음 브랜드 코드 계산
	    	    brand.setBrandCode(nextBrandCode); // 브랜드 객체에 브랜드 코드 설정
	    	    
	    	    // 브랜드 등록 쿼리 수행
	    	    scBrandService.brandEnroll(brand);
	    	    
	    	    rttr.addFlashAttribute("enroll_result", brand.getBrandName()); // 등록 성공 메시지 (브랜드 이름)
	    	    
	    	    return "redirect:/admin/brandManage";
	    }
	    
	
	}	 

