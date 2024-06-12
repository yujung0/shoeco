<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" /> 
     
<!DOCTYPE html>
<html>
<head>

    <title>ShoeCo Shop eCommerce HTML CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- bootstrap 공식 js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- bootstrap icons 추가 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

    <link rel="apple-touch-icon" href="${contextPath}/resources/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/img/favicon.ico">

    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/templatemo.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&amp;display=swap">
    <link rel="stylesheet" href="${contextPath}/resources/css/fontawesome.min.css">


	<!--
	    
	TemplateMo 559 Zay Shop
	
	https://templatemo.com/tm-559-zay-shop
	
	-->
	
	    
<style>

 	.smallCategories {
 		display: none;
 	}
 	.nav-item:hover .smallCategories{
 		display: block;
 	}
	 
    /* 팝업 창 스타일 */
	.popup-overlay {
	    display: none;
	    position: fixed;
	    top: 50%; /* 화면 가운데로 정렬되도록 top을 50%로 설정 */
	    left: 50%; /* 화면 가운데로 정렬되도록 left을 50%로 설정 */
	    transform: translate(-50%, -50%); /* 정렬된 위치를 조정 */
	    background-color: rgba(0, 0, 0, 0.7);
	    z-index: 1000;
	    width: 50%; /* 팝업 창의 너비를 화면의 절반으로 설정 */
	    max-width: 520px;
	    border-radius: 10px;
	    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
	}
	
	.popup-content {
	    background-color: #ffffff;
	    padding: 20px;
	    text-align: center;
	    position: relative;
	}
	
	.popup-title {
	    font-size: 24px;
	    margin-bottom: 10px;
	}
	
	.popup-message {
	    font-size: 16px;
	    margin-bottom: 10px;
	    color: #333;
	}
	
	.popup-close {
	    position: absolute;
	    top: 10px;
	    right: 10px;
	    background-color: #f5f5f5;
	    padding: 6px 12px;
	    border-radius: 50%;
	    cursor: pointer;
	    border: none;
	}
 
    .faq-button {
    background-color: #808080; /* 회색 배경 색상 */
    border: none;
    border-radius: 20px;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }

    .faq-button:hover {
        background-color: #666666; /* 마우스 호버 시 더 진한 회색 배경 색상 */
        box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.2);
    }
    .faq-buttons {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 10px;
        margin-top: 20px;
    }
    
    
 
	
</style>
	
</head>
<body>




