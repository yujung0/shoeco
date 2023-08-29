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
}
.admin_navi_wrap li a:link {color: black;}
.admin_navi_wrap li a:visited {color: black;}
.admin_navi_wrap li a:active {color: black;}
.admin_navi_wrap li a:hover {color: black;}
 
.admin_list_02{
    background-color: #c8c8c8;
} 
 
 
/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap{
    width: 80%;
    float:left;
    min-height: 700px;  
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
 
/* float 속성 해제 */
.clearfix{
    clear: both;
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
                        <li >
                            <a class="admin_list_01" href="${contextPath}/admin/goodsEnroll">상품 등록</a>
                        </li>
                        <li>
                            <a class="admin_list_02" href="${contextPath}/admin/goodsManage">상품 관리</a>
                        </li>
                        <lI>
                            <a class="admin_list_03" href="${contextPath}/admin/brandEnroll">브랜드 등록</a>                            
                        </lI>
                        <lI>
                            <!-- <a class="admin_list_04">작가 관리</a>   -->
                            <a class="admin_list_04" href="${contextPath}/admin/brandManage">브랜드 관리</a>                            
                        </lI>
                        <lI>
                            <a class="admin_list_05">매출 관리</a>                            
                        </lI>                                                                                             
                        
                        <lI>
                            <a class="admin_list_06" >회원 관리</a>                            
                        </lI>                                                                                             
                    </ul>
<!-- 
                    <div class="admin_list_01">
                        <a>상품 관리</a>
                    </div>
                     -->
                </div>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 관리</span></div>
                </div>
                <div class="clearfix"></div>
            </div>

    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->
 
 
<%@ include file="/WEB-INF/views/include/footer.jsp" %> 
</body>
</html>
