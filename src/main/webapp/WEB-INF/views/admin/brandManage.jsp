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
</style>


                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>브랜드 관리</span></div>
                    
                    <div class="brand_table_wrap">
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
                    			<td><c:out value="${list.brandName }"/></td>
                    			<td><c:out value="${list.businessNo }"/></td>
                    			<td><c:out value="${list.managerName }"/></td>
                    			<td><c:out value="${list.brandPhoneNo }"/></td>
                    			<td><c:out value="${list.brandEmail }"/></td>
                    			<td><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd"/></td>
                    			<td><fmt:formatDate value="${list.updateDate }" pattern="yyyy-MM-dd"/></td>
                    		</tr>
                    		</c:forEach>
                    	</table>
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
                    
                    
                    <form id="moveForm" action="${contextPath }/admin/brandManage" method="get">
                    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                    	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                    	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                    
                    </form>
                    
                </div>
                

    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->

<script>
// 2308211533 장유정
$(document).ready(function () { //페이지가 로드될 때 반드시 실행이 되는 익명 함수를 추가
	let result = '<c:out value= "${enroll_result}"/>' ;
	
	checkResult(result);
	
	function checkResult(result) {
		if(result === '') {
			return;
		}
		
		alert("브랜드 '${enroll_result}' 을 등록하였습니다.");
	}
});

let moveForm = $('#moveForm');

//페이지 이동 버튼
$(".pageMaker_btn a").on("click", function (e) {
    e.preventDefault(); // 올바른 메서드 이름 사용
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.submit();
});

</script> 
  
</body>
</html>
