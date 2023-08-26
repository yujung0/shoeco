<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
 
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
 <%@ include file="/WEB-INF/views/include/header.jsp" %>
 
 <style>
 @charset "UTF-8";
*{
    margin: 0;
    padding:0;
}
a{
    text-decoration: none;
}
ul{
    list-style: none;
}

body {
    background-color: white; 
}

/* 화면 전체 렙 */
.wrapper{
    width: 100%;
}
/* content 랩 */
.wrap{
    width : 1080px;
    margin: auto;
}
/* 홈페이지 기능 네비 */ 
.top_gnb_area{
    width: 100%;
    height: 50px;
    background-color: #f0f0f1;
    position:relative;
}
.top_gnb_area .list{
    position: absolute;
    top: 0px;
    right: 0;
    
}
.top_gnb_area .list li{
    list-style: none;    
    float : left;
    padding: 13px 15px 0 10px;
    font-weight: 900;
    cursor: pointer;
}
 
/* 관리제 페이지 상단 현페이지 정보 */
.admin_top_wrap{
    height:110px;
    line-height: 110px;
    background-color: #5080bd;
    margin-bottom:15px;
}
.admin_top_wrap>span{
    margin-left: 30px;
    display:inline-block;
    color: white;
    font-size: 50px;
    font-weight: bolder;
}
/* 관리자 wrap(네비+컨텐츠) */
.admin_wrap{
    
    
}
 
/* 관리자페이지 네비 영역 */
.admin_navi_wrap{
    width: 20%;
    height: 300px;
    float:left;
    height: 100%;
}
.admin_navi_wrap li{
    display: block;
    height: 80px;
    line-height: 80px;
    text-align: center;
}
.admin_navi_wrap li a{
    display: block;
    height: 100%;
    width: 95%;
    margin: 0 auto;
    cursor: pointer;
    font-size: 30px;
    font-weight: bolder;
    color: black; /* 기본 텍스트 색상 */
}

.admin_navi_wrap li a.active {
    background-color: #c8c8c8; /* 클릭된 링크의 배경색을 회색으로 변경 */
    color: white; /* 클릭된 링크의 텍스트 색상을 흰색으로 변경 */
}

.admin_navi_wrap li a:link {color: black;}
.admin_navi_wrap li a:visited {color: black;}
.admin_navi_wrap li a:active {color: black;}
.admin_navi_wrap li a:hover {color: black;}

 
/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap{
    width: 80%;
    float:left;
    height: 100%;
    height: 700px;
    
}
.admin_content_subject{            /* 관리자 컨텐츠 제목 영역 */
    font-size: 40px;
    font-weight: bolder;
    padding-left: 15px;
    background-color: #6AAFE6;
    height: 80px;
    line-height: 80px;
    color: white;    
}
 
 
/* 기존 CSS 코드
.clearfix {
    clear: both;
} */

/* footer를 화면 하단에 고정 */
footer {
    position: fixed; /* 고정 위치로 설정 */
    bottom: 0; /* 화면 하단에 배치 */
    width: 100%; /* 화면 너비만큼 폭을 가짐 */
    text-align: center; /* 텍스트를 가운데 정렬 */
    background-color: #f0f0f1; /* 배경색 설정 */
    padding: 10px;
    z-index: 1; /* 다른 요소 위에 표시 */
}

body {
    background-color: white; /* 이 부분을 변경하여 배경색을 조절할 수 있습니다. */
}

/* 관리자 컨텐츠 메인 영역 */
.form_section{
    width: 95%;
    margin-left: 2%;
    margin-top: 20px;
    border: 1px solid #dbdde2;
    background-color: #efefef;
}
.form_section_title{
    padding: 20px 35px;    
}
.form_section_title label{
    display: block;
    font-size: 20px;
    font-weight: 800;
}
.form_section_content{
    padding: 20px 35px;
    border-top: 1px solid #dbdde2;    
}
.form_section_content input{
    width: 98%;
    height: 25px;
    font-size: 20px;
    padding: 5px 1%;
}
.form_section_content select{
    width: 98%;
    height: 35px;
    font-size: 20px;
    text-align-last: center;
}
 
/* 입력란 공란 경고 태그 */
.form_section_content span{    
    display: none;
    padding-top: 10px;
    text-align: center;
    color: #e05757;
    font-weight: 300;    
}
 
 
 
/* 버튼 영역 */
.btn_section{
    text-align: center;
    margin: 80px 0;
}
.btn{
    min-width: 180px;
    padding: 4px 30px;
    font-size: 25px;
    font-weight: 600;
    line-height: 40px;
}
.enroll_btn{
    background-color: #dbdde2;
    margin-left:15px;
}

/* 입력란 공란 경고 태그 */
.form_section_content span{    
    display: none;
    padding-top: 10px;
    text-align: center;
    color: #e05757;
    font-weight: 300;    
}
 
}
 
 </style>
</head>

<body>
 
    <div class="wrapper">
        <div class="wrap">
            <!-- gnv_area -->    
            <div class="top_gnb_area">
                <ul class="list">    
                    <li><a href="${contextPath}/main">메인 페이지</a></li>
                    <li><a href="${contextPath}/member/logout.do">로그아웃</a></li>
                    <li>고객센터</li>            
                </ul>
            </div>
            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>관리자 페이지</span>
                
            </div>
            <!-- contents-area -->
            <div class="admin_wrap">
                <!-- 네비영역 -->
                <div class="admin_navi_wrap">
                  <ul>
                      <li>
                          <a class="admin_list_01" href="${contextPath}/admin/main" data-active="true">관리자 홈</a>
                      </li>
                      <li>
                          <a class="admin_list_02" href="${contextPath}/admin/goodsEnroll" data-active="true">상품 등록</a>
                      </li>
                      <li>
                          <a class="admin_list_03" href="${contextPath}/admin/goodsManage" data-active="true">상품 관리</a>
                      </li>
                      <li>
                          <a class="admin_list_04" href="${contextPath}/admin/brandEnroll" data-active="true">브랜드 등록</a>                            
                      </li>
                      <lI>
                          <a class="admin_list_05" href="${contextPath}/admin/brandManage" data-active="true">브랜드 관리</a>                            
                      </li>
                       <li>
                            <a class="admin_list_06" href="${contextPath}/admin/QNAManage">Q&A</a>                            
                       </li>
                       <li>
                            <a class="admin_list_07">매출 관리</a>                            
                       </li>
                       <li>
                            <a class="admin_list_08" >회원 관리</a>                            
                       </li>                                                                                   
                  </ul>
                </div><!-- Close Header -->
                
                
<script>
$(document).ready(function () {
    // 현재 페이지 URL을 가져옴
    var currentUrl = window.location.pathname;

    // 네비게이션 메뉴의 각 링크를 순회하며 data-active 속성을 확인하여 active 클래스를 추가
    $(".admin_navi_wrap li a").each(function () {
        var linkUrl = $(this).attr("href");
        var isActive = $(this).data("active"); // data-active 속성 값을 가져옴

        if (isActive === true && currentUrl === linkUrl) {
            $(this).addClass("active");
        }
    });
});
</script>

                