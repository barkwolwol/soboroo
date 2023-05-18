<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<div class="body-inner">

		<div id="banner-area" class="banner-area"
			style="background-image: url(https://images.unsplash.com/photo-1525283427788-dab44a627fe0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80)" ; 
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

						<div class="post">

							<div class="post-body">
								<div class="entry-header">
									<h2 class="entry-title">닉네임 변경</h2>
								</div>
								<!-- header end -->

								<div class="entry-content">
									<div class="content">
										<!-- <br><br> -->
										<br>
										<!-- <br></br> -->
										<div>
											<div>
												<form action="updateNick.my" id="checkNick">
													<div class="mb-3">
														<input type="text" class="form-control"
															id="exampleInputEmail1" name="memNickname"
															aria-describedby="emailHelp"
															style="width: 690px; padding: 5px 10px; font-size: 14px;"
															placeholder="최대 15자 입력">
														<div id="nickCheck" class="form-text"
															style="padding-left: 5px;"></div>
													</div>
													<div class="post-footer">
														<button type="submit" class="btn btn-primary" id="notifySendBtn">변경하기</button>
													</div>
												</form>
											</div>
											<script>
												$(function() {
													const $nickInput = $("#checkNick input[name=memNickname]");
													const $submitButton = $("#checkNick :submit");
											
													function updateButtonState() {
														const inputValue = $nickInput.val().trim();
											
														if (inputValue === "") {
															$submitButton.prop("disabled", true);
															$("#nickCheck").hide();
														} else if (inputValue.length > 15) {
															$nickInput.val(inputValue.substr(0, 15));
														} else {
															$submitButton.prop("disabled", false);
															$("#nickCheck").css("color", "#ff8932").text("사용 가능한 닉네임입니다.");
														}
													}
											
													$nickInput.on('input', function() {
														const inputValue = $nickInput.val().replace(/\s/g, ""); // 공백 제거
											
														$nickInput.val(inputValue); // 제거된 공백으로 값 업데이트
														updateButtonState();
											
														const trimmedValue = inputValue.trim();
											
														if (trimmedValue === "") {
															$("#nickCheck").hide();
															return;
														}
											
														$.ajax({
															url: "checkNick.my",
															data: {
																checkNick: trimmedValue
															},
															success: function(result) {
																if (result === "NNNNN") {
																	$("#nickCheck").show();
																	$("#nickCheck").css("color", "#ff8932").text("이미 존재하는 닉네임입니다. 다시 입력해주세요.");
																	$submitButton.prop("disabled", true);
																} else {
																	$("#nickCheck").show();
																	if (trimmedValue.length <= 15) {
																		$("#nickCheck").css("color", "#ff8932").text("사용 가능한 닉네임입니다.");
																	}
																}
															},
															error: function() {
																console.log("ajax 통신 실패!");
															}
														});
													});
											
													updateButtonState();
												});
											</script>
											<script>
											$('#notifySendBtn').click(function(e){
											    let modal = $('.modal-content').has(e.target);
											    let type = '70';
											    let target = modal.find('.modal-body input').val();
											    let content = modal.find('.modal-body textarea').val();
											    let url = '${contextPath}/member/notify.do';
											    // 전송한 정보를 db에 저장	
											    $.ajax({
											        type: 'post',
											        url: '${contextPath}/member/saveNotify.do',
											        dataType: 'text',
											        data: {
											            target: target,
											            content: content,
											            type: type,
											            url: url
											        },
											        success: function(){    // db전송 성공시 실시간 알림 전송
											            // 소켓에 전달되는 메시지
											            // 위에 기술한 EchoHandler에서 ,(comma)를 이용하여 분리시킨다.
											            socket.send("관리자,"+target+","+content+","+url);	
											        }
											    });
											    modal.find('.modal-body textarea').val('');	// textarea 초기화
											});
											</script>

										</div>
									</div>
								</div>
								<!-- post-body end -->
							</div>
							<!-- 3rd post end -->
						</div>

						<div class="post">
							<div class="entry-header">
								<h2 class="entry-title">자기소개 변경</h2>
							</div>
							<!-- header end -->

							<div class="entry-content">
								<div class="content">
									<!-- <br><br> -->
									<br>
									<!-- <br></br> -->
									<div>
										<div>
											<form action="updateIntro.my">
												<div class="mb-3">
													<input type="text" class="form-control" id="memIntroduce"
														name="memIntroduce" aria-describedby="emailHelp"
														style="width: 690px; padding: 5px 10px; font-size: 14px;"
														placeholder="최대 200자 입력">
													<div class="textLengthCount" style="font-size: 13px; padding-left:7px;">
														<span class="textCount">0자 </span> <span class="textTotal">/
															200자</span>
													</div>
												</div>
												<script>
													$("#memIntroduce")
															.on("input",function(e) {
																		let content = $(this).val();

																		if (content.length == 0|| content === '') {
																			$(".textCount").text('0자');
																		} else {
																			$(".textCount").text(content.length+ '자');
																		}

																		if (content.length > 200) {
																			$(this).val(content.substring(0,200));
																			$(".textLengthCount").css("color","#ff8932").text("자기소개는 200자까지 입력 가능합니다.");
																		} else {
																			$(".textLengthCount").css("color","").text(content.length + '자/200자');
																		}
																	});
												</script>
												<div class="post-footer">
													<button type="submit" class="btn btn-primary">변경하기</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- post-body end -->
						</div>
						<!-- 3rd post end -->


						<div class="post">
							<div class="entry-header">
								<h2 class="entry-title">회원 탈퇴</h2>
							</div>
							<!-- header end -->

							<div class="entry-content">
								<div class="content">
									<br>
									<div>
											<div class="post-footer">
												<button type="submit" class="btn btn-primary" id="deleteMem">탈퇴하기</button>
											</div>
											
											<script>
												$(function(){
													$("#deleteMem").on("click", function(){
														if (confirm("탈퇴 후 복구가 불가능합니다. 정말 탈퇴하시겠습니까?") == true){    //확인

														     location.href="deleteMember.my"

														 }else{   //취소
															 // alert("회원 탈퇴를 취소하셨습니다.");
														     return false;

														 }
													})
												})
											</script>
									</div>
								</div>
							</div>
						</div>
						<!-- post-body end -->
					</div>
					<!-- 3rd post end -->
					<!-- </div> -->



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