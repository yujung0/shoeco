package com.shoeco.shoeco.common.controller;

import org.apache.maven.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.common.service.SCPaymentService;

@Controller
public class SCPaymentController {

	SCPaymentService scPaymentService ;
	
	SCPaymentController(SCPaymentService scPaymentService){
		this.scPaymentService = scPaymentService;
	}
	
	/* 노쓸모 됨 optionNo에 담으면 되니 
	@GetMapping(value="/orderPage")
	public void showOrderPage(Model model,
			@RequestParam("prodCode") String prodCode,
			@RequestParam("colorStr") String colorStr,
			@RequestParam("sizeStr") String sizeStr,
			@RequestParam("countStr") String countStr,
			@RequestParam("countStr2") String countStr2) {
		System.out.println("주문 페이지 접근");
	}
	
	*/
	
	
	//countStr : 개당가격, countStr2 : 수량
	@GetMapping(value="/orderPage")
	public void showOrderPage(Model model,
			@RequestParam("prodCode") String prodCode,
			
			@RequestParam("optionNoStr") String optionNoStr,
			 
			@RequestParam("countStr") String countStr,
			@RequestParam("countStr2") String countStr2) {
		System.out.println("주문 페이지 접근");
	}
	
}
