package com.shoeco.shoeco.admin.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shoeco.shoeco.admin.model.SCBrandVO;
import com.shoeco.shoeco.admin.model.SCCriteria;
import com.shoeco.shoeco.admin.model.SCPageDTO;
import com.shoeco.shoeco.admin.service.SCBrandService;

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
	    public void brandManageGET(SCCriteria cri, Model model) throws Exception {
	    
	    	logger.info("브랜드 관리 페이지 접속 - " + cri);
	    	
	    	// 브랜드 목록 출력 데이터
	    	List list = scBrandService.brandGetList(cri);
	    	
//	    	model.addAttribute("list", list);
	    	
	    	if(!list.isEmpty()) {
	    		model.addAttribute("list", list); //브랜드 존재함
	    	} else {
	    		model.addAttribute("listCheck", "empty"); // 브랜드 존재 x
	    	}
	    	
	    	// 페이지 이동 인터페이스 데이터
	    	int total = scBrandService.brandGetTotal(cri);
	    	
	    	SCPageDTO pageMaker = new SCPageDTO(cri, total);
	    	
	    	model.addAttribute("pageMaker", pageMaker);
	    }
	    
	    // 2308211425 장유정
	    // 브랜드 등록
		/* @ResponseBody */
	    @RequestMapping (value = "brandEnroll.do", method = RequestMethod.POST)
	    public String brandEnrollPOST(SCBrandVO brand, RedirectAttributes rttr) throws Exception { 

	        logger.info("brandEnroll : " + brand);

	        int maxBrandCode = scBrandService.getMaxBrandCode(); // 최대 브랜드 코드 조회
	        int nextBrandCode = Math.max(maxBrandCode + 1, 313); // 다음 브랜드 코드 설정

	        brand.setBrandCode(nextBrandCode); // 브랜드 코드 설정

	        Date now = new Date();
	        brand.setRegDate(now);
	        brand.setUpdateDate(now);

	        scBrandService.brandEnroll(brand); // 브랜드 등록 쿼리 수행

	        rttr.addFlashAttribute("enroll_result", brand.getBrandName()); // 등록 성공 메시지 (브랜드 이름)

	        return "redirect:/admin/brandManage";
    	}

	    // 2308291608 장유정
	    // 브랜드 상세 페이지
	    @GetMapping("/brandDetail")
	    public void brandGetInfoGET(int brandCode, SCCriteria cri, Model model) throws Exception {
	    	
	    	logger.info("brandDetail - " + brandCode);
	    	
	    	// 브랜드 관리 페이지 정보
	    	model.addAttribute("cri", cri);
	    	
	    	// 선택 브랜드 정보
	    	model.addAttribute("brandInfo", scBrandService.brandGetDetail(brandCode));
	    }
	    
	    
	
	}	 

