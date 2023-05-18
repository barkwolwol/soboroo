<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	 <!-- Basic Page Needs
	================================================== -->
	  <meta charset="utf-8">
	  <title>soboroo | 소소하지만 보람찬 하루</title>
	  
	  <!-- Favicon
	================================================== -->
	  <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">

</head>
<body>
	<%-- <jsp:include page="common/header.jsp"/>
	<jsp:include page="common/footer.jsp"/> --%>
	

<jsp:include page="common/header.jsp"/>
	<div class="body-inner">

		<div class="banner-carousel banner-carousel-2 mb-0" style="height: 300px;">
			  <div class="banner-carousel-item" style="background-image:url(${pageContext.request.contextPath}/resources/images/logo_3.png); height: 300px;">
			    <div class="container">
			        <div class="box-slider-content">
			          <div class="box-slider-text">
			              <h2 class="box-slide-title">소모임 제목</h2>
			              <h3 class="box-slide-sub-title">소모임 서브제목</h3>
			              <p class="box-slide-description">You have ideas, goals, and dreams. We have a culturally diverse, forward
			                thinking team looking for talent like.</p>
			              <p>
			                <a href="#" class="slider btn btn-primary">참가하기</a>
			              </p>
			          </div>
			        </div>
			    </div>
			  </div>

			  <div class="banner-carousel-item" style="background-image:url(${pageContext.request.contextPath}/resources/images/logo_2.png); height: 300px;">
			    <div class="slider-content text-left">
			        <div class="container">
			          <div class="box-slider-content">
			              <div class="box-slider-text">
			                <h2 class="box-slide-title">소모임 제목</h2>
			                <h3 class="box-slide-sub-title">소모임 서브제목</h3>
			                <p class="box-slide-description">You have ideas, goals, and dreams. We have a culturally diverse, forward
			                    thinking team looking for talent like.</p>
			                <p><a href="#" class="slider btn btn-primary">참가하기</a></p>
			              </div>
			          </div>
			        </div>
			    </div>
			  </div>
		</div>

		<section id="ts-features" class="ts-features pb-2">
		  <div class="container">
		    <div class="row">
		        <div class="col-lg-4 col-md-6 mb-5">
		          <div class="ts-service-box">
		              <div class="ts-service-image-wrapper">
		                <img loading="lazy" class="w-100" src="${pageContext.request.contextPath}/resources/images/logo_3.png" alt="service-image">
		              </div>
		              <div class="d-flex">
		                <div class="ts-service-box-img">
		                </div>
		                <div class="ts-service-info">
		                    <h3 class="service-box-title"><a href="service-single.html">Zero Harm Everyday</a></h3>
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
		                </div>
		                <div class="ts-service-info">
		                    <h3 class="service-box-title"><a href="service-single.html">Virtual Construction</a></h3>
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
		                </div>
		                <div class="ts-service-info">
		                    <h3 class="service-box-title"><a href="service-single.html">Build To Last</a></h3>
		                    <p>You have ideas, goals, and dreams. We have a culturally diverse, forward thinking team looking for talent like. Lorem ipsum dolor suscipit.</p>
		                    <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> Learn more</a>
		                </div>
		              </div>
		          </div><!-- Service3 end -->
		        </div><!-- Col 3 end -->
		    </div><!-- Content row end -->
		  </div><!-- Container end -->
		</section><!-- Feature are end -->

		<section id="facts" class="facts-area dark-bg">
		  <div class="container">
		    <div class="facts-wrapper">
		        <div class="row">
		          <div class="col-md-3 col-sm-6 ts-facts">
		              <div class="ts-facts-img">
		              </div>
		              <div class="ts-facts-content">
		                <h2 class="ts-facts-num"><span class="counterUp" data-count="1789">0</span></h2>
		                <h3 class="ts-facts-title">총 소모임</h3>
		              </div>
		          </div><!-- Col end -->
		
		          <div class="col-md-3 col-sm-6 ts-facts mt-5 mt-sm-0">
		              <div class="ts-facts-img">
		              </div>
		              <div class="ts-facts-content">
		                <h2 class="ts-facts-num"><span class="counterUp" data-count="647">0</span></h2>
		                <h3 class="ts-facts-title">이용자</h3>
		              </div>
		          </div><!-- Col end -->
		
		          <div class="col-md-3 col-sm-6 ts-facts mt-5 mt-md-0">
		              <div class="ts-facts-img">
		              </div>
		              <div class="ts-facts-content">
		                <h2 class="ts-facts-num"><span class="counterUp" data-count="4000">0</span></h2>
		                <h3 class="ts-facts-title">즐거움의 시간</h3>
		              </div>
		          </div><!-- Col end -->
		
		          <div class="col-md-3 col-sm-6 ts-facts mt-5 mt-md-0">
		              <div class="ts-facts-img">
		              </div>
		              <div class="ts-facts-content">
		                <h2 class="ts-facts-num"><span class="counterUp" data-count="44">0</span></h2>
		                <h3 class="ts-facts-title">정기모임</h3>
		              </div>
		          </div><!-- Col end -->
		
		        </div> <!-- Facts end -->
		    </div>
		    <!--/ Content row end -->
		  </div>
		  <!--/ Container end -->
		</section><!-- Facts end -->

		<section id="online" class="news">
		  <div class="container">
		    <div class="row text-center">
		        <div class="col-12">
		          <h2 class="section-title">Online</h2>
		          <h3 class="section-sub-title">온라인 소모임</h3>
		        </div>
		    </div>
		    <!--/ Title row end -->
		
			<ul class="event_lists thumbnail_mode">
				<c:forEach var="ogo" items="${ list }">
				  <li>
					<article class="event_area event_main">
					  <a href="detail.go?tableNo=${ ogo.tableNo }&no=${ ogo.no }">
						<div class="event_thumbnail">
						  <c:choose>
							<c:when test="${ not empty ogo.thumbnail }">
							  <img loading="lazy" src="${ ogo.thumbnail }" alt="service-image">
							</c:when>
							<c:otherwise>
							  <img loading="lazy" src="resources/images/logo_3.png" alt="service-image">
							</c:otherwise>
						  </c:choose>
						</div>
						<div class="event_info_area">
						  <div class="title_area">
							<h5 class="title ellipsis">${ ogo.title }</h5>
						  </div>
				
						  <div class="event_info">
							<div class="type_info">
							  <span class="payment_type free">세미나/컨퍼런스</span>
							</div>
							<div class="date">6.30 (금)</div>
						  </div>
				
						  <div class="list_event_tags">
							<span class="tag" data-tag_link="%23%EB%B6%80%EB%8F%99%EC%82%B0">#부동산</span><span class="tag"
							  data-tag_link="%23%EC%9E%AC%ED%85%8C%ED%81%AC">#재테크</span><span class="tag"
							  data-tag_link="%23%EB%95%85%ED%86%A0%EC%A7%80%ED%88%AC%EC%9E%90">#땅토지투자</span><span class="tag"
							  data-tag_link="%23%EC%83%81%EA%B0%80%EB%B9%8C%EB%94%A9%EA%B2%BD%EB%A7%A4%EC%84%B8%EA%B8%88">#상가빌딩경매세금</span><span
							  class="tag"
							  data-tag_link="%23%EC%98%88%EC%88%A0%EA%B1%B4%EC%84%A4%EA%B5%90%EC%9C%A1%EA%B0%95%EC%9D%98%ED%8A%B9%EA%B0%95">#예술건설교육강의특강</span>
						  </div>
						</div>
					  </a>
					</article>
				  </li>
				</c:forEach>
			</ul>
		
		    <div class="general-btn text-center mt-4">
		        <a class="btn btn-primary" href="onList.go?tableNo=2">더보기</a>
		    </div>
		
		  </div>
		  <!--/ Container end -->
		</section>
		<!--/ News end -->
		
		<section id="offline" class="news">
		  <div class="container">
		    <div class="row text-center">
		        <div class="col-12">
		          <h2 class="section-title">Offline</h2>
		          <h3 class="section-sub-title">오프라인 소모임</h3>
		        </div>
		    </div>
		    <!--/ Title row end -->
		
			<ul class="event_lists thumbnail_mode">
				<c:forEach var="ogo" items="${ list }">
				  <li>
					<article class="event_area event_main">
					  <a href="detail.go?tableNo=${ ogo.tableNo }&no=${ ogo.no }">
						<div class="event_thumbnail">
						  <c:choose>
							<c:when test="${ not empty ogo.thumbnail }">
							  <img loading="lazy" src="${ ogo.thumbnail }" alt="service-image">
							</c:when>
							<c:otherwise>
							  <img loading="lazy" src="resources/images/logo_3.png" alt="service-image">
							</c:otherwise>
						  </c:choose>
						</div>
						<div class="event_info_area">
						  <div class="title_area">
							<h5 class="title ellipsis">${ ogo.title }</h5>
						  </div>
				
						  <div class="event_info">
							<div class="type_info">
							  <span class="payment_type free">세미나/컨퍼런스</span>
							</div>
							<div class="date">6.30 (금)</div>
						  </div>
				
						  <div class="list_event_tags">
							<span class="tag" data-tag_link="%23%EB%B6%80%EB%8F%99%EC%82%B0">#부동산</span><span class="tag"
							  data-tag_link="%23%EC%9E%AC%ED%85%8C%ED%81%AC">#재테크</span><span class="tag"
							  data-tag_link="%23%EB%95%85%ED%86%A0%EC%A7%80%ED%88%AC%EC%9E%90">#땅토지투자</span><span class="tag"
							  data-tag_link="%23%EC%83%81%EA%B0%80%EB%B9%8C%EB%94%A9%EA%B2%BD%EB%A7%A4%EC%84%B8%EA%B8%88">#상가빌딩경매세금</span><span
							  class="tag"
							  data-tag_link="%23%EC%98%88%EC%88%A0%EA%B1%B4%EC%84%A4%EA%B5%90%EC%9C%A1%EA%B0%95%EC%9D%98%ED%8A%B9%EA%B0%95">#예술건설교육강의특강</span>
						  </div>
						</div>
					  </a>
					</article>
				  </li>
				</c:forEach>
			</ul>
		
		    <div class="general-btn text-center mt-4">
		        <a class="btn btn-primary" href="offList.go?tableNo=6">더보기</a>
		    </div>
		
		  </div>
		  <!--/ Container end -->
		</section>
		<!--/ News end -->
	
		<jsp:include page="common/footer.jsp"/>  
	
	  </div><!-- Body inner end -->



</body>
</html>