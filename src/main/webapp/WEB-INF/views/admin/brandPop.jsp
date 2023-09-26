<%-- <%@ include file="/WEB-INF/views/include/adminHeader.jsp" %> --%><%-- 왠만하면 위에 올리자 이거 위에 body에 있어야 할 값이 있으면 doc 생성시 오류가 생길수도 있음 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!-- jstl 사용을 위한 라이브러리 추가 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>  

<!-- 2309261426 장유정 - 상품 등록 페이지에서 브랜드 선택 시 뜨는 팝업창 -->
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




/* 전체 wrap */
.wrapper{
	width:100%;
	height:535px;
}
.subject_name_warp{
	font-size: 33px;
    font-weight: bolder;
    padding-left: 15px;
    background-color: #6AAFE6;
    height: 13%;
    line-height: 70px;
    color: white;
}
.content_wrap{
	height:87%;
}




	/* 작가 목록 영역 */
.author_table_wrap{
	padding: 20px 35px
}
.table_exist{
	height:251px;
}
.author_table{
	width: 100%;
    border: 1px solid #d3d8e1;
    text-align: center;
    border-collapse: collapse;
}
.author_table td{
	padding: 10px 5px;
	border : 1px solid #e9ebf0;
}
.author_table thead{
	background-color: #f8f9fd;	
	font-weight: 600;
}
.author_table a{
	color:#1088ed;
	font-weight: 500;
}
.th_column_1{
	width:120px;
}
.th_column_3{
	width:110px;
}


.table_empty{
	text-align: center;
    margin: 101px 0 130px 0;
    font-size: 25px;
}

	/* 검색 영역 */
.search_wrap{
	margin-top:25px;
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

	/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
    margin-top: 20px;
    margin-bottom: 40px;
}
.pageMaker{
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
	text-align: center;	
	float: left;
    width: 30px;
    height: 30px;
    line-height: 30px;
    margin-left: 8px;
    font-size: 15px;
}
.active{
	border : 2px solid black;
	font-weight:400;
}
.next, .prev {
    border: 1px solid #ccc;
    padding: 0 10px;
}
.next a, .prev a {
    color: #ccc;
}

</style>


			<div class="subject_name_warp">
				<span>브랜드 선택</span>
			</div>
				 <div class="admin_content_wrap">
                    <!-- <div class="admin_content_subject"><span>브랜드 관리</span></div> -->
                    
                    <div class="brand_table_wrap">
                    
                    <!-- 게시물 O -->
                    <c:if test="${listCheck != 'empty' }">
                    	<table class="brand_table">
                    		<thead>
                    			<tr>
                    				<td class="th_column_1">브랜드 코드</td>
                    				<td class="th_column_2">브랜드명 (상호명)</td>
                    				<td class="th_column_3">사업자 등록 번호</td>
                    				<td class="th_column_4">담당자명</td>
                    				<td class="th_column_5">대표 전화 번호</td>
                    				<td class="th_column_6">대표 메일</td>
                    				<td class="th_column_7">등록 날짜</td>
                    				<td class="th_column_8">수정 날짜</td>
                    			</tr>
                    		</thead>
                    		<c:forEach items="${list }" var="list">
                    		<tr>
                    			<td><c:out value="${list.brandCode }"/></td>
                    			<td>
                    				<a class="move" href='<c:out value="${list.brandCode }"/>' data-name='<c:out value="${list.brandName} "/>'>
                    					<c:out value="${list.brandName }"></c:out>
                    				</a>
                    			</td>
                    			<%-- <td><c:out value="${list.brandName }"/></td> --%>
                    			<td><c:out value="${list.businessNo }"/></td>
                    			<td><c:out value="${list.managerName }"/></td>
                    			<td><c:out value="${list.brandPhoneNo }"/></td>
                    			<td><c:out value="${list.brandEmail }"/></td>
                    			<td><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd"/></td>
                    			<td><fmt:formatDate value="${list.updateDate }" pattern="yyyy-MM-dd"/></td>
                    		</tr>
                    		</c:forEach>
                    	</table>
                    </c:if>
                    
                    <!-- 게시물 X -->
                    <c:if test="${listCheck == 'empty' }">
                    	<div class="table_empty">
                    		등록된 브랜드가 없습니다.
                    	</div>
                    </c:if>
                    
                    
                    
                    </div>
                    
                    <!-- 검색 영역 -->
                    <div class="search_wrap">
                    	<form id="searchForm" action="${contextPath }/admin/brandPop" method="get">
                    		<div class="search_input">
                    			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword }"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
   			                    <input type="hidden" name="amount" value='${pageMaker.cri.amount }'>
              			        <button class="btn search_btn">검색</button>             			                    			                    			 
                    		</div>
                    	
                    	</form>
                    </div>
                    
                    
                    <!-- 페이지 이동 인터페이스 영역 -->
                    <div class="pageMaker_wrap">
                    	<ul class="pageMaker">
                    	
                    		<!-- 이전 버튼 -->
                    		<c:if test="${pageMaker.prev }">
                    			<li class="pageMaker_btn prev">
                    				<a href="${pageMaker.pageStart -1 }">이전</a>
                    			</li>
                    		</c:if>
                    		
                    		<!-- 페이지 번호 -->
                    		<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
                    			<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? " active":""}">
                    				<a href="${num }">${num }</a>
                    			</li>
                    		</c:forEach>
                    		
                    		<!-- 다음 버튼 -->
                    		<c:if test="${pageMaker.next }">
                    			<li class="pageMaker_btn next">
                    				<a href="${pageMaker.pageEnd + 1 }">다음</a>
                    			</li>
                    		</c:if>
                    	</ul>
                    </div>
                    
                    
                    <form id="moveForm" action="${contextPath }/admin/brandPop" method="get">
                    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                    	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                    	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                    
                    </form>
                    
                </div>
                

    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->

<script>

let searchForm = $('#searchForm');
let moveForm = $('#moveForm');

// 브랜드 검색 버튼 동작
$('#searchForm button').on("click", function (e) {
	e.preventDefault(); //Event 인터페이스의 preventDefault() 메서드는 어떤 이벤트를 명시적으로 처리하지 않은 경우, 해당 이벤트에 대한 사용자 에이전트의 기본 동작을 실행하지 않도록 지정

	// 검색 키워드 유효성 검사
	if(!searchForm.find("input[name='keyword']").val()) {//.val()은 양식(form)의 값을 가져온다 (name이 keyword인 input 요소의 값을 변수에 저장함)
		alert("키워드를 입력하십시오.");
		return false;
	}
	
	searchForm.find("input[name='pageNum']").val("1");
	
	searchForm.submit();
});

// 페이지 이동 버튼
$(".pageMaker_btn a").on("click", function (e) {
	e.preventDefault();
	console.log($(this).attr("href"));
	moveForm.find("input[name='pageNum']").val($(this).attr("href")); 
});


</script> 

