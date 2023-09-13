package com.shoeco.shoeco.common.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.common.domain.SCOrderList;
import com.shoeco.shoeco.common.service.SCDetailService;
import com.shoeco.shoeco.common.service.SCPaymentService;

@Controller
public class SCPaymentController {

	SCPaymentService scPaymentService ;
	SCDetailService scDetailService;
	
	SCPaymentController(SCPaymentService scPaymentService, SCDetailService scDetailService){
		this.scPaymentService = scPaymentService;
		this.scDetailService = scDetailService;
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
	
	
	//countStr : 한줄당가격, countStr2 : 수량
	@GetMapping(value="/orderPage") 
//    @PreAuthorize("isAuthenticated()") 시큐리티가 아니라 안먹음 , 새로운 법 강구, 이전 페이지에서 로그인 팝업 뜨게 하기 
	public void showOrderPage(Model model,
								@RequestParam("prodCode") String prodCode,
								@RequestParam("optionNoStr") String optionNoStr,
								@RequestParam("countStr") String countStr,
								@RequestParam("countStr2") String countStr2) {
		
		System.out.println("주문 페이지 접근");

		
		String[] optionNoArray = optionNoStr.split(",");
		String[] countArray = countStr.split(",");
		String[] countArray2 = countStr2.split(",");
		long prodCode2 = Long.parseLong(prodCode);
		long totalPrice = 0;
		
		List<SCOrderList> orderList = new ArrayList<>();
		 for(int i = 0 ; i < optionNoArray.length ; i ++) {
			 	orderList.add(new SCOrderList(prodCode2, optionNoArray[i], countArray[i], countArray2[i]) );
			 	totalPrice += Long.parseLong(countArray[i]);
		 }
		
		 model.addAttribute("orderList",orderList);
		 model.addAttribute("orderBrand",scDetailService.getProduct(prodCode2).get(0)); //한 prodCode에 대해서만 나오는 brandCode
		 model.addAttribute("totalPrice",totalPrice);

		//현재 로그인한 사용자의 Id값 ->일단 admin으로 적용시키기/ContextHolder는 나중문제 
		 
		
		String username = "admin" ;
		 
		model.addAttribute("user",scDetailService.getMember(username));
//		System.out.println(scDetailService.getMember(username).get(0).getUserAddress2());
		 
		 
		 
		 
	}
	
	
	
	@GetMapping(value="/payment")
	public void activePay() {
		
		
		
	}
	
	//결제 컨트롤러
	
	
	
}
