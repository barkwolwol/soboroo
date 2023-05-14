<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 회원가입</title>
<link rel="stylesheet" href="resources/css/enrollStyle.css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrap">
		<div class="popup_area">
            <h2 style="color: white;">회원가입</h2>
            <br>

            <form action="insert.me" method="post" onsubmit="" id="enrollForm">
                <div class="form-group">
                    <div id="checkResult" style="color: white; margin: 0; font-size:14px;">* 개인정보수정에 사용될 비밀번호 입니다.</div>
                    <input type="password" class="form-control" id="memPwd" name="memPwd" placeholder="비밀번호를 입력해주세요" required><br>
                    <input type="password" class="form-control" id="checkPwd" placeholder="비밀번호 확인 입력해주세요" required><br>
                    <input type="text" class="form-control" id="memName" name="memName" placeholder="이름을 입력해주세요" required><br>
                    <input type="text" class="form-control" id="memPhone" name="memPhone" placeholder="전화번호를 입력해주세요" required><br>
                </div>
                <div class="btns" align="center">
                    <button id="enrollBtn" type="submit" class="login_btn">회원가입</button>
                </div>
            </form>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>