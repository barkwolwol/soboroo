<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	           <form action="#" method="post">
	               <input type="text" name="userId" placeholder="아이디 입력">
	               <input type="password" name="userPwd" placeholder="비밀번호"> <br>
	               <button type="submit" class="login_btn">로그인</button>
	           </form>
	       </div>
	       <div id="login_menu">
	           <div>
	               <a href="/Ovcos/views/loginRegister/findId.jsp" class="a1">아이디 찾기</a>
	               <a href="/Ovcos/views/loginRegister/findPwd.jsp">비밀번호 재설정</a>
	           </div>
	       </div>
	
	       <button id="register_btn" onclick="location.href='#">회원가입</button>
	       <span id="test1">간편 로그인</span>
	       <div id="login_img">
	           <div id="naverIdLogin">
	               <img src="${pageContext.request.contextPath}/resources/image/naver.png" alt="">
	           </div>
	           <img src="${pageContext.request.contextPath}/resources/image/kakao.png" alt="">
	           <img src="${pageContext.request.contextPath}/resources/image/google.png" alt="">
	        </div>
	    </div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>