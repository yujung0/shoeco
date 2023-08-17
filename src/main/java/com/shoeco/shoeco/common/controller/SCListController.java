package com.shoeco.shoeco.common.controller;

import org.springframework.ui.Model;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.shoeco.shoeco.common.paging.ListPagingCreatorDTO;
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
	
	
	
	
	//메개변수로 받아와서 한꺼 번에
	
	@GetMapping("/list")
	public void showCategoryList(Model model,ListPagingDTO paging,
			@RequestParam(name="sizeArray", required=false) String [] sizeArray ){
		
		
		
		
		
		
		model.addAttribute("categoryList",scListService.getCategoryList(paging));
		//System.err.println(scListService.getCategoryList(gender,paging).get(0).toString());
		model.addAttribute("pagingCre",new ListPagingCreatorDTO(scListService.rowTotal(paging),paging));
		model.addAttribute("minPrice",scListService.MinPrice(paging)); //long -> Long 처리
		model.addAttribute("maxPrice",scListService.MaxPrice(paging));
		
		//검색시에 값이 아예 없을 때 다시 range검색할수 있게하는 전체 총 최댓값
		model.addAttribute("totalMaxPrice",scListService.totalMaxPrice());
		
		
		
		  
		System.err.println(scListService.MinPrice(paging));
		System.err.println("=================조건에 맍는 distinct 행수: " + scListService.rowTotal(paging));
		System.err.println(scListService.MaxPrice(paging));
		
		
		 
		
		 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@GetMapping("/list")
//	public void showCategoryList(Model model,String gender,ListPagingDTO paging){
//		
//		model.addAttribute("categoryList",scListService.getCategoryList(gender,paging));
//		//System.err.println(scListService.getCategoryList(gender,paging).get(0).toString());
//		model.addAttribute("pagingCre",new ListPagingCreatorDTO(scListService.rowTotal(gender, paging),paging));
//		model.addAttribute("minPrice",scListService.MinPrice(gender,paging)); //long -> Long 처리
//		model.addAttribute("maxPrice",scListService.MaxPrice(gender,paging));
//		
//		//검색시에 값이 아예 없을 때 다시 range검색할수 있게하는 전체 총 최댓값
//		model.addAttribute("totalMaxPrice",scListService.totalMaxPrice());
//		
//		
//		
//		  
//		System.err.println(scListService.MinPrice(gender,paging));
//		System.err.println("=================조건에 맍는 distinct 행수: " + scListService.rowTotal(gender, paging));
//		System.err.println(scListService.MaxPrice(gender,paging));
//		
//		
//		 
//		
//		 
//	}
	
	//검색조건 array (배열도 조건 검색 하기 위해) / 실패 별도의 paging 객체 -> showCategoryLisst임 
	/*
	 * @ResponseBody
	 * 
	 * @GetMapping("/list/search") public ListPagingDTO showSearchList(Model
	 * model, @RequestParam("sizeArray") String[] sizeArray, ListPagingDTO paging) {
	 * 
	 * Integer[] sizeArray0 = new Integer[sizeArray.length];
	 * 
	 * for(int i = 0 ; i < sizeArray.length ; i ++) {
	 * 
	 * 
	 * sizeArray0[i] = Integer.parseInt(sizeArray[i]);
	 * 
	 * 
	 * }
	 * 
	 * paging.setSizeArray(sizeArray0);
	 * 
	 * System.out.println("sizeArray배열값" + Arrays.toString(sizeArray0)); return
	 * paging; }
	 */
	
	
	 
	
}
