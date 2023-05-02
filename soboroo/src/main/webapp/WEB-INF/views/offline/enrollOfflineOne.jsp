<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 오프라인 반짝모임 개설</title>
<!-- Favicon ================================================== -->
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
<!-- =================================== 공통 시작 ===================================  -->
<!-- OFM Common Style -->
<!-- <link rel="stylesheet" href="https://static.onoffmix.com/css/common/pc/common-pc.css"> -->
<!-- Common Script -->
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery-1.10.2.js"></script>
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery-ui-1.10.4.custom.js"></script>
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.dotdotdot-1.5.0.js"></script>
<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.cookie.js"></script>
<script src="https://static.onoffmix.com/js/common/src/gtm_2022/gtm.js" defer></script>
<!-- =================================== 공통 끝 ===================================  -->

<!-- =================================== 화면 고유 시작 ===================================  -->
<!-- OFM Style -->
<link rel="stylesheet" href="https://static.onoffmix.com/css/pc/event/event-add_20.css">
<!-- =================================== 화면 고유 끝 ===================================  -->
<script>dataLayer=[{uid:"1415372"}]</script>    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-K5ZBGC5');</script>
<!-- End Google Tag Manager -->
<script>var OFM_JS_GA_CONTAINER = '';</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-25312010-14"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'UA-25312010-14');
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script>
	OFM_JS_GA_CONTAINER = 'UA-25312010-14';
</script>

<!-- ========================== 웹에디터 ========================== -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">


