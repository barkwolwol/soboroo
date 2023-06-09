<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>soboroo | 온라인 목표모임</title>
	<!-- Favicon
	================================================== -->
  	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
  	
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner-online2.jpg)">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">온라인 목표모임</h1>
                <!-- 
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">Home</a></li>
                      <li class="breadcrumb-item"><a href="#">Services</a></li>
                      <li class="breadcrumb-item active" aria-current="page">All Services</li>
                    </ol>
                </nav>
                 -->
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 

<section id="main-container" class="main-container pb-2">
  <div class="container">
    <div class="row">

      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <%-- <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon1.png" alt="service-icon"> --%>
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.on?groupNum=1" target="_blank">Zero Harm Everyday</a></h3>
                  <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
              </div>
            </div>
        </div><!-- Service1 end -->
      </div><!-- Col 1 end -->

      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <%-- <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon2.png" alt="service-icon"> --%>
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.on?groupNum=1" target="_blank">Virtual Construction</a></h3>
                  <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
              </div>
            </div>
        </div><!-- Service2 end -->
      </div><!-- Col 2 end -->

      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <%-- <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon3.png" alt="service-icon"> --%>
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.on?groupNum=1" target="_blank">Build To Last</a></h3>
                  <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
              </div>
            </div>
        </div><!-- Service3 end -->
      </div><!-- Col 3 end -->

      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon4.png" alt="service-icon">
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.on?groupNum=1" target="_blank">EXTERIOR DESIGN</a></h3>
                  <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
              </div>
            </div>
        </div><!-- Service1 end -->
      </div><!-- Col 4 end -->

      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon5.png" alt="service-icon">
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.on?groupNum=1" target="_blank">RENOVATION</a></h3>
                  <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
              </div>
            </div>
        </div><!-- Service2 end -->
      </div><!-- Col 5 end -->

      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon6.png" alt="service-icon">
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.on?groupNum=1" target="_blank">SAFETY MANAGEMENT</a></h3>
                  <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
              </div>
            </div>
        </div><!-- Service3 end -->
      </div><!-- Col 6 end -->

    </div><!-- Main row end -->
  </div><!-- Conatiner end -->
</section><!-- Main container end -->

<jsp:include page="../common/footer.jsp"/>
</body>
</html>