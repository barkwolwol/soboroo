<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 로그인</title>
<link rel="stylesheet" href="resources/css/loginStyle.css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrap">
		<div class="popup_area">
			<div id="login_box">
				<span id="title">소소하지만 보람찬 당신의 하루</span>
				<span id="titleLogo"><img src="resources/images/logo_1.png" alt=""></span>
			</div>
			<div id="login_input">
				<a href="https://kauth.kakao.com/oauth/authorize?client_id=0ec377592349e9b86510090df869a4da&redirect_uri=http://localhost:3500/soboroo/loginpage_kakao_callback&response_type=code">
					<img src="resources/images/kakao_login_medium_wide.png" alt="">
				</a>
			</div>
			
			<!-- <div id="login_input">
				<button type="submit" class="login_btn">관리자 로그인</button>
			</div> -->
		</div>
	</div>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>