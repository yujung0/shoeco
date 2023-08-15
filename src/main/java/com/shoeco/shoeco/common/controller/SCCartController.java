package com.shoeco.shoeco.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoeco.shoeco.common.paging.CartPagingCreatorDTO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;
import com.shoeco.shoeco.common.service.SCCartService;

import lombok.AllArgsConstructor;

//230808 동현 작성
@Controller
@AllArgsConstructor
@RequestMapping("/")
public class SCCartController {
	
	private SCCartService cartService ;
	
	//장바구니 목록 조회(페이징 추가)
	@GetMapping("/cart/{pageNum}")
	public String showCartList(Model model, CartPagingDTO cartPagingDTO){
		
		model.addAttribute("cartList", cartService.selectCart(cartPagingDTO));
		
		long rowTotal = cartService.getRowTotal();
		
		CartPagingCreatorDTO cartPagingCreatorDTO =
				new CartPagingCreatorDTO(rowTotal, cartPagingDTO) ;
		
		model.addAttribute("pagingCreator", cartPagingCreatorDTO) ;
		
		return "/cart";
	}

}
