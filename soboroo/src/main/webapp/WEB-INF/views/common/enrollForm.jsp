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
<script>dataLayer=[{uid:"1415372"}]</script>    
<!-- Google Tag Manager -->
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

<!-- ========================== 카카오맵 ========================== -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22931d135d75b509838f23be2834c5c7&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- ========================== flatpickr ========================== -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/confetti.css">


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
			
				<form id="allForm" action="https://api.onoffmix.com/v1/event/ManageEvent/add" method="POST" target="_self"
					encType="multipart/form-data" data-preview="/event/preview" data-preview-mobile="/event/preview_mobile"
					data-draft="https://api.onoffmix.com/v1/event/ManageEvent/draft" data-has-draft="2023-04-28 11:41"
					data-hpp-max="300000" data-event_method_type="advance" data-open_type="open">
	
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
					
					<article class="exposure_setting">
						<h3>기본설정<span class="required">필수</span></h3>
						<div class="group_container">
							<fieldset>
								<div class="input_wrap">
									<div class="form_origin">
										<div id="onoff" class="selectbox" data-list_show="false">
											<select name="category">
												<option value="">온/오프라인 선택</option>
												<option value="085">온라인</option>
												<option value="087">오프라인</option>
											</select>
											<button type="button" id="selectbox_btn_onoff" class="selectbox_btn">
												<span id="onoff-title">온/오프라인 선택</span>
											</button>
											<ul id="onoff-list">
												<li id="value0" data-value="카테고리 선택">온/오프라인 선택</li>
												<li id="value1" data-value="온라인">온라인</li>
												<li id="value2" data-value="오프라인">오프라인</li>
											</ul>
										</div>
									</div>
									<div class="form_origin">
										<div id="period" class="selectbox" data-list_show="false">
											<select name="category">
												<option value="">기간 선택</option>
												<option value="085">반짝모임</option>
												<option value="087">정기모임</option>
											</select>
											<button type="button" id="selectbox_btn_period" class="selectbox_btn">
												<span id="period-title">기간 선택</span>
											</button>
											<ul id="period-list">
												<li id="value0" data-value="카테고리 선택">기간 선택</li>
												<li id="value1" data-value="온라인">반짝모임</li>
												<li id="value2" data-value="오프라인">정기모임</li>
											</ul>
										</div>
									</div>
									<div class="form_origin">
										<div id="goal" class="selectbox" data-list_show="false">
											<select name="category">
												<option value="">목표 선택</option>
												<option value="085">꾸준한 습관</option>
												<option value="087">D-DAY</option>
											</select>
											<button type="button" id="selectbox_btn_goal" class="selectbox_btn">
												<span id="goal-title">목표 선택</span>
											</button>
											<ul id="goal-list">
												<li id="value0" data-value="카테고리 선택">목표 선택</li>
												<li id="value1" data-value="온라인">꾸준한 습관</li>
												<li id="value2" data-value="오프라인">D-DAY</li>
											</ul>
										</div>
									</div>
								</div>
							</fieldset>
						</div>
					</article>

					<article class="event_thumbnail">
						<div id="thumbnail11" class="thumbnail">
							<img src="" data-default-src="resources/images/logo_3.png" alt="모임 이미지" data-time="1682652657" style="width: 300; height: 300;" id="preview">
							<input type="file" id="test" class="fileupload" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
							<button type="button" class="img_change_btn" onclick="imgUp();">사진변경</button>
							<button type="button" class="img_delete_btn" onclick="imgDel();">삭제하기</button>
						</div>
					</article>

					<script>
						$(document).ready(function(){
							$("#onoff-list").on("click","li",function(e){
								console.log($(e.target).data("value"));
								$("#onoff-title").text($(e.target).data("value"));
							})
						})
						$('#selectbox_btn_onoff').click(function(event){ event.stopPropagation(); $('#onoff-list').toggle(); })
						$(document).click(function(){ $('#onoff-list').hide(); })

						$(document).ready(function(){
							$("#period-list").on("click","li",function(e){
								console.log($(e.target).data("value"));
								$("#period-title").text($(e.target).data("value"));
							})
						})
						$('#selectbox_btn_period').click(function(event){ event.stopPropagation(); $('#period-list').toggle(); })
						$(document).click(function(){ $('#period-list').hide(); })

						$(document).ready(function(){
							$("#goal-list").on("click","li",function(e){
								console.log($(e.target).data("value"));
								$("#goal-title").text($(e.target).data("value"));
							})
						})
						$('#selectbox_btn_goal').click(function(event){ event.stopPropagation(); $('#goal-list').toggle(); })
						$(document).click(function(){ $('#goal-list').hide(); })
					</script>

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
										<input type="text" name="title" placeholder="모임명을 입력해주세요." value="" maxlength="64" required
											data-parsley-required-message="모임명을 입력해주세요." data-parsley-class-handler=".event_name_category .form_row">
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
											<input type="text" name="ownerPhone_body" oninput="autoHyphen2(this)" maxlength="13" required value="">
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
								const autoHyphen2 = (target) => {
									target.value = target.value
									.replace(/[^0-9]/g, '')
									.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
								}
							</script>

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

						<div class="group_container ui-sortable">
							<fieldset data-map="true" data-datepicker_set="true" data-group_setting="true" data-pay_host_num=""
								data-pay_host_name="" data-bank_code="0" data-usemap="true" data-is_free="true" data-existgroupattenduser=""
								class="open">
								<input type="hidden" name="groupIdx[-1]" value="-1">
								<input type="hidden" name="groupisShowAttend[-1]" value="1">
								<input type="hidden" name="groupisShowStandby[-1]" value="1">
								<input type="hidden" name="groupisShowPrivate[-1]" value="0">
								<div class="input_wrap">
									<div class="form_row">
										<div class="group_name">
											<input type="text" name="groupName[-1]" title="그룹명 입력" data-parsley-required-message="그룹명을 입력해주세요."
												data-parsley-group="group_name" data-parsley-group_name_check="" required="" value=""
												maxlength="16" placeholder="그룹명 입력">
										</div>
										<div class="group_capacity">
											<input type="text" name="groupCapacity[-1]" class="capacity" title="모집 정원 입력"
												data-parsley-required-message="모집 정원을 입력해주세요." required="" placeholder="모집 정원 입력" maxlength="7"
												value="">
										</div>
										<div class="group_add_remove_btn">
											<button type="button" class="add">그룹설정</button>
										</div>
									</div>
								</div>
								<div class="group_option">
									<input type="hidden" class="mapX" name="mapX[-1]" value="">
									<input type="hidden" class="mapY" name="mapY[-1]" value="">
									<input type="hidden" class="sido" name="sido[-1]" value="서울특별시">
									<input type="hidden" class="gugun" name="gugun[-1]" value="강남구">
									<input type="hidden" class="dong" name="dong[-1]" value="">
									<div class="time_place_wrap">
										<div class="date_input" style="display: none">
											<input type="hidden" name="eventStartDateTime_date[-1]" required="" value="">
											<input type="hidden" name="eventStartDateTime_time[-1]" required="" value="">
											<input type="hidden" name="eventEndDateTime_date[-1]" required="" value="">
											<input type="hidden" name="eventEndDateTime_time[-1]" required="" value="">
											<input type="hidden" name="recruitStartDateTime_date[-1]" required="" value="">
											<input type="hidden" name="recruitStartDateTime_time[-1]" required="" value="">
											<input type="hidden" name="recruitEndDateTime_date[-1]" required="" value="">
											<input type="hidden" name="recruitEndDateTime_time[-1]" required="" value="">
										</div>
										<div class="form_row" id="eventDateTime_-1">
											<div class="date_time_wrap event">
												<label for="">모임기간</label>
												<input type="text" id="meetingDate" placeholder="모임기간을 선택하세요." value=""
													data-parsley-required-message="모임기간을 선택해주세요." 
													data-parsley-class-handler="#eventDateTime_-1" autocomplete="off" readonly="" required="">
											</div>
										</div>
										<div class="form_row">
											<div class="date_time_wrap apply">
												<label for="">신청기간</label>
												<input type="text" id="applyDate" placeholder="신청기간을 선택하세요." value=""
													data-parsley-required-message="신청기간을 선택해주세요."
													data-parsley-class-handler="#recruitDateTime_-1" autocomplete="off" readonly="" required="">
											</div>
										</div>
										<p class="ex">* 참여 신청 및 취소는 신청 기간에만 가능합니다.</p>
										<div class="form_row">
											<div class="place_check">
												<input type="checkbox" id="noUseMap[-1]" name="addr_yn[-1]" value="0" class="noUseMap">
												<label for="noUseMap[-1]">장소 없음</label>
											</div>
											<div>
												<span>
													<input type="radio" id="no_place[-1]" name="no_place[-1]" value="0" checked="">
													<label for="no_place[-1]">장소 없음/미정</label>
												</span>
												<span>
													<input type="radio" id="online[-1]" name="no_place[-1]" value="1">
													<label for="online[-1]">온라인</label>
												</span>
											</div>
										</div>
										<div class="form_row place_search">
											<div class="place_search_input" data-input_type="text">
												<span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
												<input type="text" id="address" class="addr_1 ui-autocomplete-input" placeholder="장소명, 주소를 검색해 주세요." name="group_address" required="" readonly>
												<button type="button" class="addr_reset_btn">주소 초기화</button>
												<button type="button" id="searchBtn" style="display: none;">검색</button>
												<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-1" tabindex="0" style="display: none;"></ul>
											</div>
										</div>
										<div class="form_row place_search">
											<div class="place_search_input" data-input_type="text">
												<input type="text" class="addr_2" name="address_detail" placeholder="나머지 주소를 입력해 주세요." value="">
											</div>
										</div>
										<div class="form_row map">
											<div id="map1" style="width:628px; height:254px; display: block;"></div>
										</div>
									</div>
									<div class="person_apply_wrap">
										<!-- <div class="form_row select_apply" data-input_type="radio">
											<div class="op_h"> <span>선정방법</span>
												<div class="help_tip"> <span> <span>선착순</span> 신청 순서대로 참여확정자로 신청됩니다. <span>개설자 선정</span> 대기자로
														신청되고
														개설자의 승인을 통해 참여확정자로 변경됩니다. </span> </div>
											</div>
											<div class="op_c">
												<div> <input type="radio" id="groupAuthorizeType[-1]_01" name="groupAuthorizeType[-1]"
														value="01" checked=""> <label for="groupAuthorizeType[-1]_01"
														title="개설자 통장입금 결제인 경우 설정을 변경할 수 없습니다.">선착순</label> </div>
												<div> <input type="radio" id="groupAuthorizeType[-1]_02" name="groupAuthorizeType[-1]"
														value="02">
													<label for="groupAuthorizeType[-1]_02" title="개설자 통장입금 결제인 경우 설정을 변경할 수 없습니다.">개설자
														선정</label>
												</div>
											</div>
										</div> -->
										<!-- <div class="form_row" data-input_type="text">
											<div class="op_h"> <span>동반인원</span>
												<div class="help_tip"> <span> <span>없음</span> 본인만 신청 가능합니다. <span>1명 이상</span> 본인 외 동반인원수를 선택하여
														신청가능합니다. </span> </div>
											</div>
											<div class="op_c numberbox"> <input type="text" name="groupMemberPerAttend[-1]"
													class="numberbox_input companion" placeholder="없음" data-max_num="29" value=""> <span
													class="plus"></span><span class="minus"></span> </div>
										</div> -->
										<div class="form_row over_capacity" data-input_type="radio">
											<div class="op_h"> <span>정원초과 모집</span>
												<div class="help_tip"> <span> <span>허용</span> 정원을 초과해도 대기자로 신청자를 받습니다. 결원 발생 시 대기자가 참여확정자로 자동
														변경될 수
														있습니다. <span>허용안함</span> 정원까지만 신청자를 받고 더 이상 신청자를 받지 않습니다. </span> </div>
											</div>
											<div class="op_c">
												<div> <input type="radio" id="group_overcapacity[-1]_01" name="group_overcapacity[-1]" value="1"
														checked="">
													<label for="group_overcapacity[-1]_01" title="정원초과 모집이 불가능한 경우 설정을 변경할 수 없습니다.">허용</label>
												</div>
												<div> <input type="radio" id="group_overcapacity[-1]_02" name="group_overcapacity[-1]"
														value="0">
													<label for="group_overcapacity[-1]_02" title="정원초과 모집이 불가능한 경우 설정을 변경할 수 없습니다.">허용안함</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</fieldset>
						</div>

						<div class="form_row group_num_select_check" data-group_select_num="0" style="display: none;">
							<div class="selectbox" data-list_show="false">
								<select class="group_num_select" name="selectableGroupLimit">
								</select>
							</div>
						</div>
					</article>

					<script>
						var meetingDate = document.querySelector('#meetingDate');
						var applyDate = document.querySelector('#applyDate');
						flatpickr.localize(flatpickr.l10ns.ko);

						flatpickr(meetingDate);
						meetingDate.flatpickr({
							mode: "range",
							minDate: "today",
							dateFormat: "Y-m-d",
							local: 'ko'
						});

						applyDate.flatpickr({
							mode: "range",
							minDate: "today",
							dateFormat: "Y-m-d",
							local: 'ko'
						});
					</script>

					<script>
						

					</script>

					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

					<script>
						var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
						var options = { //지도를 생성할 때 필요한 기본 옵션
							center: new kakao.maps.LatLng(37.499147, 127.032774), //지도의 중심좌표.
							level: 3 //지도의 레벨(확대, 축소 정도)
						};
				
						var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
					</script>
				
					<script>
						$("#address").click(function(){
							new daum.Postcode({
								oncomplete: function(data) { //선택시 입력값 세팅
									document.getElementById("address").value = data.address; // 주소 넣기
									// document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
									$('#searchBtn').click();
								}
							}).open();
						})
					</script>
					
					<script>
					var mapContainer = document.getElementById('map2'), // 지도를 표시할 div 
						mapOption = {
							center: new kakao.maps.LatLng(37.499147, 127.032774), // 지도의 중심좌표
							level: 3 // 지도의 확대 레벨
						};  
					
					$('#searchBtn').click(function search(){
						// 버튼을 click했을때
						// 지도를 생성합니다    
						
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch($('#address').val(), function(result, status) {
					
							// 정상적으로 검색이 완료됐으면 
							 if (status === kakao.maps.services.Status.OK) {
								var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
								
								// 추출한 좌표를 통해 도로명 주소 추출
								let lat = result[0].y;
								let lng = result[0].x;
								getAddr(lat,lng);
								function getAddr(lat,lng){
									let geocoder = new kakao.maps.services.Geocoder();
					
									let coord = new kakao.maps.LatLng(lat, lng);
									let callback = function(result, status) {
										if (status === kakao.maps.services.Status.OK) {
											// 추출한 도로명 주소를 해당 input의 value값으로 적용
											$('#address').val(result[0].road_address.address_name);
										}
									}
									geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
								}
								
								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map: map,
									position: coords
								});
					
								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow({
									content: '<div style="width:150px; text-align:center; padding:6px 0;">' + $("#address").val() + '</div>'
								});
								infowindow.open(map, marker);
					
								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							} 
						});  
					});
					</script>

	
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
													<input type="checkbox" id="field_A0001" value="A0001" name="interest_field[]">
													<label for="field_A0001">교육/어학 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0002" value="A0002" name="interest_field[]">
													<label for="field_A0002">취업/자격증 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0003" value="A0003" name="interest_field[]">
													<label for="field_A0003">여행 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0004" value="A0004" name="interest_field[]">
													<label for="field_A0004">스포츠/운동 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0005" value="A0005" name="interest_field[]">
													<label for="field_A0005">요리/음식 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0006" value="A0006" name="interest_field[]">
													<label for="field_A0006">문화/예술 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0007" value="A0007" name="interest_field[]">
													<label for="field_A0007">영화/음악 </label>
												</li>
												<li>
													<input type="checkbox" id="field_A0008" value="A0008" name="interest_field[]">
													<label for="field_A0008">기타 </label>
												</li>
											</ul>
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
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_informing.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_img.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.tmpl.min.js"></script>



	


	
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/class_list.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.fileupload.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.browser.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.fancybox-1.3.3.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/common/dist/plugins/moment.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/common/dist/plugins/daterangepicker_2020.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery-ui-autocompleteBox.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/webeditor/SE2.3.4.O10204/js/HuskyEZCreator.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.caret.min.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.tag-editor.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/parsley.min.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/map_2020.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/event/plugin/pay_host.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/event/plugin/additional_info.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_tag.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_setup_validation.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/event/event-add_2020.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/event/plugin/editor.js"></script> -->

	<!-- Plugin  -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/plugins/owl.carousel.min.js"></script> -->

	<!-- Script -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/common.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/header.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/main/sliderRotate.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/main/main.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/today-seen.js"></script> -->

	<!-- PC Common Script -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/common.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/pc/dist/common/header.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/common/dist/plugins/app/app-ver-chk.js"></script> -->
	<!-- <script src="https://static.onoffmix.com/js/common/dist/log/statistic.js"></script> -->

	<!-- Script -->
	<script
		type="text/javascript">window.NREUM || (NREUM = {}); NREUM.info = { "beacon": "bam.nr-data.net", "licenseKey": "4d73c0dfa7", "applicationID": "119983018", "transactionName": "Z1MAZEVWDREHWkEMWl4ZI1NDXgwMSXZzKGpzWQxERVgPDgNLGjpHVVsDQA==", "queueTime": 2, "applicationTime": 383, "atts": "SxQDEg1MHh8=", "errorBeacon": "bam.nr-data.net", "agent": "" }
	</script>


	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>