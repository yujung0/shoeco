package com.shoeco.shoeco.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoeco.shoeco.common.service.SCCartService;

import lombok.AllArgsConstructor;

//230808 동현 작성
@Controller
@AllArgsConstructor
@RequestMapping("/")
public class SCCartController {
	
	private SCCartService cartService ;
	
	// 회원의 장바구니 목록 조회
	@GetMapping("/cart")
	public void showCartList(Model model){
		
		model.addAttribute("cartList", cartService.selectCart());
	}

		
}
