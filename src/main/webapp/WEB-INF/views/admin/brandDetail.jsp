<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
    

 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<%@ include file="/WEB-INF/views/include/adminHeader.jsp" %>

<style>
/* 브랜드 목록 영역 */
.brand_table_wrap{
	padding: 20px 35px
}
.brand_table{
	width: 100%;
    border: 1px solid #d3d8e1;
    text-align: center;
    border-collapse: collapse;
}
.brand_table td{
	padding: 10px 5px;
	border : 1px solid #e9ebf0;
}
.brand_table thead{
	background-color: #f8f9fd;	
	font-weight: 600;
}
.th_column_1{
	width:120px;
}
.th_column_3{
	width:110px;
}
.th_column_4{
	width:140px;
}
.th_column_5{
	width:140px;
}
.th_column_6{
	width:140px;
}
.th_column_7{
	width:140px;
}
.th_column_8{
	width:140px;
}

/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
	text-align: center;
    margin-top: 30px;
    margin-bottom: 40px;
}
.pageMaker_wrap a{
	color : black;
}
.pageMaker{
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
    float: left;
    width: 40px;
    height: 40px;
    line-height: 40px;
    margin-left: 20px;
}
.next, .prev {
    border: 1px solid #ccc;
    padding: 0 10px;
}
.next a, .prev a {
    color: #ccc;
}

/* 현재 페이지 버튼 */
.active{							
	border : 2px solid black;
	font-weight:400;
}

/* 검색 영역 */
.search_wrap{
	margin-top:15px;
}
.search_input{
    position: relative;
    text-align:center;	
}
.search_input input[name='keyword']{
	padding: 4px 10px;
    font-size: 15px;
    height: 20px;
    line-height: 20px;
}
.search_btn{
	height: 32px;
    width: 80px;
    font-weight: 600;
    font-size: 18px;
    line-height: 20px;
    position: absolute;
    margin-left: 15px;
    background-color: #c3daf7;
}

.table_empty{
	height: 50px;
    text-align: center;
    margin: 200px 0 215px 0px;
    font-size: 25px;
}

.brand_table a {
	color:#1088ed;
	font-weight: 500;
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


</style>
 
<!-- 2309041524 장유정 - 브랜드 상세 페이지 -->
<div class="admin_content_wrap">
	<div class="admin_content_subject"><span>브랜드 상세</span></div>
	<div class="admin_content_main">
		<div class="form_section">
			<div class="form_section_title">
				<label>브랜드 코드</label>
			</div>
			<div class="form_section_content">
				<input class="input_block" name="brandCode" readonly="readonly" value='<c:out value="${brandInfo.brandCode }"></c:out>'>
			</div>
		</div>
		
		<div class="form_section">
			<div class="form_section_title">
				<label>브랜드명 (상호명)</label>
			</div>
			<div class="form_section_content">
				<textarea class="input_block" name="brandName" readonly="readonly"><c:out value="${brandInfo.brandName }"/></textarea>
			</div>
		</div>
		
		<div class="form_section">
			<div class="form_section_title">
				<label>사업자 등록 번호</label>
			</div>
			<div class="form_section_content">
				<textarea class="input_block" name="businessNo" readonly="readonly"><c:out value="${brandInfo.businessNo }"/></textarea>
			</div>
		</div>		
				
		<div class="form_section">
			<div class="form_section_title">
				<label>담당자명</label>
			</div>
			<div class="form_section_content">
				<textarea class="input_block" name="managerName" readonly="readonly"><c:out value="${brandInfo.managerName }"/></textarea>
			</div>
		</div>

		<div class="form_section">
			<div class="form_section_title">
				<label>대표 전화 번호</label>
			</div>
			<div class="form_section_content">
				<textarea class="input_block" name="brandPhoneNo" readonly="readonly"><c:out value="${brandInfo.brandPhoneNo }"/></textarea>
			</div>
		</div>
				
		<div class="form_section">
			<div class="form_section_title">
				<label>대표 메일</label>
			</div>
			<div class="form_section_content">
				<textarea class="input_block" name="brandEmail" readonly="readonly"><c:out value="${brandInfo.brandEmail }"/></textarea>
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
				<button id="cancelBtn" class="btn">브랜드 목록</button>
				<button id="modifyBtn" class="btn modify_btn">수정</button>
			</div>
	
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

// 브랜드 관리 페이지 이동 버튼
$("#cancelBtn").on("click", function (e) {
	
	e.preventDefault();
	
	$("input[name=brandCode]").remove();
	moveForm.attr("action", "${contextPath}/admin/brandManage");
	moveForm.submit();
});

// 브랜드 수정 페이지 이동 버튼
$("#modifyBtn").on("click", function (e) {
	
	e.preventDefault();
	moveForm.attr("action", "${contextPath}/admin/brandModify");
	moveForm.submit();

});


</script>