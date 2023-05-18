<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 오프라인 반짝모임 개설</title>
<!-- =================================== Favicon =================================== -->
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">

<!-- =================================== 화면 고유 ===================================  -->
<link rel="stylesheet" href="https://static.onoffmix.com/css/pc/event/event-add_20.css">
<link rel="stylesheet" href="resources/css/enrollGroupStyle.css">

<!-- =================================== 웹에디터 =================================== -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<!-- =================================== 카카오맵 =================================== -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22931d135d75b509838f23be2834c5c7&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- =================================== flatpickr =================================== -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<link rel="stylesheet" type="text/css" href="https://npmcdn.com/flatpickr/dist/themes/confetti.css">

</head>
<body>
	<jsp:include page="../common/header.jsp"/>

	<main id="content" class="event_add">
		<section>
			<div class="head_area">
				<h2>오프라인 모임 개설하기</h2>
			</div>
		
			<div class="content_area">
			
				<form id="allForm" action="insertOfflineGroupOne.go" method="POST" encType="multipart/form-data" data-event_method_type="advance" data-open_type="open">
					<input type="hidden" name="id" value="${ loginUser.memNickname }">
					<input type="hidden" name="memNo" value="${ loginUser.memNo }">
					<input type="hidden" name="tableNo" value="6">

					<article class="event_thumbnail">
						<div id="thumbnail1" class="thumbnail">
							<img src="resources/images/logo_3.png" alt="모임 이미지" data-time="1682652657" id="preview">
						  	<input multiple="multiple" type="file" id="test" class="fileupload" name="upfiles" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
						  	<button type="button" class="img_change_btn" onclick="imgUp('test');">사진변경</button>
						  	<button type="button" class="img_delete_btn" onclick="imgDel('preview', 'test', 'thumbnail1');">삭제하기</button>
						</div>
					</article>
					  

					<script>
						function imgUp(inputId) {
						  $('#' + inputId).click();
						}
					  
						function readURL(input) {
						  if (input.files && input.files[0]) {
							var reader = new FileReader();
							reader.onload = function (e) {
							  $(input).siblings("img").attr("src", e.target.result);
							};
							reader.readAsDataURL(input.files[0]);
							$(input).parent().addClass('upload');
						  }
						}
					  
						function imgDel(previewId, inputId, thumbnailId) {
						  if (thumbnailId === 'thumbnail1') {
							$("#" + previewId).attr("src", "resources/images/logo_3.png");
						  }else {
							$("#" + previewId).attr("src", null);
						  }
						  $("#" + inputId).val("");
						  $("#" + thumbnailId).removeClass('upload');
						}
					  </script>
	
					<article class="default_info">
						<h3>기본정보<span class="required">필수</span></h3>
	
						<div class="group_container">
							<fieldset class="event_name_category">
								<legend>카테고리/모임명</legend>
								<div class="input_wrap">
									<div class="form_row">
										<div class="selectbox" data-list_show="false">
											<input type="hidden" id="category" name="category" value="">
											<button type="button" id="selectbox_btn_category" class="selectbox_btn">
												<span id="category-title">카테고리 선택</span>
											</button>
											<ul id="category-list">
												<li id="0" data-value="0">카테고리 선택</li>
												<li id="1" data-value="1">교육/어학</li>
												<li id="2" data-value="2">취업/자격증</li>
												<li id="3" data-value="3">여행</li>
												<li id="4" data-value="4">스포츠/운동</li>
												<li id="5" data-value="5">요리/음식</li>
												<li id="6" data-value="6">문화/예술</li>
												<li id="7" data-value="7">영화/음악</li>
												<li id="8" data-value="8">기타</li>
											</ul>
										</div>
										<input type="text" name="title" placeholder="모임명을 입력해주세요." value="" maxlength="64" data-parsley-required-message="모임명을 입력해주세요." data-parsley-class-handler=".event_name_category .form_row">
									</div>
								</div>
							</fieldset>

							<script>
								$(document).ready(function(){
									$("#category-list").on("click","li",function(e){

										const category = $(e.target).data("value");

										console.log(category);
										document.getElementById('category').value = category;

										$("#category-title").text(category);

										switch (category){
											case 0 : $("#category-title").text("카테고리 선택");
												break;
											case 1 : $("#category-title").text("교육/어학");
												break;
											case 2 : $("#category-title").text("취업/자격증");
												break;
											case 3 : $("#category-title").text("여행");
												break;
											case 4 : $("#category-title").text("스포츠/운동");
												break;
											case 5 : $("#category-title").text("요리/음식");
												break;
											case 6 : $("#category-title").text("문화/예술");
												break;
											case 7 : $("#category-title").text("영화/음악");
												break;
											case 8 : $("#category-title").text("기타");
												break; 
										}
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
											<input type="text" name="name" maxlength="16" value="">
										</div>
										<div class="phone">
											<label for="">전화번호</label>
											<input type="text" name="phone" oninput="autoHyphen2(this)" maxlength="13" value="">
										</div>
										<div id="emailBox" class="email ">
											<label for="">이메일</label>
											<input type="text" id="email_id" name="email_id" class="email_id" value="">
											<input type="hidden" id="email" name="email" value="">
											<span>@</span>
											<div id="email" class="selectbox" data-list_show="false">
	
												<input type="text" class="direct_email_domain" name="direct_email_domain" placeholder="직접입력" value="">
												<button type="button" id="selectbox_btn_email" class="selectbox_btn">
													<span id="email-title">선택</span>
												</button>
												<ul id="email-list">
													<li data-value="선택">선택</li>
													<li data-value="direct">직접입력</li>
													<li data-value="naver.com" selected="">naver.com</li>
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
								$(document).ready(function(){
									$("#email-list").on("click","li",function(e){
										console.log($(e.target).data("value"));
										
										const emailInput = document.getElementById("email_id");
										const emailSelect = $(e.target).data("value");
										const email = emailInput.value + "@" + emailSelect;

										console.log(email);
										
										document.getElementById('email').value = email;

										if($(e.target).data("value") == 'direct'){
											document.getElementById('emailBox').className = 'email direct_on';
											$("#emailBox").className = 'email direct_on';
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
										<input type="text" id="simple" class="simple_introduce" placeholder="모임을 한줄로 소개해 주세요.(100자이내)" name="simple">
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

						<div class="event_thumbnail sizeModify">
							<div id="thumbnail2" class="thumbnail sizeModify">
							  	<img id="preview2" class="sizeModify">
							  	<input multiple="multiple" type="file" id="test2" class="fileupload" name="upfiles" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
							  	<button type="button" class="img_change_btn" onclick="imgUp('test2');">사진추가</button>
								<button type="button" class="img_delete_btn" onclick="imgDel('preview2', 'test2', 'thumbnail2');">삭제하기</button>
							</div>
						</div>
						<div class="event_thumbnail sizeModify">
							<div id="thumbnail3" class="thumbnail sizeModify">
							  	<img id="preview3" class="sizeModify">
							  	<input multiple="multiple" type="file" id="test3" class="fileupload" name="upfiles" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
							  	<button type="button" class="img_change_btn" onclick="imgUp('test3');">사진추가</button>
								<button type="button" class="img_delete_btn" onclick="imgDel('preview3', 'test3', 'thumbnail3');">삭제하기</button>
							</div>
						</div>
						<div class="event_thumbnail sizeModify">
							<div id="thumbnail4" class="thumbnail sizeModify">
							  	<img id="preview4" class="sizeModify">
							  	<input multiple="multiple" type="file" id="test4" class="fileupload" name="upfiles" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
							  	<button type="button" class="img_change_btn" onclick="imgUp('test4');">사진추가</button>
								<button type="button" class="img_delete_btn" onclick="imgDel('preview4', 'test4', 'thumbnail4');">삭제하기</button>
							</div>
						</div>
						<div class="event_thumbnail sizeModify">
							<div id="thumbnail5" class="thumbnail sizeModify">
							  	<img id="preview5" class="sizeModify">
							  	<input multiple="multiple" type="file" id="test5" class="fileupload" name="upfiles" accept=".gif,.jpg,.jpeg,.png" style="display: none;" onchange="readURL(this)">
							  	<button type="button" class="img_change_btn" onclick="imgUp('test5');">사진추가</button>
								<button type="button" class="img_delete_btn" onclick="imgDel('preview5', 'test5', 'thumbnail5');">삭제하기</button>
							</div>
						</div>

						<div id="smarteditor">
							<textarea name="content" id="editorTxt11" 
									  rows="10" cols="10" 
									  placeholder="내용을 입력해주세요"
									  style="width: 1209.5px"></textarea>
						  </div>
					</article>

					<script>
						let oEditors = []
					
						smartEditor = function() {
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

						<div class="group_container">
							<fieldset data-map="true" data-datepicker_set="true" data-group_setting="true" data-pay_host_num=""
								data-pay_host_name="" data-bank_code="0" data-usemap="true" data-is_free="true" data-existgroupattenduser=""
								class="open">
								<div class="group_option">
									<div class="time_place_wrap">
										<div class="date_input" style="display: none">
										</div>
										<div class="form_row" id="eventDateTime_-1">
											<div class="date_time_wrap event">
												<label for="">모임기간</label>
												<input type="text" id="meetingDate" name="date" placeholder="모임기간을 선택하세요." value="" readonly>
											</div>
										</div>
										<div class="form_row">
											<div class="date_time_wrap apply">
												<label for="">신청기간</label>
												<input type="text" id="applyDate" name="enterDate" placeholder="신청기간을 선택하세요." value="" readonly>
											</div>
										</div>
										<p class="ex">* 참여 신청 및 취소는 신청 기간에만 가능합니다.</p>
										<!-- <div class="form_row">
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
										</div> -->
										<div class="form_row place_search">
											<div class="place_search_input" data-input_type="text">
												<span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
												<input type="text" id="address" class="addr_1 ui-autocomplete-input" placeholder="장소명, 주소를 검색해 주세요." name="address" required="" readonly>
												<button type="button" class="addr_reset_btn">주소 초기화</button>
												<button type="button" id="searchBtn" style="display: none;">검색</button>
												<ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-1" tabindex="0" style="display: none;"></ul>
											</div>
										</div>
										<div class="form_row place_search">
											<div class="place_search_input" data-input_type="text">
												<input type="text" class="addr_2" name="addressDetail" placeholder="나머지 주소를 입력해 주세요." value="">
											</div>
										</div>
										<div class="form_row map">
											<div id="map1" style="width:628px; height:254px; display: block;"></div>
										</div>
									</div>
									<div class="person_apply_wrap">
										<div class="form_row over_capacity" data-input_type="radio">
											<div class="group_capacity">
												<input type="number" name="max" class="capacity" title="모집 정원 입력" placeholder="모집 정원 입력" maxlength="7" value="">
											</div>
											<br>
											<br>
											<div class="op_h"> <span>정원초과 모집</span>
												<div class="help_tip"> <span> <span>허용</span> 정원을 초과해도 대기자로 신청자를 받습니다. 결원 발생 시 대기자가 참여확정자로 자동
														변경될 수
														있습니다. <span>허용안함</span> 정원까지만 신청자를 받고 더 이상 신청자를 받지 않습니다. </span> </div>
											</div>
											<div class="op_c">
												<div> <input type="radio" id="group_overcapacity[-1]_01" name="maxAccess" value="Y" checked="">
													<label for="group_overcapacity[-1]_01" title="정원초과 모집이 불가능한 경우 설정을 변경할 수 없습니다.">허용</label>
												</div>
												<div> <input type="radio" id="group_overcapacity[-1]_02" name="maxAccess" value="N">
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
							dateFormat: "Y/m/d",
							local: 'ko'
							// enableTime : true,
							// time_24hr : true
						});

						applyDate.flatpickr({
							mode: "range",
							minDate: "today",
							dateFormat: "Y/m/d",
							local: 'ko'
							// enableTime : true,
							// time_24hr : true
						});
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
											<input type="radio" name="displayNY" id="eventOpen" value="Y" checked="" data-parsley-multiple="open_type" onclick="openType();">
											<label for="eventOpen">노출함</label>
										</div>
									</div>
									<div class="form_row">
										<div>
											<input type="radio" name="displayNY" id="eventPrivate" value="N" data-parsley-multiple="open_type" onclick="privateType();">
											<label for="eventPrivate">노출안함</label>
										</div>
										<div class="input password">
											<input type="checkbox" name="eventPw_check" id="eventPrivatePw" value="N" data-parsley-multiple="eventPw_check"  disabled>
											<label for="eventPrivatePw">비밀번호 사용</label>
											<input id="privatePassword" type="password" title="모임 비밀번호 입력" name="eventPassword" placeholder="비밀번호 입력" disabled>
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
											<input type="checkbox" name="adultAccess" id="youth_check" value="Y" data-parsley-multiple="limit_under_nineteen">
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
						let tagify = new Tagify(input, {
							originalInputValueFormat: valuesArr => valuesArr.map(item => item.value).join(',')
						})
						
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
											<input type="text" id="attendancePw" class="attendance_pw" name="attendPassword" value="" maxlength="40">
										</div>
									</div>
								</div>
							</fieldset>
							<p class="ex">
								<span>* 출석 확인용 번호는 신청자의 출석 확인을 위한 비밀번호입니다.</span>
							</p>
						</div>
					</article>
					<div class="btn_wrap">
						<input type="submit" class="btn btn-primary" value="개설완료">
					</div>
				</form>
			</div>
		</section>
	</main>

	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/group_info.js"></script>
	<script src="https://static.onoffmix.com/js/pc/dist/event/plugin/event_informing.js"></script>

	<jsp:include page="../common/footer.jsp"/>

</body>
</html>