<style>
	.ie_end_support_popup_wrap{
		display: none;
		width: 900px;
		height: 608px;
		padding: 62px 100px 0;
		position: fixed;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		border: 1px solid #c8c8c8;
		box-sizing: border-box;
		text-align: center;
		letter-spacing: -1px;
		line-height: 28px;
		color: #333;
		z-index: 1000;
		background-color: #fff;
	}
	.ie_end_support_popup_wrap h1{
		margin-bottom: 37px;
		font-size: 24px;
		font-weight: bold;
		color: #4195f5;
		letter-spacing: -1.2px
	}
	.ie_end_support_popup_wrap p{
		font-size: 16px;
	}
	.ie_end_support_popup_wrap p + p{margin-top: 10px;}
	.ie_end_support_popup_wrap p span{ font-weight: bold; }
	.ie_end_support_popup_wrap p span:last-child{ color: #4195f5;  }
	.browser_link{
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
		padding: 0 15px; 
		margin-top: 39px;
		border-top: 1px solid #d8d8d8;
	}
	.browser_link > span{
		display: block;
		width: 100%;
		margin-top: 36px;
		margin-bottom: 24px;
		font-size: 16px;
		font-weight: bold;
	}
	.browser_link a{
		display: block;
		width: 140px;
		height: 160px;
		font-size: 14px;
		font-weight: bold;
		line-height: 20px;
		letter-spacing: 0;
		background-color: #f7f8fa;
		border-radius: 10px;
	}
	.browser_link a span{
		display: block;
		font-weight: normal;
		letter-spacing: -1px;
		color: #666;
	}
	.browser_link a::before{
		content: "";
		display: block;
		width: 72px;
		height: 72px;
		margin: 21px auto 9px;
		background-repeat: no-repeat;
		background-size: 100%;
	}
	.browser_link a:nth-child(2)::before{background-image: url("https://static.onoffmix.com/images/pc/ie_end_support_popup/chrome.png");}
	.browser_link a:nth-child(3)::before{background-image: url("https://static.onoffmix.com/images/pc/ie_end_support_popup/edge.png");}
	.browser_link a:nth-child(4)::before{background-image: url("https://static.onoffmix.com/images/pc/ie_end_support_popup/whale.png");}
	.browser_link a:nth-child(5)::before{background-image: url("https://static.onoffmix.com/images/pc/ie_end_support_popup/firefox.png");}
	.ie_end_support_popup_wrap button{
		display: block;
		width: 24px;
		height: 24px;
		position: absolute;
		top: 19px;
		right: 19px;
		cursor: pointer;
		border: 0 none;
		overflow: hidden;
		text-indent: -9999rem;
		background-color: transparent;
		background-image: url("https://static.onoffmix.com/images/pc/svg/menu-close-gray.svg");
	}
	.close_check{
		position: absolute;
		right: 21px;
		bottom: 15px;
	}
	.close_check input{
		width: 13px;
		height: 13px;
		vertical-align: middle;
		border-color: rgba(0, 0, 0, 0.2);
	}
	.close_check label{
		margin-left: 7px;
		font-size: 12px;
		letter-spacing: -1px;
		line-height: 14px;
		vertical-align: middle;
		color: #333;
	}
</style>


</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<main id="content" class="event_add">
		<section>
				<div class="head_area">
					<h2>개설하기</h2>
				</div>
		
			<div class="content_area">
			
				<form id="allForm" 
					action="https://api.onoffmix.com/v1/event/ManageEvent/add"
					method="POST" target="_self" encType="multipart/form-data"
					data-preview="/event/preview"
					data-preview-mobile="/event/preview_mobile"
					data-draft="https://api.onoffmix.com/v1/event/ManageEvent/draft"
					data-has-draft="2023-04-28 11:41"
					data-hpp-max="300000"
					data-event_method_type="advance"
					data-open_type="open"
				>
	
					<div class="input_hidden_wrap" style="display:none">
						<input type="hidden" name="proc" value="createBaseEvent">
						<input type="hidden" name="eventIdx" value="0">
						<input type="hidden" name="banner" value="">
						<input type="hidden" name="eventPreviewUrl" value="/event/preview" target="_blank">
						<input type="hidden" name="eventPreviewUrlMobile" value="/event/preview_mobile" target="_blank">
						<input type="hidden" name="bannerUrl" value="">
						<input type="hidden" name="bannerDelete" value="0">
						<input type="hidden" name="cnt_grp_open_n" value="0">
					</div>
	
					<article class="event_thumbnail">
						<div id="thumbnail11" class="thumbnail">
							<img src="" data-default-src="resources/images/logo_3.png" alt="모임 이미지" data-time="1682652657" style="width: 300; height: 300;" id="preview">
							<input type="file" id="test" class="fileupload" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
							<button type="button" class="img_change_btn" onclick="imgUp();">사진변경</button>
							<button type="button" class="img_delete_btn" onclick="imgDel();">삭제하기</button>
						</div>
					</article>

					<script>
						function imgUp(){
							$('.fileupload').click();
						}

						function readURL(input) {
							if(input.files && input.files[0]) {
								var reader = new FileReader();
								reader.onload = function(e) {
									$("#preview").attr("src", e.target.result);
								};
								reader.readAsDataURL(input.files[0]);
								document.getElementById('thumbnail11').className += ' upload';
							}
						}

						function imgDel() {
							$("#preview").attr("src", "resources/images/logo_3.png");
							$("#test").val("");
							document.getElementById('thumbnail11').className = 'thumbnail';
						}
					</script>
	
					<article class="default_info">
						<h3>기본정보<span class="required">필수</span></h3>
	
						<div class="group_container">
							<fieldset class="event_name_category">
								<legend>카테고리/모임명</legend>
	
								<div class="input_wrap">
									<div class="form_row">
										<div id="category" class="selectbox" data-list_show="false">
											<select name="category">
												<option value="">카테고리 선택</option>
												<option value="085">교육/어학</option>
												<option value="087">취업/자격증</option>
												<option value="086">여행</option>
												<option value="090">스포츠/운동</option>
												<option value="088">요리/음식</option>
												<option value="092">문화/예술</option>
												<option value="093">영화/음악</option>
												<option value="095">기타</option>
											</select>
											<button type="button" id="selectbox_btn_category" class="selectbox_btn">
												<span id="category-title">카테고리 선택</span>
											</button>
											<ul id="category-list">
												<li id="value0" data-value="카테고리 선택">카테고리 선택</li>
												<li id="value1" data-value="교육/어학">교육/어학</li>
												<li id="value2" data-value="취업/자격증">취업/자격증</li>
												<li id="value3" data-value="여행">여행</li>
												<li id="value4" data-value="스포츠/운동">스포츠/운동</li>
												<li id="value5" data-value="요리/음식">요리/음식</li>
												<li id="value6" data-value="문화/예술">문화/예술</li>
												<li id="value7" data-value="영화/음악">영화/음악</li>
												<li id="value8" data-value="기타">기타</li>
											</ul>
										</div>
										<input type="text" name="title" placeholder="모임명을 입력해주세요."
											value="" maxlength="64" required
											data-parsley-required-message="모임명을 입력해주세요."
											data-parsley-class-handler=".event_name_category .form_row">
									</div>
								</div>
								
							</fieldset>

							<script>
								// function selectCategory() {
								// 	let a = $("#category").attr("data-list_show");
								// 	if(a == "false"){
								// 		$("#category").attr("data-list_show", true);
								// 		// $("#category-list").show();
								// 	}else{
								// 		$("#category").attr("data-list_show", false);
								// 		// $("#category-list").hide();
								// 	}
								// }
								
								$(document).ready(function(){
									$("#category-list").on("click","li",function(e){
										console.log($(e.target).data("value"));
										// console.log($(this).data("value"));
										// console.log(this);
										$("#category-title").text($(e.target).data("value"));
									})
    							})

								$('#selectbox_btn_category').click(function(event){ event.stopPropagation(); $('#category-list').toggle(); })

								$(document).click(function(){ $('#category-list').hide(); })
							</script>

							<fieldset class="contact">
								<legend>문의 연락처</legend>
	
								<div class="input_wrap">
									<div class="form_row">
										<div class="name">
											<label for="">담당자명</label>
											<input type="text" name="ownerName"
												data-parsley-required-message="담당자명을 입력해주세요."
												maxlength="16"
												data-parsley-class-handler=".contact .name" required
												value="">
										</div>
										<div class="phone">
											<label for="">전화번호</label>
											<input type="text" name="ownerPhone_body"
												maxlength="20"
												data-parsley-pattern="^[\d\-\s]*$"
												data-parsley-required-message="담당자의 전화번호를 입력해주세요."
												data-parsley-class-handler=".contact .phone" required
												value="">
										</div>
										<div id="emailBox" class="email ">
											<label for="">이메일</label>
											<input type="text" name="email_id" class="email_id" value="">
											<span>@</span>
											<div id="email" class="selectbox" data-list_show="false">
												<select name="email_domain" class="email_domain">
													<option value="">선택</option>
													<option value="direct">직접입력</option>
													<option value="naver.com" selected="">naver.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="nate.com">nate.com</option>
													<option value="kakao.com">kakao.com</option>
													<option value="daum.net">daum.net</option>
													<option value="hotmail.com">hotmail.com</option>
												</select>
	
												<input type="text" class="direct_email_domain" name="direct_email_domain" placeholder="직접입력" value="">
												<button type="button" id="selectbox_btn_email" class="selectbox_btn">
													<span id="email-title">선택</span>
												</button>
												<ul id="email-list">
													<li data-value="선택">선택</li>
													<li data-value="direct">직접입력</li>
													<li data-value="naver.com">naver.com</li>
													<li data-value="gmail.com">gmail.com</li>
													<li data-value="hanmail.net">hanmail.net</li>
													<li data-value="nate.com">nate.com</li>
													<li data-value="kakao.com">kakao.com</li>
													<li data-value="daum.net">daum.net</li>
													<li data-value="hotmail.com">hotmail.com</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<p class="ex">* 모임 종료 전까지 연락처가 노출되고 임의로 입력한 경우 개인정보 도용으로 처벌받을 수 있습니다.</p>
							</fieldset>

							<script>
								// function selectEmail(num) {
								// 	let a = $("#email").attr("data-list_show");
								// 	if(a == "false"){
								// 		$("#email").attr("data-list_show", true);
								// 		// $("#select-list").show();
								// 	}else{
								// 		$("#email").attr("data-list_show", false);
								// 		// $("#select-list").hide();
								// 	}
								// }

								// function direct() {
								// 	document.getElementById('emailBox').className = 'email direct_on';
								// 	$("#email").attr("data-list_show", false);
								// }

								$(document).ready(function(){
									$("#email-list").on("click","li",function(e){
										console.log($(e.target).data("value"));
										if($(e.target).data("value") == 'direct'){
											document.getElementById('emailBox').className = 'email direct_on';
										}else{
											document.getElementById('emailBox').className = 'email ';
											$("#email-title").text($(e.target).data("value"));
										}
									})
    							})

								$('#selectbox_btn_email').click(function(event){ event.stopPropagation(); $('#email-list').toggle(); })

								$(document).click(function(){ $('#email-list').hide(); })

								
							</script>

							<fieldset class="introduce">
								<legend>간단한 모임소개</legend>
	
								<div id="testCheck" class="input_wrap" data-text_length="0">
									<div class="form_row">
										<input type="text" id="simple" class="simple_introduce" placeholder="모임을 한줄로 소개해 주세요.(100자이내)" name="abstract"
										data-parsley-required-message="한줄소개를 입력해주세요."
										data-parsley-class-handler=".introduce .form_row" required>
									</div>
									<!-- <span id="textLengthCheck">0 / 100</span> -->
								</div>
							</fieldset>
						</div>
					</article>

					<script>
						$("#simple").keyup(function(e) {
							var content = $(this).val();
							// $("#textLengthCheck").text(content.length + " / 100");
							$("#testCheck").attr('data-text_length', content.length);
							if (content.length > 100) {
								$(this).val(content.substring(0, 100));
								// $('#textLengthCheck').text("100 / 100");
								$("#testCheck").attr('data-text_length', '100');
							}
						});
					</script>
	
					<article class="event_detail">
						<h3>상세정보<span class="required">필수</span></h3>
	
						<div id="smarteditor">
							<textarea name="editorTxt" id="editorTxt" 
									  rows="10" cols="10" 
									  placeholder="내용을 입력해주세요"
									  style="width: 1209.5px"></textarea>
						  </div>
					</article>

					<script>
						let oEditors = []
					
						smartEditor = function() {
						  console.log("Naver SmartEditor")
						  nhn.husky.EZCreator.createInIFrame({
							oAppRef: oEditors,
							elPlaceHolder: "editorTxt",
							sSkinURI: "resources/static/smarteditor/SmartEditor2Skin.html",
							fCreator: "createSEditor2"
						  })
						}
					
						$(document).ready(function() {
						  smartEditor();
						})
					</script>
	
					<article class="group_info" data-key="0m2ay6tl46">
						<h3>
							<span class="group_title">그룹 정보<span class="required">필수</span></span>
							<span class="field_title">기간/장소 정보<span class="required">필수</span></span>
						</h3>
	

					</article>
	
					<article class="exposure_setting">
						<h3>모임 노출 설정</h3>
						<div class="group_container">
							<fieldset>
								<div class="input_wrap">
									<div class="form_row">
										<div>
											<input type="radio" name="open_type" id="eventOpen" value="1" checked="" data-parsley-multiple="open_type" onclick="openType();">
											<label for="eventOpen">노출함</label>
										</div>
									</div>
									<div class="form_row">
										<div>
											<input type="radio" name="open_type" id="eventPrivate" value="0" data-parsley-multiple="open_type" onclick="privateType();">
											<label for="eventPrivate">노출안함</label>
										</div>
										<div class="input password">
											<input type="checkbox" name="eventPw_check" id="eventPrivatePw" value="0" data-parsley-multiple="eventPw_check"  disabled>
											<label for="eventPrivatePw">비밀번호 사용</label>
											<input id="privatePassword" type="password" title="모임 비밀번호 입력" name="eventPw" placeholder="비밀번호 입력" disabled>
											<span class="eyes">
												<i class="fa fa-eye fa-lg"></i>
											</span>
												
										</div>
									</div>
								</div>
							</fieldset>
							<p class="ex">
								<span>* <strong>노출안함</strong> 선택 시 검색결과에 노출되지 않으며 모임 URL을 통해서만 접근할 수 있습니다.</span>
								<span>* 비밀번호 사용 시 비밀번호를 입력해야만 접근이 가능합니다.</span>
							</p>
						</div>
					</article>

					<script>
						function openType(){
							$("#allForm").attr('data-open_type', 'open');
							$("#privatePassword").attr('disabled', true);
							$("#eventPrivatePw").attr('disabled', true);
							$('#eventPrivatePw').prop('checked', false);
							$("#privatePassword").val("");
						}

						function privateType(){
							$("#allForm").attr('data-open_type', 'private');
							$("#eventPrivatePw").attr('disabled', false);

						}

						$('#eventPrivatePw').click(function(){
							if($("#eventPrivatePw").is(":checked") == true){
								console.log("이거타냐?")
								$("#privatePassword").attr('disabled', false);
								$(function(){
									$('.eyes').on('click',function(){
										$('.input.password').toggleClass('active');
		
										if( $('.input.password').hasClass('active') == true ){
											$(this).find('.fa-eye').attr('class',"fa fa-eye-slash fa-lg").parents('.input').find('#privatePassword').attr('type',"text");
										}
										else{
											$(this).find('.fa-eye-slash').attr('class',"fa fa-eye fa-lg").parents('.input').find('#privatePassword').attr('type','password');
										}
									});
								});
							}else{
								$("#privatePassword").attr('disabled', true);
								console.log("이거타냐?22222")
							}
						});
						
						
					</script>
	
					<article class="youth_approach_check">
						<h3>청소년 접근제한</h3>
						<div class="group_container">
							<fieldset>
								<div class="input_wrap">
									<div class="form_row">
										<div>
											<input type="checkbox" name="limit_under_nineteen" id="youth_check" value="1" data-parsley-multiple="limit_under_nineteen">
											<label for="youth_check">만 19세 미만 접근 제한</label>
										</div>
									</div>
								</div>
							</fieldset>
							<p class="ex">* 설정 시 <strong>반드시 성인인증</strong>을 해야 모임 페이지에 접근이 가능합니다.</p>
						</div>
					</article>
					
					<article class="event_informing">
						<h3>모임 알리기</h3>
	
						<div class="group_container">
							<fieldset>
								<legend>모임 추천</legend>
								<div class="input_wrap">
									<div class="form_row" data-checked_num="0">
										<button type="button" class="recomm_btn">
											<span>관심 분야 대상 선택</span>
											<span class="checked_num"></span>
										</button>
	
										<div class="list_wrap">
											<ul>
																						<li>
													<input type="checkbox"
														id="field_A0001" value="A0001"
														name="interest_field[]"
														 >
													<label for="field_A0001">
														교육/어학                                                </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0002" value="A0002"
														name="interest_field[]"
														 >
													<label for="field_A0002">
														취업/자격증                                              </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0003" value="A0003"
														name="interest_field[]"
														 >
													<label for="field_A0003">
														여행                                                </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0004" value="A0004"
														name="interest_field[]"
														 >
													<label for="field_A0004">
														스포츠/운동                                                </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0005" value="A0005"
														name="interest_field[]"
														 >
													<label for="field_A0005">
														요리/음식                                                </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0006" value="A0006"
														name="interest_field[]"
														 >
													<label for="field_A0006">
														문화/예술                                                </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0007" value="A0007"
														name="interest_field[]"
														 >
													<label for="field_A0007">
														영화/음악                                                </label>
												</li>
																						<li>
													<input type="checkbox"
														id="field_A0008" value="A0008"
														name="interest_field[]"
														 >
													<label for="field_A0008">
														기타                                                </label>
												</li>
										</div>
									</div>
									
									<p class="ex">* 선택한 항목에 매칭되는 사용자에게 모임이 추천됩니다. (다중 선택 가능)</p>
	
								</div>
							</fieldset>
							<fieldset class="event_tag">
								<legend>태그 입력</legend>
	
								<div class="input_wrap">
									<div class="form_row">
										<!-- <textarea type="text" class="tag_input tag-editor-hidden-src" placeholder="태그를 입력해 주세요. 예) #온오프믹스, #컬쳐데이" name="tag" data-tag-editor-error-duplicate="동일한 태그가 존재합니다." data-tag-editor-error-character="한자 및 특수문자는 입력되지 않습니다." data-tag-editor-error-maxtag="최대 5개까지 등록할 수 있습니다." data-parsley-tag="" data-parsley-errors-messages-disabled=""></textarea> -->
										<!-- <ul class="tag-editor ui-sortable">
											<li style="width: 1px;">&nbsp;</li>
											<li class="placeholder">
												<div>태그를 입력해 주세요. 예) #온오프믹스, #컬쳐데이</div>
											</li>
										</ul> -->
										<input name="tag" class="tag-editor" placeholder="태그를 입력해 주세요. 예)&nbsp; 소보루, 새로운모임">
									</div>
	
									<p class="ex">
										<span>* 태그를 쉼표나 엔터로 구분해서 입력해 주세요.</span>
										<span>* 모임 태그 입력 시 태그별 모아보기가 가능하고 검색 결과에도 반영됩니다.</span>
									</p>
								</div>
							</fieldset>
						</div>
					</article>

					<!-- 소스 다운 -->
					<script src="https://unpkg.com/@yaireo/tagify"></script>
					<!-- 폴리필 (구버젼 브라우저 지원) -->
					<script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
					<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />

					<!-- 해시 태그 정보를 저장할 input 태그. (textarea도 지원) -->

					<script>
						const input = document.querySelector('input[name=tag]');
						let tagify = new Tagify(input); // initialize Tagify
						
						// 태그가 추가되면 이벤트 발생
						tagify.on('add', function() {
							console.log(tagify.value); // 입력된 태그 정보 객체
						})
					</script>

					<article class="attend_check">
						<h3>출석체크 설정</h3>
						<div class="group_container">
							<fieldset>
								<div class="input_wrap">
									<div class="form_row">
										<div>
											<label for="attendancePw">출석 확인용 비밀번호</label>
											<input type="text" id="attendancePw" class="attendance_pw"
												name="attendancePasswd"
												value=""
												maxlength="40">
										</div>
									</div>
								</div>
							</fieldset>
							<p class="ex">
								<span>* 출석 확인용 번호는 신청자의 출석 확인을 위한 비밀번호입니다.</span>
								<span>* 직접 입력하거나 자동생성이 가능합니다. (영문 또는 숫자 8자 이내로 입력해주세요.)</span>
							</p>
						</div>
					</article>
	
					<div class="btn_wrap">
						<button type="submit" class="submit"
							data-gtm_click='{"event" : "clickEventOpenButton", "eventType" : "일반"}'>개설완료</button>
									</div>
				</form>
			</div>
		</section>
	</main>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/group_info.js"></script>


	
	<script src="https://static.onoffmix.com/js/pc/dist/common/class_list.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.tmpl.min.js"></script>
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.fileupload.js"></script> -->
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.browser.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.fancybox-1.3.3.js"></script>
	<script src="https://static.onoffmix.com/js/common/dist/plugins/moment.js"></script>
	<script src="https://static.onoffmix.com/js/common/dist/plugins/daterangepicker_2020.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery-ui-autocompleteBox.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/webeditor/SE2.3.4.O10204/js/HuskyEZCreator.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.caret.min.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.tag-editor.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/parsley.min.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/map_2020.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_img.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/pay_host.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/additional_info.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_informing.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_tag.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_setup_validation.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/event-add_2020.js"></script>
	
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/editor.js"></script>
	<!-- Plugin  -->
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/owl.carousel.min.js"></script>
	<!-- Script -->
	<script src="https://static.onoffmix.com/js/pc/dist/common/common.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/header.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/main/sliderRotate.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/main/main.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/today-seen.js"></script>

	<!-- PC Common Script -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/common.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/header.js"></script> -->
	<script src="https://static.onoffmix.com/js/common/dist/plugins/app/app-ver-chk.js"></script>
	<script src="https://static.onoffmix.com/js/common/dist/log/statistic.js"></script>
	<!-- Script -->	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"4d73c0dfa7","applicationID":"119983018","transactionName":"Z1MAZEVWDREHWkEMWl4ZI1NDXgwMSXZzKGpzWQxERVgPDgNLGjpHVVsDQA==","queueTime":2,"applicationTime":383,"atts":"SxQDEg1MHh8=","errorBeacon":"bam.nr-data.net","agent":""}</script>

	





	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>