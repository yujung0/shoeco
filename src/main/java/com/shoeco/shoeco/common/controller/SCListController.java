package com.shoeco.shoeco.common.controller;

import org.springframework.ui.Model;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoeco.shoeco.common.paging.ListPagingDTO;
import com.shoeco.shoeco.common.service.SCListService;

@Controller
//@RequestMapping("/list")

public class SCListController {

	//23.8.8 세연 생성
	//생성자 주입
	private SCListService scListService;
	
	public SCListController(SCListService scListService) {
		this.scListService = scListService;
	}
	
	
	@GetMapping("/list")
	public void showCategoryList(Model model,ListPagingDTO paging){
		model.addAttribute("categoryList",scListService.getCategoryList(paging));
		model.addAttribute("minPrice",scListService.MinPrice());
		model.addAttribute("maxPrice",scListService.MaxPrice());
		System.err.println(scListService.MinPrice());
		System.err.println(scListService.MaxPrice());
		 
	}

	 
	
}
