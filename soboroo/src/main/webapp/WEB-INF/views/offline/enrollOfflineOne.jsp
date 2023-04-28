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
	<jsp:include page="../common/header-2.jsp"/>
	<main id="content" class="event_add">
		<section>
				<div class="head_area">
				<h2>개설하기</h2>
						</div>
		
			<div class="content_area">
			
				<form action="https://api.onoffmix.com/v1/event/ManageEvent/add"
					method="POST" target="_self" encType="multipart/form-data"
					data-preview="/event/preview"
					data-preview-mobile="/event/preview_mobile"
					data-draft="https://api.onoffmix.com/v1/event/ManageEvent/draft"
					data-has-draft="2023-04-28 11:41"
					data-hpp-max="300000"
					data-event_method_type="advance"
					data-open_type="open"
					data-hpp-alert="그룹의 금액이 &lt;strong&gt;30만원 이상의 경우&lt;/strong&gt;에는 휴대전화 결제 설정이&lt;br /&gt;불가하여 휴대전화 결제 설정 배제 처리 됩니다.&lt;br /&gt;자세한 사항은 &lt;a href=&quot;/cs/faq/?fs=%ED%9C%B4%EB%8C%80%ED%8F%B0&quot; target=&quot;_blank&quot;&gt;FAQ&lt;/a&gt;를 확인해 주세요">
	
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
						<div class="thumbnail">
							<img src="" data-default-src="resources/images/logo_3.png" alt="모임 이미지" data-time="1682652657">
							<input type="file" class="fileupload" accept=".gif,.jpg,.jpeg,.png">
							<button type="button" class="img_change_btn">사진변경</button>
							<button type="button" class="img_delete_btn">삭제하기</button>
						</div>
					</article>
	
					<article class="default_info">
						<h3>기본정보<span class="required">필수</span></h3>
	
						<div class="group_container">
							<fieldset class="event_name_category">
								<legend>카테고리/모임명</legend>
	
								<div class="input_wrap">
									<div class="form_row">
										<div class="selectbox">
											<select name="category">
												<option value="">카테고리 선택</option>
												<option value="085">교육</option><option value="087">세미나/컨퍼런스</option><option value="086">강연</option><option value="090">취미/소모임</option><option value="088">문화/예술/방송</option><option value="092">공모전</option><option value="093">전시/박람회</option><option value="095">이벤트/파티</option><option value="094">패션/뷰티</option><option value="096">기타</option>                                        </select>
										</div>
										<input type="text" name="title" placeholder="모임명을 입력해주세요."
											value="" maxlength="64" required
											data-parsley-required-message="모임명을 입력해주세요."
											data-parsley-class-handler=".event_name_category .form_row">
									</div>
								</div>
							</fieldset>
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
										<div class="email ">
											<label for="">이메일</label>
											<input type="text" name="email_id" class="email_id" value="">
											<span>@</span>
											<div class="selectbox">
												<select name="email_domain" class="email_domain">
													<option value="">선택</option>
													<option value="direct" >직접입력</option>
													<option value="naver.com" selected>naver.com</option>
													<option value="gmail.com" >gmail.com</option>
													<option value="hanmail.net" >hanmail.net</option>
													<option value="nate.com" >nate.com</option>
													<option value="kakao.com" >kakao.com</option>
													<option value="daum.net" >daum.net</option>
													<option value="hotmail.com" >hotmail.com</option>
												</select>
	
												<input type="text" class="direct_email_domain" name="direct_email_domain" placeholder="직접입력" value="">
											</div>
	
											<input type="email" name="email"
												data-parsley-type="email"
												data-parsley-required-message="담당자의 이메일 주소를 입력해주세요."
												data-parsley-class-handler=".contact .email"
												data-parsley-contactemail required
												value="">
										</div>
									</div>
								</div>
								<p class="ex">* 모임 종료 전까지 연락처가 노출되고 임의로 입력한 경우 개인정보 도용으로 처벌받을 수 있습니다.</p>
							</fieldset>
							<fieldset class="introduce">
								<legend>간단한 모임소개</legend>
	
								<div class="input_wrap" data-text_length="0">
									<div class="form_row">
										<input type="text" class="simple_introduce" placeholder="모임을 한줄로 소개해 주세요.(100자이내)" name="abstract"
										data-parsley-required-message="한줄소개를 입력해주세요."
										data-parsley-class-handler=".introduce .form_row" required>
									</div>
								</div>
							</fieldset>
						</div>
					</article>
	
					<article class="event_detail">
						<h3>상세정보<span class="required">필수</span></h3>
	
						<div class="editor_wrap">
							<textarea name="content"
								placeholder="복사하여 붙여넣기 한 이미지는 정상적으로 보이지 않을 수 있으니 '사진/파일 첨부하기' 기능을 사용하여 이미지를 삽입해 주시기 바랍니다."
								data-parsley-contentempty
								data-parsley-minlength="10"
								data-parsley-minlength-message="상세 내용을 10자 이상 입력해주세요."
								data-parsley-required-message="상세내용을 입력해주세요."
								data-parsley-class-handler=".event_detail" required>
							</textarea>
						</div>
					</article>
	
					<article class="group_info" data-key="0m2ay6tl46">
						<h3>
							<span class="group_title">그룹 정보<span class="required">필수</span></span>
							<span class="field_title">기간/장소 정보<span class="required">필수</span></span>
						</h3>
	
						<div class="group_container">
							<div class="time_place_wrap">             <div class="date_input" style="display: none">                 <input type="hidden" name="eventStartDateTime_date[-1]" required="" value="">                 <input type="hidden" name="eventStartDateTime_time[-1]" required="" value="">                 <input type="hidden" name="eventEndDateTime_date[-1]" required="" value="">                 <input type="hidden" name="eventEndDateTime_time[-1]" required="" value="">                 <input type="hidden" name="recruitStartDateTime_date[-1]" required="" value="">                 <input type="hidden" name="recruitStartDateTime_time[-1]" required="" value="">                 <input type="hidden" name="recruitEndDateTime_date[-1]" required="" value="">                 <input type="hidden" name="recruitEndDateTime_time[-1]" required="" value="">             </div>              <div class="form_row" id="eventDateTime_-1">                 <div class="date_time_wrap event">                     <label for="">모임기간</label>                     <input type="text" placeholder="모임기간을 선택하세요." value="" data-parsley-required-message="모임기간을 선택해주세요." data-parsley-class-handler="#eventDateTime_-1" autocomplete="off" readonly="" required="">                 </div>             </div>             <div class="form_row" id="recruitDateTime_-1">                 <div class="date_time_wrap apply">                     <label for="">신청기간</label>                     <input type="text" placeholder="신청기간을 선택하세요." value="" data-parsley-required-message="신청기간을 선택해주세요." data-parsley-class-handler="#recruitDateTime_-1" autocomplete="off" readonly="" required="">                 </div>             </div>              <p class="ex">* 참여 신청 및 취소는 신청 기간에만 가능합니다.</p>                          <div class="form_row">                 <div class="place_check">                     <input type="checkbox" id="noUseMap[-1]" name="addr_yn[-1]" value="0" class="noUseMap" data-gtm-form-interact-field-id="0">                     <label for="noUseMap[-1]">장소 없음</label>                 </div>                 <div>                     <span>                         <input type="radio" id="no_place[-1]" name="no_place[-1]" value="0" checked="" data-gtm-form-interact-field-id="2">                         <label for="no_place[-1]">장소 없음/미정</label>                     </span>                     <span>                         <input type="radio" id="online[-1]" name="no_place[-1]" value="1" data-gtm-form-interact-field-id="1">                         <label for="online[-1]">온라인</label>                     </span>                 </div>             </div>             <div class="form_row place_search">                 <div class="place_search_input" data-input_type="text">                     <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input type="text" class="addr_1 ui-autocomplete-input" placeholder="장소명, 주소를 검색해 주세요." name="group_address[-1]" data-parsley-map_checked="" data-parsley-required-message="장소명, 주소를 검색하거나 지도에서 선택해주세요. 장소가 없는 경우 ‘장소 없음’을 선택해주세요." value="" autocomplete="off" required="">                     <button type="button" class="search_btn">검색</button>                     <button type="button" class="addr_reset_btn">주소 초기화</button>                 <ul class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-1" tabindex="0" style="display: none;"></ul></div>             </div>             <div class="form_row place_search">                 <div class="place_search_input" data-input_type="text">                     <input type="text" class="addr_2" name="group_location[-1]" placeholder="나머지 주소를 입력해 주세요." value="">                 </div>             </div>             <div class="form_row map">                 <div class="mapzone" data-lat="" data-lon="" data-key="" tabindex="0" style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent; width: 626px; height: 252px;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: -48px; left: 51px; z-index: 1; zoom: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none; zoom: 1; display: none;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div draggable="false" unselectable="on" style="position: absolute; top: 123px; left: 212px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-16"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6986/3174.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 379px; left: 212px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-17"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6986/3175.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -133px; left: 212px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-18"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6986/3173.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -133px; left: 468px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-19"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6987/3173.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 379px; left: -44px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-22"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6985/3175.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 123px; left: 468px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-23"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6987/3174.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 123px; left: -44px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-20"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6985/3174.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 379px; left: 468px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-21"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6987/3175.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -133px; left: -44px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-30"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6985/3173.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -133px; left: 724px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-24"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6988/3173.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 379px; left: -300px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-25"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6984/3175.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 123px; left: 724px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-26"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6988/3174.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 123px; left: -300px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-27"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6984/3174.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 379px; left: 724px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-28"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6988/3175.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -133px; left: -300px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-29"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/13/6984/3173.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none; zoom: 1;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div draggable="false" unselectable="on" style="position: absolute; top: 169px; left: 100px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-31"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3492/1587.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -87px; left: 356px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-32"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3493/1586.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -87px; left: 100px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-33"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3492/1586.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 169px; left: 356px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-34"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3493/1587.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 169px; left: -156px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-35"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3491/1587.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -87px; left: -156px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-37"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3491/1586.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -87px; left: 612px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-80"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3494/1586.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 169px; left: 612px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-81"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3494/1587.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -87px; left: -412px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-100"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3490/1586.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 169px; left: -412px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-101"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3490/1587.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 425px; left: -412px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-102"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3490/1588.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 425px; left: -156px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-103"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3491/1588.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 425px; left: 100px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-104"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3492/1588.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 425px; left: 356px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-105"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3493/1588.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 425px; left: 612px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;" data-ntranid="NTran-106"><img draggable="false" unselectable="on" alt="" crossorigin="anonymous" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1682000682/12/3494/1588.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"><div title="" style="position: absolute; overflow: hidden; box-sizing: content-box !important; cursor: inherit; z-index: 9; left: 439px; top: 155px; width: 34px; height: 37px;"><img draggable="false" unselectable="on" src="/static_html/images/pc/icon/map_pin.png" alt="" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; position: absolute; cursor: pointer; width: 34px; height: 37px; left: 0px; top: 0px;"></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div></div></div><div style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right; height: 21px;"><div style="position: relative; width: 99px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;"><span style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">3km</span><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png" width="91" height="4" alt="" style="position: absolute; left: 4px; bottom: 0px; z-index: 2; display: block; width: 91px; height: 4px; overflow: hidden; margin: 0px; padding: 0px; border: 0px none; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png" width="4" height="10" alt="" style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png" width="4" height="10" alt="" style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></div></div><div style="border: 0px none; margin: -1px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 22px;"><a href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html" target="_blank" style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal-new.png" width="48" height="17" alt="NAVER" style="display:block;width:48px;height:17px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 21px;"><div class="map_copyright" style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;"><div style="float: left;"><span style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span></div><a href="#" style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a><div style="float: left;"><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; display: none; color: rgb(68, 68, 68);"> /OpenStreetMap</a></div></div></div></div><div style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;"><h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a href="#" style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">x</a><div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left; display: none;"> /OpenStreetMap</a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; top: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left;"><div style="position: relative; z-index: 9; pointer-events: auto;"><div style="position: relative; z-index: 0; width: 28px; margin: 10px; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important; user-select: none;"><a href="#" style="position: relative; z-index: 2; width: 28px; height: 22px; cursor: pointer; display: block; overflow: hidden; border-bottom: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-in-large-normal.png" width="28" height="22" alt="지도 확대" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:28px;height:22px;"></a><div style="position: relative; width: 28px; height: 156px; overflow: hidden; margin: 0px; padding: 7px 0px; background-color: rgb(255, 255, 255); cursor: pointer; box-sizing: content-box !important; display: block;"><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 156px; display: block; background-color: rgb(47, 135, 236);"></div><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 94px; display: block; background-color: rgb(202, 205, 209);"></div><a href="#" style="position: absolute; left: 4px; width: 18px; height: 10px; top: 94px; border: 1px solid rgb(68, 68, 68); cursor: move; display: block; overflow: hidden; box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-handle.png" width="18" height="10" alt="지도 확대/축소 슬라이더" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:18px;height:10px;"></a></div><a href="#" style="position: relative; z-index: 2; width: 28px; height: 22px; cursor: pointer; display: block; overflow: hidden; border-top: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-out-large-normal.png" width="28" height="22" alt="지도 축소" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:28px;height:22px;"></a><div style="position: absolute; top: 22px; width: 44px; height: 0px; overflow: visible; display: none; left: 36px;"><div style="display: block; margin: 0px; padding: 0px;"><h4 style="visibility:hidden;width:0;height:0;overflow:hidden;margin:0;padding:0;">지도 컨트롤러 범례</h4><div style="position: absolute; top: 43px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-on.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">부동산</span></div><div style="position: absolute; top: 63px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">거리</span></div><div style="position: absolute; top: 83px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">읍,면,동</span></div><div style="position: absolute; top: 113px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,군,구</span></div><div style="position: absolute; top: 143px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,도</span></div><div style="position: absolute; top: 163px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: hidden;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">국가</span></div></div></div></div></div></div><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left;"><div style="position: relative; z-index: 9; margin: 10px; pointer-events: auto;"><ul style="position: relative; z-index: 1; padding: 0px; margin: 0px; list-style: none; display: block; height: 30px; box-sizing: content-box !important; border-right: 1px solid rgb(68, 68, 68);"><li style="position: relative; z-index: 1; float: left; display: block; margin: 0px; padding: 0px; list-style: none; border-width: 1px 0px 1px 1px; border-style: solid none solid solid; border-top-color: rgb(68, 68, 68); border-right-color: initial; border-bottom-color: rgb(68, 68, 68); border-left-color: rgb(68, 68, 68); border-image: initial; box-sizing: content-box !important;"><a href="#" style="margin: 0px; padding: 0px 7px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(42, 124, 221); background-color: rgb(47, 135, 236); text-decoration: none; color: rgb(255, 255, 255); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important;">일반</a></li><li style="position: relative; z-index: 1; float: left; display: block; margin: 0px; padding: 0px; list-style: none; border-width: 1px 0px 1px 1px; border-style: solid none solid solid; border-top-color: rgb(68, 68, 68); border-right-color: initial; border-bottom-color: rgb(68, 68, 68); border-left-color: rgb(68, 68, 68); border-image: initial; box-sizing: content-box !important;"><a href="#" style="margin: 0px; padding: 0px 7px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(0, 0, 0); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important;">위성</a></li></ul><ul style="position: absolute; z-index: 1; padding: 0px; margin: 0px; list-style: none; display: none; height: 30px; left: 0px; width: 100%; box-sizing: content-box !important; top: 32px;"><li style="position: relative; z-index: 1; display: none; margin: 0px; padding: 0px; list-style: none; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important;"><a href="#" style="margin: 0px; padding: 0px 0px 0px 25px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(102, 102, 102); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important; position: relative;" title="지형도"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/maptype-unchecked.png" width="13" height="13" alt="" style="position:absolute;display:block;top:7px;left:7px;width:13px;height:13px;border:0 none;cursor:pointer;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><span style="display:block;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;margin:0;padding:0;color:#666;font-size:13px;letter-spacing:-1px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;">지형도</span></a></li><li style="position: relative; z-index: 1; display: none; margin: 0px; padding: 0px; list-style: none; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important;"><a href="#" style="margin: 0px; padding: 0px 0px 0px 25px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(102, 102, 102); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important; position: relative;" title="겹쳐보기"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/maptype-checked.png" width="13" height="13" alt="" style="position:absolute;display:block;top:7px;left:7px;width:13px;height:13px;border:0 none;cursor:pointer;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><span style="display:block;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;margin:0;padding:0;color:#666;font-size:13px;letter-spacing:-1px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;">겹쳐보기</span></a></li></ul></div></div></div></div>             </div>         </div>
						</div>
	
					</article>
	
					<article class="exposure_setting">
						<h3>모임 노출 설정</h3>
						<div class="group_container">
							<fieldset>
								<div class="input_wrap">
									<div class="form_row">
										<div>
											<input type="radio" name="open_type" id="eventOpen" value="1" checked>
											<label for="eventOpen">노출함</label>
										</div>
									</div>
									<div class="form_row">
										<div>
											<input type="radio" name="open_type" id="eventPrivate" value="0">
											<label for="eventPrivate">노출안함</label>
										</div>
										<div>
											<input type="checkbox" name="eventPw_check" id="eventPrivatePw" value="0">
											<label for="eventPrivatePw">비밀번호 사용</label>
											<input type="password" title="모임 비밀번호 입력" name="eventPw" placeholder="비밀번호 입력">
										</div>
										<div>
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
	
					<article class="group_info">
						<h3>청소년 접근제한</h3>
						<div class="group_container">
							<fieldset>
								<div class="input_wrap">
									<div class="form_row">
										<div>
											<input type="checkbox" name="limit_under_nineteen" id="youth_check" value="1">
											<br>
											<label for="youth_check">만 19세 미만 접근 제한</label>
										</div>
									</div>
								</div>
							</fieldset>
							<br>
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
										<textarea type="text" class="tag_input"
											placeholder="태그를 입력해 주세요. 예) #온오프믹스, #컬쳐데이" name="tag"
											data-tag-editor-error-duplicate="동일한 태그가 존재합니다."
											data-tag-editor-error-character="한자 및 특수문자는 입력되지 않습니다."
											data-tag-editor-error-maxtag="최대 5개까지 등록할 수 있습니다."
											data-parsley-tag data-parsley-errors-messages-disabled>
										</textarea>
									</div>
									<ul class="tag-editor ui-sortable"><li style="width: 1px;">&nbsp;</li><li class="placeholder"><div>태그를 입력해 주세요. 예) #온오프믹스, #컬쳐데이</div></li></ul>
	
									<p class="ex">
										<span>* 태그를 쉼표나 띄어쓰기로 구분해서 최대 5개까지 입력해 주세요.</span>
										<span>* 모임 태그 입력 시 태그별 모아보기가 가능하고 검색 결과에도 반영됩니다.</span>
									</p>
								</div>
							</fieldset>
						</div>
					</article>
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
	<script src="https://static.onoffmix.com/js/pc/dist/common/plugins/jquery.fileupload.js"></script>
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