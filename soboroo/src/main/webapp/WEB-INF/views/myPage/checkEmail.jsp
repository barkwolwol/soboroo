<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

.body-inner {
	font-family: 'Pretendard-Regular';
}

#boardList {
	text-align: center;
}

#boardList>tbody>tr:hover {
	cursor: pointer;
}

#pagingArea {
	width: fit-content;
	margin: auto;
}

/* .table{
          table-layout : fixed;
        }
      	
      	.table td {
      	   text-overflow : ellipsis;
      	   overflow: hidden;
      	   white-space : nowrap;	
      	}
 */
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp" />

	<div class="body-inner">

		<!--     <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)"> -->
		<div id="banner-area" class="banner-area"
			style="background-image: url(https://images.unsplash.com/photo-1625233583974-28b93466d22f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80)"
			; 
        background-repeat:no-repeat;>
			<div class="banner-text">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="banner-heading">
								<h1 class="banner-title">마이페이지</h1>
							</div>
						</div>
						<!-- Col end -->
					</div>
					<!-- Row end -->
				</div>
				<!-- Container end -->
			</div>
			<!-- Banner text end -->
		</div>
		<!-- Banner area end -->

		<section id="main-container" class="main-container">
			<div class="container">
				<div class="row">

					<div class="col-lg-4 order-1 order-lg-0">

						<div class="sidebar sidebar-left">


							<div class="widget recent-posts">
								<h3 class="widget-title">최근 조회한 소모임</h3>
								<ul class="list-unstyled">
									<li class="d-flex align-items-center">
										<div class="posts-thumb">
											<a href="#"><img loading="lazy" alt="img"
												src="${pageContext.request.contextPath}/resources/images/news/news1.jpg"></a>
										</div>
										<div class="post-info">
											<h4 class="entry-title">
												<a href="#">광진구에서 풋살해요!</a>
											</h4>
										</div>
									</li>
									<!-- 1st post end-->

									<li class="d-flex align-items-center">
										<div class="posts-thumb">
											<a href="#"><img loading="lazy" alt="img"
												src="${pageContext.request.contextPath}/resources/images/news/news2.jpg"></a>
										</div>
										<div class="post-info">
											<h4 class="entry-title">
												<a href="#">안양에서 독서모임 구합니다~</a>
											</h4>
										</div>
									</li>
									<!-- 2nd post end-->

									<li class="d-flex align-items-center">
										<div class="posts-thumb">
											<a href="#"><img loading="lazy" alt="img"
												src="${pageContext.request.contextPath}/resources/images/news/news3.jpg"></a>
										</div>
										<div class="post-info">
											<h4 class="entry-title">
												<a href="#">강남에서 독서모임 하실 분?</a>
											</h4>
										</div>
									</li>
									<!-- 3rd post end-->

								</ul>

							</div>
							<!-- Recent post end -->





						</div>
						<!-- Sidebar end -->
					</div>
					<!-- Sidebar Col end -->

					<div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">

						<div class="post" id="myGroup">

							<div class="post-body">
								<div id="showInfo" style="padding:0px 200px;">
									<div style="padding:70px 100px 40px 100px;">
										<img src="${pageContext.request.contextPath}/resources/images/lock.png" width="130px" height="130px" align="center" ;
                      id="img"></div>
									<div style="text-align:center;">
										<p>회원님의 개인정보 보호를 위해 이메일 인증이 필요합니다.<br>
										인증번호는 가입하신 카카오톡 아이디로 전송됩니다.</p>
									</div>
									<div style="padding-top:20px; padding-left:120px; padding-bottom: 50px;">
									<button type="button"  class="btn btn-primary" id="sendEmail">이메일 전송</button>
									</div>
									</div>
									
									<div>
									<div id="showForm" style="display:none; padding:0px 200px;">
									<div style="padding:70px 100px 40px 100px;">
										<img src="${pageContext.request.contextPath}/resources/images/lock.png" width="130px" height="130px" align="center" ;
                      id="img"></div>
                      				<div style="text-align:center;">
										<p>인증번호가 전송되었습니다.<br>
											가입하신 카카오톡 이메일을 확인해 주세요.
										</p>
										</div>
										<div style="padding-top:10px;">
									<input type="text" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" placeholder="인증번호 입력">
									</div>
									<div id="passwordHelpBlock" class="form-text"></div>
									<div style="padding-top:30px; padding-left:120px; padding-bottom: 50px;">
									<button type="button" class="btn btn-primary" id="checkEmail">인증번호 확인</button>
									</div>
									</div>
									</div>
									
									<script>
									 
									  $(function(){
									    let code;
									    const checkInput = $("#inputPassword5");
									    
									    $("#sendEmail").on("click", function(){
									    	
									      const email = '${loginUser.memEmail}';
									      console.log(email);
									      $("#showForm").show();
									      $("#showInfo").hide();
									     // $("#passwordHelpBlock").css("color", "#ff8932").text("이메일이 전송되었습니다.");
									
									      // AJAX를 사용하여 email 값을 서버로 전송
									      $.ajax({
									        url: 'mailCheck', // 데이터를 전송할 서버의 엔드포인트
									        // method: "POST",
									        data: { email: email }, // 전송할 데이터 객체
									        success: function (data) {
									          console.log("data: " + data);
									          checkInput.attr('disabled', false);
									          code = data;
									          
									         },
									        error: function() {
									          console.log("이메일 전송 실패");
									        }
									      });
									    });
									    
									    
									    $('#inputPassword5').blur(function () {
									        const inputCode = $(this).val();
									        const $resultMsg = $('#passwordHelpBlock');
									        
									        if (inputCode === code) {
									        	
									        	alert("이메일 인증에 성공하였습니다.");
									        	 // JSP로 이동
										          window.location.href = 'update.my';
										        
									        } else {
									          $resultMsg.html('인증번호가 불일치합니다. 다시 확인해주세요.');
									          $resultMsg.css('color', '#ff8932');
									        }
									      });
									    });
									  </script>
										
								</div>
							</div>
						</div>
								<!-- 3rd post end -->

								<!-- </div> -->
								<!-- Content Col end -->

							</div>
							<!-- Main row end -->

						</div>
						<!-- Container end -->
		</section>
		<!-- Main container end -->

		<jsp:include page="../common/footer.jsp" />

	</div>
	<!-- Body inner end -->
</body>

</html>