<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
   
<%@ include file="/WEB-INF/views/include/adminHeader.jsp" %>

<!-- 2309201640 장유정 - 위지윅 에디터 적용 -->
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.2/classic/ckeditor.js"></script>

 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

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

/* ckeditor 높이 */
.ck-content {
	height: 170px;
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
#enrollBtn:hover {
    background-color: #c9cbd0;
}

/* 브랜드 선택 css 설정 */
.brandCode_btn {						
    margin-left: 20px;
    width: 14%;
    height: 38px;
    font-weight: 600;
    background-color: #dfe8f5;
    font-size: 15px;
    cursor:pointer;
}
#brandName_input {
    width: 80%;
    text-align: center;
}
</style>

<div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 등록</span></div>
              		<div class="admin_content_main">
              			<form action="${contextPath}/admin/goodsEnroll.do" method="post" id="enrollForm">
              				<div class="form_section">
              					<div class="form_section_title">
              						<label>상품 이름</label>
              					</div>
              					<div class="form_section_content">
              						<input name="prodName">
              					</div>
              				</div>

              				<div class="form_section">
              					<div class="form_section_title">
              						<label>성별</label>
              					</div>
              					<div class="form_section_content">
              						<input name="gender">
              					</div>
              				</div>
              				
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>상품 가격</label>
					        </div>
					        <div class="form_section_content">
					            <input name="sellPrice" value="0">
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>카테고리</label>
					        </div>
					        <div class="form_section_content">
					            <input name="category">
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>소재</label>
					        </div>
					        <div class="form_section_content">
					            <input name="material">
					        </div>
					    </div>					    

					    <div class="form_section">
					        <div class="form_section_title">
					            <label>제조국</label>
					        </div>
					        <div class="form_section_content">
					            <input name="country">
					        </div>
					    </div>	
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>할인율</label>
					        </div>
					        <div class="form_section_content">
					            <input name="prodDiscount" value="0">
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>상품 내용</label>
					        </div>
					        <div class="form_section_content">
					            <textarea name="prodContents" id="prodContents_textarea"></textarea>
					        </div>
					    </div>
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>재고</label>
					        </div>
					        <div class="form_section_content">
					            <input name="prodStock" value="0">
					        </div>
					    </div>					    					    
					    
					    <div class="form_section">
					        <div class="form_section_title">
					            <label>브랜드 코드</label>
					        </div>
					        <div class="form_section_content">
					        	<input id="brandName_input" readonly="readonly">
					            <input id="brandCode_input" name="brandCode" type="hidden">
					       		<button class="brandCode_btn">브랜드 선택</button>
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



<%@ include file="/WEB-INF/views/include/adminFooter.jsp" %>

<script>
	let enrollForm = $("#enrollForm");
	
	//취소 버튼
	$("#cancelBtn").click(function () {
		location.href="${contextPath}/admin/goodsManage"
	});
	
	// 상품 등록 버튼
	$("#enrollBtn").on("click", function (e) {
		e.preventDefault();
	
		enrollForm.submit();
	});
	
	/* 위지윅 적용*/
	
	/* 상품 소개 */
	ClassicEditor
	    .create(document.querySelector('#prodContents_textarea'))
	    .catch(error => {
	        console.error(error);	
	    });

	
	// 브랜드 선택 버튼
	$('.brandCode_btn').on("click", function (e) {
		e.preventDefault();
	
		let popUrl = "${contextPath}/admin/brandPop";
		let popOption = "width = 650px, height=550px, top=300px, left=300px, scollbars=yes";
		
		window.open(popUrl, "브랜드 찾기", popOption);
	});
	
	// 2309282112 장유정
	// 서버로 부터 데이터를 전달받는지 확인
	$(document).ready(function () {
		console.log('${cateList}');
	});
				
</script>

</body>
</html>


