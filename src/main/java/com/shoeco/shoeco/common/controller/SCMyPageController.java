package com.shoeco.shoeco.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shoeco.shoeco.common.domain.SCMyPageVO;
import com.shoeco.shoeco.common.paging.CartPagingCreatorDTO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;
import com.shoeco.shoeco.common.service.SCMyPageService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/mypage")
public class SCMyPageController {
    
    private final SCMyPageService myPageService;
    
    @GetMapping
    public String showMypage(Model model) {
        // ... 다른 코드 ...
        return "/mypage";
    }
    
    @GetMapping("/question")
    @ResponseBody
    public Map<String, Object> getQuestionList(@RequestParam(defaultValue = "1") int pageNum) {
        Map<String, Object> resultMap = new HashMap<>();
        
        // 문의내역 데이터와 페이징 정보를 가져와서 resultMap에 저장
        List<SCMyPageVO> questionList = myPageService.selectQuestion(new CartPagingDTO(pageNum));
        long rowTotal = myPageService.getRowTotal();
        CartPagingCreatorDTO cartPagingCreatorDTO = new CartPagingCreatorDTO(rowTotal, new CartPagingDTO(pageNum));
        
        resultMap.put("questionList", questionList);
        resultMap.put("pagingCreator", cartPagingCreatorDTO);
        
        return resultMap;
    }
}
