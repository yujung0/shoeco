package com.shoeco.shoeco.common.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
	public class AdminController {
	 
	    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	    
	    
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
	    
	
	}	 

