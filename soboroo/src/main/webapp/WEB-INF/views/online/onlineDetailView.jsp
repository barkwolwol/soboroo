<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../common/header.jsp"/>
	
	<meta charset="UTF-8">
	<title>${ g.title }</title>		<!-- 같이 바리스타 자격증 취득해봐요 -->
	
	<!-- Favicon
	================================================== -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
	
	<style>
		.entry-list-me {
      		width: auto;
      		height: 200px;
			border: 1px solid red;
			/*margin-top: 50px;*/
		}
	</style>
</head>
<body>
  <div class="body-inner">
    <div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner-online4.jpg)">
      <div class="banner-text">
        <div class="container">
            <div class="row">
              <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">같이 공부하실분 구해요 그룹 정보</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                          <li class="breadcrumb-item"><a href="listOne.on">온라인</a></li>
                          <li class="breadcrumb-item"><a href="listOne.on">반짝모임</a></li>
                          <li class="breadcrumb-item active" aria-current="page">취업/자격증</li>
                        </ol>
                    </nav>
                  </div>
              </div><!-- Col end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
      </div><!-- Banner text end -->
    </div><!-- Banner area end --> 

    <section id="main-container" class="main-container">
      <div class="container">

        <div class="row">
          <div class="col-lg-8">
            <div id="page-slider" class="page-slider small-bg" style="background-color: rgb(241, 238, 237);">
              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/coffee1.jpg" alt="모임소개이미지1" />
              </div>

              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/coffee2.jpg" alt="모임소개이미지2" />
              </div>
              
              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/penguin.jpg" alt="모임소개이미지3" />
              </div>
            </div><!-- Page slider end -->
            
            <div class="entry-list-me">
            	참가자 목록 리스트
            </div>
            
          </div><!-- Slider col end -->

          <div class="col-lg-4 mt-5 mt-lg-0">

            <h3 class="column-title mrt-0">${ g.title }</h3>		<!-- 같이 바리스타 자격증 취득해봐요 -->
            <p>${ g.content }</p>	<!-- 23년 04월 23일에 진행되는 바리스타 자격증 취득 준비를 위한 온라인 모임입니다. 서로가 갖고 있는 지식을 공유하며 합격 확률을 높이고자 열심히 활동할 준비가 된 분들을 모집합니다. 많은 참여 부탁드릴게요~ -->

            <ul class="project-info list-unstyled">
              <li>
                <p class="project-info-label">카테고리</p>
                <p class="project-info-content">${ g.category }</p>				<!-- 자격증/교육 -->
              </li>
              <li>
                <p class="project-info-label">모임시각</p>
                <p class="project-info-content">${ g.date }</p> 				<!-- 2023년 04월 13일(목) 17:00~18:00 -->
              </li>
              <li>
                <p class="project-info-label">모임장소</p>
                <p class="project-info-content">온라인</p>
              </li>
              <li>
                <p class="project-info-label">그룹장</p>
                <p class="project-info-content">${ g.nickName }</p>				<!-- 그룹장닉네임 -->
              </li>
              <li>
              	<hr>
                <p class="project-info-label">정원</p>
                <p class="project-info-content">최대 ${ g.max }명</p>				<!-- 최대 30명 -->
              </li>
              <li>
                <p class="project-info-label">신청마감일</p>
                <p class="project-info-content">2023년 04월 12일(수) 21:00</p>		<!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
              </li>
              <li>
                <p class="project-link">
                  <br>
                  <a class="btn btn-primary" target="_blank" href="join.me">참가하기</a> 	<!-- 클릭시, 참가취소 로 변경되게끔! 인원수가 찬 경우, 대기하기로 출력하기 -->
                </p>
              </li>
            </ul>

          </div><!-- Content col end -->

        </div><!-- Row end -->

      </div><!-- Conatiner end -->
    </section><!-- Main container end -->

    <jsp:include page="../common/footer.jsp"/>

  </div><!-- Body inner end -->
  
</body>
</html>