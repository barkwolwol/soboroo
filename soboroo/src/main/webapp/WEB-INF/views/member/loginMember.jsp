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
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
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
               <button type="submit" class="login_btn"><a href="#">카카오로 시작하기</a></button>
	       </div>
     	       
     	   <div id="login_input">
               <button type="submit" class="login_btn">관리자 로그인</button>
	       </div>
	    </div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>