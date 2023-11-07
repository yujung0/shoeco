package com.shoeco.shoeco.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.domain.SCRevVO;
import com.shoeco.shoeco.common.paging.ListPagingCreatorDTO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;
import com.shoeco.shoeco.common.service.SCDetailService;
import com.shoeco.shoeco.common.service.SCListService;
import com.shoeco.shoeco.common.service.SCRevService;

@Controller
//@RequestMapping("/list")

public class SCListController {

	//23.8.8 세연 생성
	//생성자 주입
	private SCListService scListService;
	private SCDetailService scDetailService;
	private SCRevService scRevService;
	public SCListController(SCListService scListService, SCDetailService scDetailService ,SCRevService scRevService) {
		this.scListService = scListService;
		this.scDetailService = scDetailService ;
		this.scRevService = scRevService;
	}
	
	
	
	
	//메개변수로 받아와서 한꺼 번에
	
	@GetMapping("/list")
	public void showCategoryList(Model model,ListPagingDTO paging){
		  
		List<SCListVO> categoryList = scListService.getCategoryList(paging);  
		model.addAttribute("categoryList",categoryList);
		//System.err.println(scListService.getCategoryList(gender,paging).get(0).toString());
		model.addAttribute("pagingCre",new ListPagingCreatorDTO(scListService.rowTotal(paging),paging));
		model.addAttribute("minPrice",scListService.MinPrice(paging)); //long -> Long 처리
		model.addAttribute("maxPrice",scListService.MaxPrice(paging));
		
		//검색시에 값이 아예 없을 때 다시 range검색할수 있게하는 전체 총 최댓값
		model.addAttribute("totalMaxPrice",scListService.totalMaxPrice());
		  
		System.err.println(scListService.MinPrice(paging));
		System.err.println("=================조건에 맍는 distinct 행수: " + scListService.rowTotal(paging));
		System.err.println(scListService.MaxPrice(paging));
		//System.out.println("==================" + paging.getSizeArray().toString());
		float[] starList = new float[categoryList.size()];
		
		//list에 별표
				for(int i = 0; i < categoryList.size(); i++) {
					float starAvg = 0f;
					List<SCRevVO> revList = scRevService.getRevList(categoryList.get(i).getProdCode());
					if(revList.size() != 0) {
					for(int j = 0 ; j < revList.size(); j ++) {
								starAvg += revList.get(j).getStarGrade();
							}
							
						starAvg /= revList.size();
						}else {
							starAvg = 0;
						}
						starList[i] = starAvg;
						System.out.println(starList[i]);
				}
				
		model.addAttribute("starList",starList);
		
		//map 과 jsp의 c:set을 키로 이용해서 ajax를 안쓰고도 index를 통일시키고 복잡한 데이터를 재정리
		Map<Long, List<SCOptionVO>> listForOpt1 = new HashMap<Long, List<SCOptionVO>>() ; 
		Map<String, List<SCOptionVO>> listForOpt2 = new HashMap<String, List<SCOptionVO>>() ; 
		for(int i = 0; i < categoryList.size(); i ++) {
			listForOpt1.put(categoryList.get(i).getProdCode(), scDetailService.getColor(categoryList.get(i).getProdCode()));
			for(int j = 0 ; j < scDetailService.getColor(categoryList.get(i).getProdCode()).size() ; j ++) {
				listForOpt2.put(categoryList.get(i).getProdCode()+"-"+scDetailService.getColor(categoryList.get(i).getProdCode()).get(j).getColor(), 
						
											scDetailService.getSizePerColor(categoryList.get(i).getProdCode(), 
											scDetailService.getColor(categoryList.get(i).getProdCode()).get(j).getColor()   ));
			}
		}
		
		model.addAttribute("listForOpt1", listForOpt1);
		model.addAttribute("listForOpt2", listForOpt2);
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 
	
}
