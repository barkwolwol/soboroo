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
								<div>
									<div>
										<img loading="lazy" src="${pageContext.request.contextPath}/resources/images/logo_1.png" alt="">
									</div>
									<div>
										<p>회원님의 개인정보 보호를 위해 이메일 인증이 필요합니다.</p>
										<p>가입하신 이메일로 전송된 인증번호를 입력해주세요.</p>
									</div>
									<input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock">
									<div id="passwordHelpBlock" class="form-text"></div>
									<button type="submit" id="sendEmail">이메일 전송</button>
									
									<script>
									  $(function(){
									    let code;
									    const checkInput = $("#inputPassword5");
									    
									    $("#sendEmail").on("click", function(){
									      const email = '${loginUser.memId}';
									      console.log(email);
									      $("#passwordHelpBlock").css("color", "#ff8932").text("이메일이 전송되었습니다.");
									
									      // AJAX를 사용하여 email 값을 서버로 전송
									      $.ajax({
									        url: 'mailCheck', // 데이터를 전송할 서버의 엔드포인트
									        // method: "POST",
									        data: { email: email }, // 전송할 데이터 객체
									        success: function (data) {
									          console.log("data: " + data);
									          checkInput.attr('disabled', false);
									          code = data;
									          // 성공한 경우 추가로 처리할 내용 작성
									          
									          // JSP로 이동
									          window.location.href = 'update.my'; // 컨트롤러를 통해 JSP로 이동
									        },
									        error: function() {
									          console.log("이메일 전송 실패");
									          // 실패한 경우 추가로 처리할 내용 작성
									        }
									      });
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