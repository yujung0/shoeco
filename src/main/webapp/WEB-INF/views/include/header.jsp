<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%-- 
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
	<c:set var="isLogin" value="true" />
	<c:set var="loginUser" value="${principal.username}" />
</sec:authorize>--%>
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
 	.nav-item:hover .smallCategories {
 		display: block;
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
	     <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
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
         <div style="display: inline;">
         	<input type="text" placeholder="검색어 입력"><button>검색</button>
         </div>
         <div style="display: inline;">
	         <a class="nav-icon position-relative text-decoration-none" href="#">
	             <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
	             &nbsp;<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
	         </a>
	         <a class="nav-icon position-relative text-decoration-none" href="#">
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
	                            <a class="nav-link" href="index.html">BRAND</a>
	                             	<ul class="smallCategories" style="list-style-type: none;">
		                        		<li>아디다스</li>
		                        		<li>나이키</li>
		                        		<li>뉴발란스</li>
		                        		<li>컨버스</li>
		                        		<li>퓨마</li>
		                        		<li>닥터마틴</li>
		                        	</ul> 
	                        </li> 
	                   </div>
	                   <div>
                        <li class="nav-item">
                           <a class="nav-link" href="about.html">MEN</a>
	                        	<ul class="smallCategories" style="list-style-type: none;">
	                        		<li>운동화</li>
	                        		<li>구두</li>
	                        		<li>샌들</li>
	                        		<li>스포츠</li>
	                        		<li>아쿠아</li>
	                        	</ul> 
                        </li> 
                        </div>  
                        <div>   
                        <li class="nav-item">
                            <a class="nav-link" href="shop.html">WOMEN</a>
	                            <ul class="smallCategories" style="list-style-type: none;">
	                        		<li>운동화</li>
	                        		<li>구두</li>
	                        		<li>샌들</li>
	                        		<li>스포츠</li>
	                        		<li>아쿠아</li>
	                        	</ul> 
                        </li> 
                        </div>  
                        <div>  
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">BEST</a>
                            	  <ul class="smallCategories" style="list-style-type: none;">
	                        		<li>운동화</li>
	                        		<li>구두</li>
	                        		<li>샌들</li>
	                        		<li>스포츠</li>
	                        		<li>아쿠아</li>
	                        	</ul> 
                        </li> 
                        </div>  
                        <div>  
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">SALE</a>
                            	  <ul class="smallCategories" style="list-style-type: none;">
	                        		<li>운동화</li>
	                        		<li>구두</li>
	                        		<li>샌들</li>
	                        		<li>스포츠</li>
	                        		<li>아쿠아</li>
	                        	</ul> 
                        </li> 
                        </div>  
                        <div>  
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">관리자페이지</a>
                             
                        </li>
                        </div>
                    </ul>
                </div>
               
            </div>

        </div>
    </nav>
    
    
  <script>
  	
  
  
  
  </script>
    
    
    <!-- Close Header -->


