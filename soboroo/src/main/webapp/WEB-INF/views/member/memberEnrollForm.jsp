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
                    <input type="text" class="form-control" id="memId" name="memId" placeholder="ID를 입력해주세요" required>
                    
                    <div id="checkResult" style="height: 4px; margin: 0; font-size:12px; display:none"></div><br>
                    
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

    <script>
        // $(function(){
        //     //id입력시 - id keyup
        //     $('#memId').on('keyup', function(){ // keyup -> 입력할 때 
        //         console.log("입력했다.")
        //         idval = $('#memId').val().trim(); // 
                
        //         regId = /^[A-Za-z0-9_\-]{4,19}$/;
                
        //         if(!(regId.test(idval))){
        //             console.log(idval);
        //             $("#checkResult").show();
        //             $("#checkResult").css("color", "red").html("영대소문자와 숫자를 포함한 5글자 이상 20글자 이하로 다시 입력해주세요.").css("display", "block");
        //             // 다른 div 사용하기
        //             // keyup backspace 적용 X
                    
        //             idval="";
        //             console.log("idval");
        //             console.log(idval);
        //         }else{
        //             idcheck();
        //         }
        //     })
        // })
    
        // function idcheck(){
        //     // 아이디 입력하는 input 요소객체 변수에 담아두기
        //     const $idInput = $("#enrollForm input[name=memId]");
            
        //     $idInput.keyup(function(){
        //         //console.log($idInput.val());
                
        //         // 우선 최소 5글자 이상으로 입력되어 있을 때만 ajax요청해서 중복체크 하도록
        //         if($idInput.val().length >= 5){ // if start
                    
        //             $.ajax({
        //                 url:"idCheck.me",
        //                 data:{
        //                     checkId:$idInput.val()
        //                 },
        //                 success:function(result){
        //                     if(result == 'NNNNN') { // 사용 불가능
        //                         $("#checkResult").show();
        //                         $("#checkResult").css("color", "red").html("중복된 아이디가 존재합니다. 다시 입력해주세요.");
        //                         // 버튼 비활성화
        //                         $("#enrollForm :submit").attr("disabled", true);
                                
        //                     }else { // 사용 가능
        //                         $("#checkResult").show();
        //                         $("#checkResult").css("color", "white").text("사용 가능한 아이디입니다.")
        //                         // 버튼 활성화
        //                         $("#enrollForm :submit").removeAttr("disabled");
        //                     }
        //                 },
        //                 error:function(){
        //                     console.log("ajax 통신 실패!")
        //                 }
        //             })
                    
        //         }else { // 5글자 미만일 경우 => 이거 왜 쓸까? 지울수도 있으니까.. 버튼 비활성화, 메시지 숨기기
        //             $("#checkResult").hide();
        //             $("#enrollForm :submit").attr("disabled", true);
        //         } 
                
        //     })
            
        // }
    </script>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>