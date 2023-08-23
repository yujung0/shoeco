<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" /> 
     
<!DOCTYPE html>
<html>
<head>
    <title>관리자 페이지</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 공식 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Bootstrap Icons 추가 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css">
    
    <!-- Templatemo CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/templatemo.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/custom.css">

    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&amp;display=swap">
    
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="${contextPath}/resources/css/fontawesome.min.css">

<style>
/* 기존 스타일 유지 */

/* 네비게이션 스타일링 */
.admin_navi_wrap {
    width: 100%;
    background-color: #f8f9fa;
    border-top: 1px solid #dee2e6;
    text-align: center; /* 가운데 정렬을 위해 추가 */
}

.admin_navi_wrap ul.list {
    list-style: none;
    display: inline-block; /* 인라인 블록 요소로 변경 */
    padding: 10px 0;
}

.admin_navi_wrap li {
    padding: 0 15px;
    font-weight: 600;
    display: inline; /* 인라인 요소로 변경 */
}

.admin_navi_wrap li a {
    text-decoration: none;
    color: #343a40;
    font-size: 16px;
    transition: color 0.3s ease-in-out;
}

.admin_navi_wrap li a:hover {
    color: #007bff;
}

.admin_navi_wrap ul.list {
    list-style: none;
    display: inline-block; /* 인라인 블록 요소로 변경 */
    padding: 10px 0;
    white-space: nowrap; /* 텍스트 줄 바꿈 방지 */
}

</style>
</head>
<body>
	<div class="top_gnb_area">
	</div>
	<div class="admin_navi_wrap">
		<!-- ShoeCo Admin 영역 -->
		<div class="navbar align-self-center d-flex">
			<a class="navbar-brand text-success logo h1 align-self-center" href="/shoeco/main">
			           ShoeCo
			</a>
		</div>
		<!-- 네비게이션 영역 -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-center align-items-center">
                <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="nav navbar-nav d-flex justify-content-center mx-lg-auto">
	                       <div class="text-center d-inline-block">
	                       		<li class="nav-item">
		                            <a class="nav-link" href="${contextPath}/admin/goodsEnroll">상품 등록</a>
		                        </li>
		                   </div>
		                   <div class="text-center d-inline-block">
		                        <li class="nav-item">
		                           <a class="nav-link" href="${contextPath}/admin/goodsManage">상품 관리</a>
		                        </li> 
	                        </div>  
	                        <div class="text-center d-inline-block">  
		                        <li class="nav-item">
		                            <a class="nav-link" href="${contextPath}/admin/brandEnroll">브랜드 등록/관리</a>
		                        </li> 
	                        </div>
	                        <div class="text-center d-inline-block">  
		                        <li class="nav-item">
		                            <a class="nav-link" href="#">Q&A</a>  
		                        </li> 
	                        </div>  
	                        <div class="text-center d-inline-block"> 
		                        <li class="nav-item">
		 							<a class="nav-link" href="#">매출 관리</a>
		                        </li>
	                        </div>  
	                        <div class="text-center d-inline-block">  
		                        <li class="nav-item">
		 							<a class="nav-link" href="#">회원 관리</a>
		                        </li>
	                        </div>
                    	</ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <!-- Close Header -->