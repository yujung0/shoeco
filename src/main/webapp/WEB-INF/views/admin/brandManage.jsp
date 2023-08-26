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
                </div>
                
                <div class="clearfix"></div>
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
</script> 
  
</body>
</html>
