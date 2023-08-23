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
}
.admin_navi_wrap li a:link {color: black;}
.admin_navi_wrap li a:visited {color: black;}
.admin_navi_wrap li a:active {color: black;}
.admin_navi_wrap li a:hover {color: black;}
 
.admin_list_03{
    background-color: #c8c8c8;
} 
 
 
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
                          <a class="admin_list_04" href="${contextPath}/admin/brandManage">브랜드 관리</a>                            
                      </lI>
                       <lI>
                            <a class="admin_list_05">매출 관리</a>                            
                       </lI>                                                                                             
                        
                       <lI>
                            <a class="admin_list_06" >회원 관리</a>                            
                       </lI>                                                                                   
                  </ul>
                </div>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>브랜드 등록</span></div>
              		<div class="admin_content_main">
              			<form action="${contextPath}/admin/brandEnroll.do" method="post" id="enrollForm">
              				<div class="form_section">
              					<div class="form_section_title">
              						<label>상호명</label>
              					</div>
              					<div class="form_section_content">
              						<input name="brandName">
              						<span id="warn_brandName">상호명을 입력해주세요.</span>
              					</div>
              				</div>

              				<div class="form_section">
              					<div class="form_section_title">
              						<label>담당자명</label>
              					</div>
              					<div class="form_section_content">
              						<input name="managerName" type="text">
              						<span id="warn_managerName">담당자의 이름을 입력해주세요.</span>
              					</div>
              				</div>
              				
					              				  
					    <!-- 추가된 부분 -->
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>사업자 등록번호</label>
					        </div>
					        <div class="form_section_content">
					            <input name="businessNo" type="text" pattern="[0-9]{3}-[0-9]{2}-[0-9]{5}" title="올바른 형식(000-00-00000)으로 입력하세요." required>
					        	<span id="warn_businessNo">사업자 등록번호를 입력해주세요. (ex. OOO-OO-OOOOO, 숫자 기입)</span>
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>대표전화</label>
					        </div>
					        <div class="form_section_content">
					            <input name="brandPhoneNo" type="tel" pattern="[0-9]{10}" title="숫자 10자리로 입력하세요." required>
					        	<span id="warn_brandPhoneNo">대표 전화번호를 입력해주세요. (숫자 10자리)</span>
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>대표 이메일</label>
					        </div>
					        <div class="form_section_content">
					            <input name="brandEmail" type="email" required>
					        	<span id="warn_brandEmail">대표 이메일 주소를 입력해주세요. (이메일 형식)</span>
					        </div>
					    </div>
					    
    				
              			</form>
              					<div class="btn_section">
              						<button id="cancelBtn" class="btn">취소</button>
              						<button id="enrollBtn" class="btn enroll_btn">등록</button>
              					</div>
                </div>
                <div class="clearfix"></div>
            </div>
   
    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->

<script>

$(document).ready(function () {
    // 페이지 로딩 시 각 인풋 필드 아래에 있는 경고 메시지 표시
    $('#warn_brandName').css('display', 'block');
    $('#warn_managerName').css('display', 'block');
    $('#warn_businessNo').css('display', 'block');
    $('#warn_brandPhoneNo').css('display', 'block');
    $('#warn_brandEmail').css('display', 'block');
});


//등록 버튼
$("#enrollBtn").click(function () {
    // 여기에서 브랜드 등록을 수행하고, 등록이 성공하면 원하는 페이지로 이동하도록 구현
    // 예를 들어, 서버로 데이터를 전송하여 브랜드 등록을 수행하고, 성공 시 페이지 이동
    $.ajax({
        type: "POST",
        url: "${contextPath}/admin/brandEnroll.do",
        data: $("#enrollForm").serialize(), // 폼 데이터를 전송
        success: function (response) {
        	
                alert("브랜드 등록이 완료되었습니다.");
                location.href = "${contextPath}/admin/brandManage";
        },
        error: function () {
            alert("브랜드 등록 중 오류가 발생했습니다. 다시 시도하세요.");
        }
    });
    
    // 202308231702 장유정 추가
    // 검사 통과 유무 변수
    let brandNameCheck = false; // 브랜드 이름
    let managerNameCheck = false; // 담당자명
    let businessNoCheck = false; // 사업자 등록번호
    let brandPhoneNoCheck = false; // 대표 전화번호
    let brandEmailCheck = false; // 대표 이메일 주소
    
    // 입력 값 변수
    let brandName = $('input[name=brandName]').val();
    let managerName = $('input[name=managerName]').val();
    let businessNo = $('input[name=businessNo]').val();
    let brandPhoneNo = $('input[name=brandPhoneNo]').val();
    let brandEmail = $('input[name=brandEmail]').val();
    
    // 공란 경고 span 태그
    let wBrandName = $('#warn_brandName');
    let wManagerName = $('#warn_managerName');
    let wBusinessNo = $('#warn_businessNo');
    let wBrandPhoneNo = $('#warn_brandPhoneNo');
    let wBrandEmail = $('#warn_brandEmail');
    
    // 브랜드 이름 공란 체크
    if (brandName === '') {
    	wBrandName.css('display', 'block');
    	brandNameCheck = false;
    } else {
    	wBrandName.css('display', 'none');
    	brandNameCheck = true;
    }
    
    // 담당자명 공란 체크
    if (managerName === '') {
    	wManagerName.css('display', 'block');
    	managerNameCheck = false;
    } else {
    	wManagerName.css('display', 'none');
    	managerNameCheck = true;
    }
    
    // 사업자 등록 번호 공란 체크
    if (businessNo === '') {
    	wBusinessNo.css('display', 'block');
    	businessNoCheck = false;
    } else {
    	wBusinessNo.css('display', 'none');
    	businessNoCheck = true;
    }
    
    // 대표 번호 공란 체크
    if (brandPhoneNo === '') {
    	wBrandPhoneNo.css('display', 'block');
    	brandPhoneNoCheck = false;
    } else {
    	wBrandPhoneNo.css('display', 'none');
    	brandPhoneNoCheck = true;
    }
    
    // 대표 이메일 공란 체크
    if (brandEmail === '') {
    	wBrandEmail.css('display', 'block');
    	brandEmailCheck = false;
    } else {
    	wBrandEmail.css('display', 'none');
    	brandEmailCheck = true;
    }
    
    // 최종 검사
    if (brandNameCheck && managerNameCheck && managerNameCheck && businessNoCheck && brandPhoneNoCheck && brandEmailCheck) {
    	$("#enrollForm").submit();	
    } else {
    	return;
    }
    
    
    
});


// 취소 버튼
$("#cancelBtn").click(function () {
	location.href="${contextPath}/admin/brandManage"
});
 
 
 

 

</script>


 
</body>
</html>

