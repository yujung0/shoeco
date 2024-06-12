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

/* 카테고리 */
.form_section_content select {
	width: 92%;
	height: 35px;
	font-size: 20px;
	text-align: center;
	margin-left: 5px;
}
.cate_wrap span {
	font-weight: 600;
}
.cate_wrap:not(:first-child) {
	margin-top: 20px;
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
					            
					            <div class="cate_wrap">
					            	<span>대분류</span>
					            	<select class="cate1">
					            		<option selected="none">선택</option>
					            	</select>
					            </div>
					            
					            <div class="cate_wrap">
					            	<span>중분류</span>
					            	<select class="cate2">
					            		<option selected="none">선택</option>
					            	</select>
					            </div>
					            
					            <div class="cate_wrap">
					            	<span>소분류</span>
					            	<select class="cate3" name="cateCode"> <!-- 최종적으로 '소분류'를 선택하는 것은 상품 등록에 필요로한 cateCode 데이터를 선택하는 것이기 때문에 select 태그에 name 속성 부여 -->
					            		<option selected="none">선택</option>
					            	</select>
					            </div>
					            
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
/* 	$(document).ready(function () {
		console.log('${cateList}');
	}); */
	
	// 카테고리
	let cateList = JSON.parse('${cateList}'); // 'cateList' 속성에 담긴 JSON 데이터를 객체로 변환해주어 'cateList' 변수에 저장
	
	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate3Array = new Array();
	
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	let cate3Obj = new Object();
	
	let cateSelect1 = $(".cate1");
	let cateSelect2 = $(".cate2");
	let cateSelect3 = $(".cate3");
	
	// cateList 데이터 중 tier = 1인 데이터들만 꺼내 cate1Array 변수에 저장
	// 테스트 후 재사용을 위해 카테고리 배열 초기화 메서드
	function makeCateArray(obj, array, cateList, tier) {
		for (let i = 0; i < cateList.length; i++){
			if(cateList[i].tier === tier) {
				obj = new Object();
				
				obj.cateName = cateList[i].cateName;
				obj.cateCode = cateList[i].cateCode;
				obj.cateParent = cateList[i].cateParent;
				
				array.push(obj);
			}
		}
	}	
	
	// 배열 초기화
	makeCateArray(cate1Obj, cate1Array, cateList, 1);
	makeCateArray(cate2Obj, cate2Array, cateList, 2);
	makeCateArray(cate3Obj, cate3Array, cateList, 3);
	
	/* $(document).ready(function () {
		console.log(cate1Array);
		console.log(cate2Array);
		console.log(cate3Array);
	});
	 */
	
	 for(let i = 0; i < cate1Array.length; i++) {//<select> 테그 내부에 <option> 태그 추가
		cateSelect1.append("<option value ='" + cate1Array[i].cateCode + "'>" + cate1Array[i].cateName + "</option>");	 
	 
	 }

	 // 중분류 <option> 태그
	 $(cateSelect1).on("change", function () {
		// 대분류 선택 값 가져오기
		let selectVal1 = $(this).find("option:selected").val();
	
	 	// 중분류 <option> 태그를 지우고 기본적인 <option>태그를 추가하는 코드를 추가 -> 사용자가 대분류를 선택 후, 다시 다른 대분류를 선택했을 때 기존 <option> 태그들을 없애기 위함
	 	cateSelect2.children().remove();
	 	
	 	cateSelect2.append("<option value='none'>선택</option>")
	 	
	 	// 대분류 선택 값과 일치하는 'cateParent' 값을 가진 중분류 <option> 태그를 출력
	 	for(let i = 0; i < cate2Array.length; i++) {
	 		if(selectVal1 === cate2Array[i].cateParent) {
	 			cateSelect2.append("<option value='" + cate2Array[i].cateCode + "'>" + cate2Array[i].cateName + "</option>");
	 			
	 		}	
	 	} //for-end	
	 }); // $(cateSelect1)- end
	 
	 // 소분류 <option> 태그
	 $(cateSelect2).on("change", function () {
		
		 // 중분류 선택 값 가져오기
		 let selectVal2 = $(this).find("option:selected").val();
	
	 	// 소분류 <option> 태그를 모두 지우고, 기본 <option> 태그를 추가
	 	cateSelect3.children().remove();
	 	
	 	cateSelect3.append("<option value='none'>선택</option>");
	 
	 	// 소분류 <option> 출력
	 	for (let i = 0; i < cate3Array.length; i++) {
	 		if(selectVal2 === cate3Array[i].cateParent) {
	 			cateSelect3.append("<option value'" + cate3Array[i].cateCode + "'>" + cate3Array[i].cateName + "</option>");
	 		}
	 	} // for-end
	 });
				
</script>

</body>
</html>


