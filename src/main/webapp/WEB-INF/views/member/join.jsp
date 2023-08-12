<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- 230808 장유정_회원가입 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>

<style>
/* 중복아이디 존재하지 않는경우 */
.id_input_re_1{
    color: green;
    display: none;
}
/* 중복아이디 존재하는 경우 */
.id_input_re_2{
    color: red;
    display: none;
}


</style>


</head>
<body>

<div class="wrapper">
    <form id="join_form" method="post">
        <div class="wrap">
			<div class="subjecet">
				<span>회원가입</span>
			</div>
			<div class="id_wrap">
				<div class="id_name" >아이디</div>
				<div class="id_input_box">
					<input class="id_input" name="userId">
				</div>
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
			</div>
			<div class="pw_wrap">
				<div class="pw_name">비밀번호</div>
				<div class="pw_input_box">
					<input class="pw_input" name="userPassword">
				</div>
			</div>
			<div class="pwck_wrap">
				<div class="pwck_name">비밀번호 확인</div>
				<div class="pwck_input_box">
					<input class="pwck_input" name="userPassword">
				</div>
			</div>
			<div class="mail_wrap">
				<div class="mail_name">이메일</div> 
				<div class="mail_input_box">
					<input class="mail_input" name="userEmail">
				</div>
				<div class="mail_check_wrap">
					<div class="mail_check_input_box">
						<input class="mail_check_input" name="userEmail">
					</div>
					<div class="mail_check_button">
						<span>인증번호 전송</span>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			
		
		
			<div class="user_wrap">
				<div class="user_name">이름</div>
				<div class="user_input_box">
					<input class="user_input" name="userName">
				</div>
			</div>
			<div class="user_wrap">
				<div class="user_PhoneNo">핸드폰 번호</div>
				<div class="user_input_box">
					<input class="user_input" name="userPhoneNo">
				</div>
			</div>

		<div class="address_wrap">
				<div class="address_name">주소</div>
				<div class="address_input_1_wrap">
					<div class="address_input_1_box">
						<input class="address_input_1" name="userAddress">
					</div>
					<div class="address_button">
						<span>주소 찾기</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class ="address_input_2_wrap">
					<div class="address_input_2_box">
						<input class="address_input_2" name="userAddress2">
					</div>
				</div>
				<div class ="address_input_3_wrap">
					<div class="address_input_3_box">
						<input class="address_input_3" name="userAddress3">
					</div>
				</div>
			</div>
			  <div class="join_button_wrap">
                <input type="button" class="join_button" value="가입하기">
            </div>
            
            
        </div>
    </form>
</div>

<script>


// 회원가입 버튼(회원가입 기능 작동)
$(".join_button").click(function(){
    $("#join_form").attr("action", "${contextPath}/member/join");
    $("#join_form").submit();
});


//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function() {
    var memberId = $('.id_input').val();
    var data = { memberId: memberId };

    $.ajax({
        type: "post",
        url: "${contextPath}/member/memberIdChk",
        data: data,
        success: function (result) {
            if (result === 'success') {
                $('.id_input_re_1').css("display", "inline-block");
                $('.id_input_re_2').css("display", "none");
            } else if (result === 'fail') {
                $('.id_input_re_2').css("display", "inline-block");
                $('.id_input_re_1').css("display", "none");
            }
        },
        error: function(xhr, status, error){
            console.error("AJAX Error:", status, error);
        }
    });

});// function 종료

</script>


</body>



</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>