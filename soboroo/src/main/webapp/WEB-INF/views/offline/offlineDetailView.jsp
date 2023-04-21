<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>같이 바리스타 자격증 취득해봐요2</title>
	
	<!-- Favicon
	================================================== -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
</head>
<body>
  <div class="body-inner">

    <jsp:include page="../common/header.jsp"/>
    
    <div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner1.jpg)">
      <div class="banner-text">
        <div class="container">
            <div class="row">
              <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">그룹 정보</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                          <li class="breadcrumb-item"><a href="listOne.off">오프라인</a></li>
                          <li class="breadcrumb-item"><a href="listOne.off">반짝모임</a></li>
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
            <div id="page-slider" class="page-slider small-bg">
              <div class="item">
                <img loading="lazy" class="img-fluid" src="${pageContext.request.contextPath}/resources/images/online/coffee1.jpg" alt="모임소개이미지1" />
              </div>

              <div class="item">
                <img loading="lazy" class="img-fluid" src="${pageContext.request.contextPath}/resources/images/online/coffee2.jpg" alt="모임소개이미지2" />
              </div>
            </div><!-- Page slider end -->
          </div><!-- Slider col end -->

          <div class="col-lg-4 mt-5 mt-lg-0">

            <h3 class="column-title mrt-0">같이 바리스타 자격증 취득해봐요2</h3>
            <p>23년 04월 23일에 진행되는 바리스타 자격증 취득 준비를 위한 온라인 모임입니다. 서로가 갖고 있는 지식을 공유하며 합격 확률을 높이고자 열심히 활동할 준비가 된 분들을 모집합니다. 많은 참여 부탁드릴게요~</p>

            <ul class="project-info list-unstyled">
              <li>
                <p class="project-info-label">카테고리</p>
                <p class="project-info-content">자격증/교육</p>
              </li>
              <li>
                <p class="project-info-label">모임시각</p>
                <p class="project-info-content">2023년 04월 13일(목) 17:00~18:00</p>
              </li>
              <li>
                <p class="project-info-label">모임장소</p>
                <p class="project-info-content">서울특별시 강남구 테헤란로14길 6 남도빌딩 2F <input type=button style="width:60px; height:20px; font-size:10px; text-align:center; line-height:15px" value="지도보기"></p>
              </li>
              <li>
                <p class="project-info-label">그룹장</p>
                <p class="project-info-content">그룹장닉네임</p>
              </li>
              <li>
              	<hr>
                <p class="project-info-label">정원</p>
                <p class="project-info-content">최대 30명</p>
              </li>
              <li>
                <p class="project-info-label">신청마감일</p>
                <p class="project-info-content">2023년 04월 12일(수) 21:00</p>		<!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
              </li>
              <li>
                <p class="project-link">
                  <br>
                  <a class="btn btn-primary" target="_blank" href="#">참가하기</a>
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