<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- 230808 장유정_로그인 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<style>

/*로그인 실패 시 경고글*/
.login_warn {
	margin-top: 30px;
	text-align: center;
	color: red;
}
</style>



<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>

<div class="wrapper">
	
	<div class="wrap">
		<form id="login_form" method="post">
			<div class="logo_wrap">
				<span>Shoeco</span>
			</div>
			<div class="login_wrap"> 
				<div class="id_wrap">
						<div class="id_input_box">
						<input class="id_input" name="userId">
					</div>
				</div>
				<div class="pw_wrap">
					<div class="pw_input_box">
						<input class="pw_iput" name="userPassword">
					</div>
				</div>
				
				<c:if test="${result == 0 }">
					<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하였습니다.</div>
				</c:if>
				
				<div class="login_button_wrap">
					<input type="button" class="login_button" value="로그인">
				</div>			
			</div>
		</form>		
		
	</div>

</div>

<script>

	// 로그인 버튼 클릭 메서드
	$(".login_button").click(function () {
		/* alert("로그인 버튼 작동"); */
		
		// 로그인 메서드 서버 요청
		$("#login_form").attr("action", "${contextPath}/member/login.do");
		$("#login_form").submit();
	});
	
	
</script>

</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>