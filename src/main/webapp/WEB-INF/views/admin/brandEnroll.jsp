<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
   
<%@ include file="/WEB-INF/views/include/adminHeader.jsp" %>


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
    	/* $("#enrollForm").submit(); */
    	 
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
    } else {
    	return;
    }
    
});

// 취소 버튼
$("#cancelBtn").click(function () {
	location.href="${contextPath}/admin/brandManage"
});

</script>
<%@ include file="/WEB-INF/views/include/adminFooter.jsp" %>
