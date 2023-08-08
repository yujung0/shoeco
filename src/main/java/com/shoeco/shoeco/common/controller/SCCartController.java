package com.shoeco.shoeco.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoeco.shoeco.common.service.SCCartService;
import com.shoeco.shoeco.common.service.SCUsersService;

import lombok.AllArgsConstructor;

//230808 동현 작성
@Controller
@AllArgsConstructor
@RequestMapping("/")
public class SCCartController {
	
	private SCCartService cartService ;
	
	// 회원 등록
	@GetMapping("/cart")
	public void showCartList(){
		
		System.out.println("controller의 showCartList 메서드 실행: " + cartService.selectCart());
		
	}

		
}
