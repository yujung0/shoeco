<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
    

 
<!-- <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script> -->
  
<%@ include file="/WEB-INF/views/include/adminHeader.jsp" %>

<style>
@charset "UTF-8";
*{
	margin: 0;
	padding:0;
}
a{
	text-decoration: none;
}
a:link {color: black;}
a:visited {color: black;}
a:active {color: black;}
a:hover {color: black;}
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
    margin-bottom: 15px;
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
 
.admin_list_04{
    background-color: #c8c8c8;
} 



/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap{
    width: 80%;
    float:left;
    min-height:700px;
}
/* 관리자 컨텐츠 제목 영역 */
.admin_content_subject{	
    font-size: 40px;
    font-weight: bolder;
    padding-left: 15px;
    background-color: #6AAFE6;
    height: 80px;
    line-height: 80px;
    color: white;	
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
.form_section_content textarea{
    width: 98%;
    height: 170px;
    font-size: 20px;	
}
.form_section_content select{
	width: 98%;
    height: 35px;
    font-size: 20px;
    text-align-last: center;
}
.input_block{
	background-color:#f9f9f9;	
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
.modify_btn{
	background-color: #b8d3e8;
	margin-left:15px;
}

/* float 속성 해제 */
.clearfix{
	clear: both;
}

</style>
 
<!-- 2309041524 장유정 - 브랜드 상세 페이지 -->
<div class="admin_content_wrap">
	<div class="admin_content_subject"><span>브랜드 상세</span></div>
	<div class="admin_content_main">
		<form id="modifyForm" action="${contextPath }/admin/brandModify" method="post">
		
		<div class="form_section">
			<div class="form_section_title">
				<label>브랜드 코드</label>
			</div>
			<div class="form_section_content">
				<input class="input_block" name="brandCode" readonly="readonly" value='<c:out value="${brandInfo.brandCode }"></c:out>'>
				<!-- input의 class 삭제 이유: 색상 제거를 위해 -->
			</div>
		</div>
		
		<div class="form_section">
			<div class="form_section_title">
				<label>브랜드명 (상호명)</label>
			</div>
			<div class="form_section_content">
				<input name="brandName" value="<c:out value="${brandInfo.brandName }"/>"
				<span id="warn_brandName">브랜드 이름을 입력 해주세요.</span>
			</div>
		</div>
		
		<div class="form_section">
			<div class="form_section_title">
				<label>사업자 등록 번호</label>
			</div>
			<div class="form_section_content">
				<textarea name="businessNo"><c:out value="${brandInfo.businessNo }"/></textarea>
				<span id="warn_businessNo">사업자 등록 번호를 입력 해주세요.</span>
			</div>
		</div>		
				
		<div class="form_section">
			<div class="form_section_title">
				<label>담당자명</label>
			</div>
			<div class="form_section_content">
				<textarea name="managerName"><c:out value="${brandInfo.managerName }"/></textarea>
				<span id="warn_managerName">담당자의 이름을 입력 해주세요.</span>
			</div>
		</div>

		<div class="form_section">
			<div class="form_section_title">
				<label>대표 전화 번호</label>
			</div>
			<div class="form_section_content">
				<textarea name="brandPhoneNo"><c:out value="${brandInfo.brandPhoneNo }"/></textarea>
				<span id="warn_brandPhoneNo">대표 전화 번호를 입력 해주세요.</span>
			</div>
		</div>
				
		<div class="form_section">
			<div class="form_section_title">
				<label>대표 메일</label>
			</div>
			<div class="form_section_content">
				<textarea name="brandEmail"><c:out value="${brandInfo.brandEmail }"/></textarea>
				<span id="warn_brandEmail">대표 메일을 입력해주세요.</span>
			</div>
		</div>		
				
		<div class="form_section">
			<div class="form_section_title">
				<label>등록 날짜</label>
			</div>
			<div class="form_section_content">
				<input class="input_block" type="text" readonly="readonly" value='<fmt:formatDate value="${brandInfo.regDate }" pattern="yyyy-MM-dd" />'>
			</div>
		</div>
		
		<div class="form_section">
			<div class="form_section_title">
					<label>수정 날짜</label>
			</div>
			<div class="form_section_content">
				<input class="input_block" type="text" readonly="readonly" value='<fmt:formatDate value="${brandInfo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss" />'>
			</div>
		</div>	
			<div class="btn_section">
				<button id="cancelBtn" class="btn">취소</button>
				<button id="modifyBtn" class="btn modify_btn">수정</button>
			</div>
		</form>
	</div> <!-- admin_content_main-end -->
</div> <!-- admin_content_wrap - end -->


<form id="moveForm" method="get">
	<input type="hidden" name="brandCode" value='<c:out value="${brandInfo.brandCode }"/>'>
	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
</form>


<script>
let moveForm = $("#moveForm");
let modifyForm = $("#modifyForm");

// 브랜드 상세 페이지 이동 버튼
$("#cancelBtn").on("click", function (e) {
	
	e.preventDefault();
	
	moveForm.attr("action", "${contextPath}/admin/brandDetail");
	moveForm.submit();
});

// 브랜드 수정 버튼 작동 및 유효성 검사
$("#modifyBtn").on("click", function (e) {
	
	let brandName = $(".form_section_content input[name='brandName']").val();
	let businessNo = $(".form_section_content textarea").val();
	
	let nameCk = false; // nameCk 변수를 선언하여 기본적으로 false 값으로 초기화
	let NoCk = false;
	
	e.preventDefault();
	
	if(!brandName) { //브랜드명 input이 공란인지 체크
		$("#warn_brandName").css("display", "block");
	} else {
		$("#warn_brandName").css("display", "none");
		nameCk = true;
	}
	
	if(!businessNo) {
		$("#warn_businessNo").css("display", "block");
	} else {
		$("#warn_businessNo").css("display", "none");
		NoCk = true;
	}
	
	if(nameCk && NoCk) {
		modifyForm.submit();
	} else {
		return false;
	}

});


</script>