<!--  <body> 23.8.8 세연/ 위에도 하나 더 있어서 혹시나 해서 주석했어요  -->
    <!-- Start Top Nav -->
    

    	
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
   
    <!-- Close Top Nav -->
     <div class="navbar align-self-center d-flex">
	     <a class="navbar-brand text-success logo h1 align-self-center" href="${contextPath}/main">
	                ShoeCo
	     </a>
     
          <!-- 23.08.08 세연/일단 왜 있는지 모르겠어서 주석 했어요(데헷) <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
             <div class="input-group">
                 <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                 <div class="input-group-text">
                     <i class="fa fa-fw fa-search"></i>
                 </div>
             </div> 
         </div>-->
         
        <!-- 팝업 div -->
		<div id="popup-overlay" class="popup-overlay">
		    <div class="popup-content">
		        <button id="close-popup" class="popup-close">X</button>
		        <h2 class="popup-title">자주 묻는 질문</h2>
		        <!-- 챗봇 div -->
		        <div id="chatbot-window" style="display: none;">
		            <div class="faq-buttons">
		                <button class="faq-button">상품 정보</button>
		                <button class="faq-button">배송 현황</button>
		                <button class="faq-button">교환/반품/환불</button>
		                <button class="faq-button">주문/결제/취소</button>
		                <button class="faq-button">회원정보</button>
		            </div>
		        </div>
		        <!-- 챗봇 div-end -->
		    </div>
		</div>
		<!-- 팝업 div-end-->


         <div style="display: inline;">
         	<div style="display: flex;"><input type="text" id="mainSearch" style="width: 120mm;%" flex="1" aceholder="검색어 입력" ><button class="services-icon-wap" flex="1">검색</button></div>
         	<div id="searchBoard" class="searchBoard" style="position: absolute;z-index: 999;background-color: white;width: 120mm;%" > 
	         	  
         	
         	</div>
         </div>
         <div style="display: inline;">
			<a class="nav-icon position-relative text-decoration-none" id="faq-chatbot">
			    <button id="open-chatbot" class="faq-button">FAQ</button>
			</a>
			<a class="nav-icon position-relative text-decoration-none" href="${contextPath}/cart/1">
			    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
			    &nbsp;<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
			</a>
			<a class="nav-icon position-relative text-decoration-none" href="${contextPath}/mypage">
			    <i class="fa fa-fw fa-user text-dark mr-3"></i>
			    &nbsp;<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
			</a>
			
			
			
			
			
			<!--23.08.08 세연/ 위에 마크가 페이지 밖으로 삐져나와서 nbsp;만 썼을때는 이상하게 먹혀서 안삐져나오게 하려고 추가 했어요 -->
			<a>
			    &nbsp;<span> &nbsp;  &nbsp;</span>
			</a>

         </div>
         
         
         
      </div>      
      
      
    
 	

    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

           
		

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                       <div>
                       		<li class="nav-item">
	                            <a class="nav-link" href="${contextPath}/list?gender=공용">BRAND</a>
	                             	<div class="smallCategories">
		                        		<p>아디다스</p>
		                        		<p>나이키</p>
		                        		<p>뉴발란스</p>
		                        		<p>컨버스</p>
		                        		<p>퓨마</p>
		                        		<p>닥터마틴</p>
		                        	</div> 
	                        </li> 
	                   </div>
	                   <div>
                        <li class="nav-item">
                          <%--  <a class="nav-link" href="${contextPath}/list?gender=남성">MEN</a> --%>
                           <a class="nav-link" href="${contextPath}/list?gender=남성">MEN</a>
								<div class="smallCategories">
	                        		<p>운동화</p>
	                        		<p>구두</p>
	                        		<p>샌들</p>
	                        		<p>스포츠</p>
	                        		<p>아쿠아</p>
	                        	</div> 
                        </li> 
                        </div>  
                        <div>   
                        <li class="nav-item">
                            <a class="nav-link" href="${contextPath}/list?gender=여성">WOMEN</a>
	                        	<div class="smallCategories">
	                        		<p>운동화</p>
	                        		<p>구두</p>
	                        		<p>샌들</p>
	                        		<p>스포츠</p>
	                        		<p>아쿠아</p>
	                        	</div> 
                        </li> 
                        </div> 
                       <!--  a자체에 넣어서?
                        <form action="$">
                        
                        
                        </form>
                         -->
                        
                         
                        <div>  
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">BEST</a>
                        </li> 
                        </div>  
                        <div>  
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">SALE</a>
                            	   
                        </li> 
                        </div>  
                        <div>  
                        <li class="nav-item">
                          <!-- 230808 세연/ 소비자 입장에서 굳이 관리자페이지가 카테고리란에 나란히 같이 있을 이유는 없는 것 같아서 임시로
                          이벤트/기획으로 대체했어요(앗 나 바보같은짓 했나? 그럼 알려줘요!(찡긋))
                           <a class="nav-link" href="contact.html">관리자페이지</a> -->  
 							<a class="nav-link" href="contact.html">이벤트/기획전</a>
                             
                        </li>
                        </div>
                    </ul>
                </div>
               
            </div>

        </div>
    </nav>
    
    
<script>
    // 팝업 창 열기 버튼 클릭 이벤트 처리
    document.getElementById("open-chatbot").addEventListener("click", function() {
        var popupOverlay = document.getElementById("popup-overlay");
        popupOverlay.style.display = "block";

    // 챗봇 창 열기 버튼 클릭 이벤트 처리
    var chatbotWindow = document.getElementById("chatbot-window");
        chatbotWindow.style.display = "block";
        });

    // 팝업 창 닫기 버튼 클릭 이벤트 처리
    document.getElementById("close-popup").addEventListener("click", function() {
        var popupOverlay = document.getElementById("popup-overlay");
        popupOverlay.style.display = "none";

    // 챗봇 창 닫기 버튼 클릭 이벤트 처리
    var chatbotWindow = document.getElementById("chatbot-window");
        chatbotWindow.style.display = "none";
        });
    
    
    //
    //검색창 관련 (addEventListner를 on대신 사용해보겠음))
    document.getElementById("mainSearch").addEventListener("input",function(){
    	var searchVal = document.getElementById("mainSearch").value;
    	$(".searchBoard").text(searchVal);
     	
    });
    
    
    
</script>
    
    
    <!-- Close Header -->