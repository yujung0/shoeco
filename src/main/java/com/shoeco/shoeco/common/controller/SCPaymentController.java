package com.shoeco.shoeco.common.controller;

import org.apache.maven.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.shoeco.shoeco.common.service.SCPaymentService;

@Controller
public class SCPaymentController {

	SCPaymentService scPaymentService ;
	
	SCPaymentController(SCPaymentService scPaymentService){
		this.scPaymentService = scPaymentService;
	}
	
	
	@GetMapping(value="/orderPage")
	public void showOrderPage(Model model) {
		System.out.println("주문 페이지 접근");
	}
	
	
}
