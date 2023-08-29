package com.shoeco.shoeco.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoeco.shoeco.admin.service.SCUsersService;

import lombok.AllArgsConstructor;

//230628 1303 동현 수정
@Controller
@AllArgsConstructor
@RequestMapping("/")
public class SCUsersController {
	
	private SCUsersService scUsersService ;
	
	// 회원 등록
	@GetMapping("/main")
	public void insertUser(){
		
		System.out.println("main 페이지 접속완료");
		
//		scUsersService.registerUser() ;
		
	}

		
}
