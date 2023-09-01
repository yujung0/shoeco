package com.shoeco.shoeco.common.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.common.domain.SCOrderList;
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
    //@PreAuthorize("isAuthenticated()") 시큐리티가 아니라 안먹음 , 새로운 법 강구, 이전 페이지에서 로그인 팝업 뜨게 하기 
	public void showOrderPage(Model model,
								@RequestParam("prodCode") String prodCode,
								@RequestParam("optionNoStr") String optionNoStr,
								@RequestParam("countStr") String countStr,
								@RequestParam("countStr2") String countStr2) {
		
		System.out.println("주문 페이지 접근");

		
		String[] optionNoArray = optionNoStr.split(",");
		String[] countArray = countStr.split(",");
		String[] countArray2 = countStr2.split(",");
		
		
		List<SCOrderList> orderList = new ArrayList<>();
		 for(int i = 0 ; i < optionNoArray.length ; i ++) {
			 	orderList.add(new SCOrderList(prodCode, optionNoArray[i], countArray[i], countArray2[i]) );
		 }
		
		 model.addAttribute("orderList",orderList);
		 
		 
	}
	
}
