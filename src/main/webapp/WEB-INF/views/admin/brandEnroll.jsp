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
    clear: both;
    text-align: center; /* 텍스트를 가운데 정렬하려면 필요할 수 있습니다. */
    background-color: #f0f0f1; /* 원하는 배경색으로 설정하세요. */
    padding: 10px;
}

body {
    background-color: white; /* 이 부분을 변경하여 배경색을 조절할 수 있습니다. */
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
              						<label>브랜드 이름</label>
              					</div>
              					<div class="form_section_content">
              						<input name="brandName">
              					</div>
              				</div>
              				<div class="form_section">
              					<div class="form_section_title">
              						<label>브랜드 코드</label> <!-- 소속 국가 -> 브랜드 코드 대체-->
              					</div>
              					<div class="form_section_content">
              						  <!-- 주석 처리된 브랜드 코드 부분 -->
							        <!-- <select name="brandCode">
							            <option value="none" selected>=== 선택 ===</option>
							            <option value="301">NIKE</option>
							            <option value="302">ADIDAS</option>
							            <option value="303">NEW BALANCE</option>
							            <option value="304">CONVERSE</option>
							            <option value="305">PUMA</option>
							            <option value="306">PROSPECS</option>
							            <option value="307">DR.MARTENS</option>
							            <option value="308">HUNTER</option>
							            <option value="309">ALDO</option>
							        </select> -->
							        
							        <!-- 브랜드 코드를 JavaScript로 생성하여 부여하는 부분 -->
							        <!-- <input type="text" id="brandCode" name="brandCode" readonly> -->
              					</div>
              				</div>
              				<div class="form_section">
              					<div class="form_section_title">
              						<label>담당자명</label>
              					</div>
              					<div class="form_section_content">
              						<input name="managerName" type="text">
              					</div>
              				</div>
              				
					              				  
					    <!-- 추가된 부분 -->
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>사업자번호</label>
					        </div>
					        <div class="form_section_content">
					            <input name="businessNo" type="text" pattern="[0-9]{3}-[0-9]{2}-[0-9]{5}" title="올바른 형식(000-00-00000)으로 입력하세요." required>
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>브랜드 전화번호</label>
					        </div>
					        <div class="form_section_content">
					            <input name="brandPhoneNo" type="tel" pattern="[0-9]{10}" title="숫자 10자리로 입력하세요." required>
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>브랜드 이메일</label>
					        </div>
					        <div class="form_section_content">
					            <input name="brandEmail" type="email" required>
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

/* // 등록 버튼
 $("#enrollBtn").click(function () {
	$("#enrollForm").submit();
	
}); */

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
});


// 취소 버튼
$("#cancelBtn").click(function () {
	location.href="${contextPath}/admin/brandManage"
});
 
 
 
//브랜드 코드를 JavaScript로 생성하여 부여
/* $(document).ready(function () {
    // 브랜드 코드를 310부터 시작하여 1씩 증가시킴
    var nextBrandCode = 310;
    
    // 브랜드 코드 필드에 부여
    $("#brandCode").val(nextBrandCode);
    
    // 다음 브랜드 코드를 부여하기 위해 증가
    $("#enrollBtn").click(function () {
        nextBrandCode++;
        $("#brandCode").val(nextBrandCode);
        $("#enrollForm").submit();
    });
}); */
 

</script>


 
</body>
</html>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>