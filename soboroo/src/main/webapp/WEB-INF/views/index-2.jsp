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
			                <p><a href="#" class="slider btn btn-primary">참가하기</a></p> <!-- aria-label="about-us" -->
			              </div>
			          </div>
			        </div>
			    </div>
			  </div>
		</div>

		<section class="event_main_area">
			<div class="container">
				<ul class="event_lists thumbnail_mode" id="topEventList"></ul>
			</div>
		</section><!-- Feature area end -->


		<script>
			$(function(){
			topGroupList();
				function topGroupList(){
					$.ajax({
					url: "topList.bo",
					success: function(data){
						let html = "";
						
						for (let i = 0; i < data.length; i++) {
						let ogo = data[i];
						let thumbnail = ogo.thumbnail;
						let title = ogo.title;
						let count = ogo.count;
						let categoryTitle = ogo.categoryTitle;
						let startDate = ogo.startDate;
						let tableNo = ogo.tableNo;
						let no = ogo.no;

						html += "<li>";
						html += "<article class='event_area event_main'>";
						html += "<a href='detail.go?tableNo=" + tableNo + "&no=" + no + "'>";
						html += "<div class='event_thumbnail'>";
						if (thumbnail === 'resources/uploadFiles/') {
							html += "<img loading='lazy' src='resources/images/logo_3.png'>";
						} else {
							html += "<img loading='lazy' src='" + thumbnail + "'>";
						}
						html += "</div>";
						html += "<div class='event_info_area'>";
						html += "<div class='title_area'>";
						html += "<h5 class='title ellipsis'>" + title + "</h5>";
						html += "</div>";
						html += "<div class='event_info'>";
						html += "<div class='type_info'>";
						html += "<span>조회수 " + count + "</span>";
						html += "<span class='payment_type free'>" + categoryTitle + "</span>";
						html += "</div>";
						html += "<div class='date'>" + startDate + "</div>";
						html += "</div>";
						html += "</div>";
						html += "</a>";
						html += "</article>";
						html += "</li>";
						}

						$("#topEventList").html(html);
					},
					error: function(){
						console.log("ajax 통신 실패!");
					}
					});
				}
			});
		</script>


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

		<section class="event_main_area">
		  <div class="container">
		    <div class="row text-center">
		        <div class="col-12">
		          <h2 class="section-title">Online</h2>
		          <h3 class="section-sub-title">온라인 소모임</h3>
		        </div>
		    </div>
			<ul class="event_lists thumbnail_mode" id="onlineList"></ul>
		    <!--/ Title row end -->
		
		    <div class="general-btn text-center mt-4">
		        <a class="btn btn-primary" href="news-left-sidebar.html">더보기</a>
		    </div>
		
		  </div>
		  <!--/ Container end -->
		</section>
		<!--/ News end -->

		<script>
			$(function(){
			topGroupList();
				function topGroupList(){
					$.ajax({
					url: "selectOnMainList.go",
					success: function(data){
						let html = "";
						
						for (let i = 0; i < data.length; i++) {
						let ogo = data[i];
						let thumbnail = ogo.thumbnail;
						let title = ogo.title;
						let count = ogo.count;
						let categoryTitle = ogo.categoryTitle;
						let startDate = ogo.startDate;
						let tableNo = ogo.tableNo;
						let no = ogo.no;

						html += "<li>";
						html += "<article class='event_area event_main'>";
						html += "<a href='detail.go?tableNo=" + tableNo + "&no=" + no + "'>";
						html += "<div class='event_thumbnail'>";
						if (thumbnail === 'resources/uploadFiles/') {
							html += "<img loading='lazy' src='resources/images/logo_3.png'>";
						} else {
							html += "<img loading='lazy' src='" + thumbnail + "'>";
						}
						html += "</div>";
						html += "<div class='event_info_area'>";
						html += "<div class='title_area'>";
						html += "<h5 class='title ellipsis'>" + title + "</h5>";
						html += "</div>";
						html += "<div class='event_info'>";
						html += "<div class='type_info'>";
						html += "<span>조회수 " + count + "</span>";
						html += "<span class='payment_type free'>" + categoryTitle + "</span>";
						html += "</div>";
						html += "<div class='date'>" + startDate + "</div>";
						html += "</div>";
						html += "</div>";
						html += "</a>";
						html += "</article>";
						html += "</li>";
						}

						$("#onlineList").html(html);
					},
					error: function(){
						console.log("ajax 통신 실패!");
					}
					});
				}
			});
		</script>
		
		<section class="event_main_area">
		  <div class="container">
		    <div class="row text-center">
		        <div class="col-12">
		          <h2 class="section-title">Offline</h2>
		          <h3 class="section-sub-title">오프라인 소모임</h3>
		        </div>
				<ul class="event_lists thumbnail_mode" id="offlineList"></ul>
		    </div>
		    <!--/ Title row end -->

			<script>
				$(function(){
				topGroupList();
					function topGroupList(){
						$.ajax({
						url: "selectOffMainList.go",
						success: function(data){
							let html = "";
							
							for (let i = 0; i < data.length; i++) {
							let ogo = data[i];
							let thumbnail = ogo.thumbnail;
							let title = ogo.title;
							let count = ogo.count;
							let categoryTitle = ogo.categoryTitle;
							let startDate = ogo.startDate;
							let tableNo = ogo.tableNo;
							let no = ogo.no;
	
							html += "<li>";
							html += "<article class='event_area event_main'>";
							html += "<a href='detail.go?tableNo=" + tableNo + "&no=" + no + "'>";
							html += "<div class='event_thumbnail'>";
							if (thumbnail === 'resources/uploadFiles/') {
								html += "<img loading='lazy' src='resources/images/logo_3.png'>";
							} else {
								html += "<img loading='lazy' src='" + thumbnail + "'>";
							}
							html += "</div>";
							html += "<div class='event_info_area'>";
							html += "<div class='title_area'>";
							html += "<h5 class='title ellipsis'>" + title + "</h5>";
							html += "</div>";
							html += "<div class='event_info'>";
							html += "<div class='type_info'>";
							html += "<span>조회수 " + count + "</span>";
							html += "<span class='payment_type free'>" + categoryTitle + "</span>";
							html += "</div>";
							html += "<div class='date'>" + startDate + "</div>";
							html += "</div>";
							html += "</div>";
							html += "</a>";
							html += "</article>";
							html += "</li>";
							}
	
							$("#offlineList").html(html);
						},
						error: function(){
							console.log("ajax 통신 실패!");
						}
						});
					}
				});
			</script>

			
		    <div class="general-btn text-center mt-4">
		        <a class="btn btn-primary" href="news-left-sidebar.html">더보기</a>
		    </div>
		
		  </div>
		  <!--/ Container end -->
		</section>
		<!--/ News end -->

	
		<jsp:include page="common/footer.jsp"/>  

		

	
	  </div><!-- Body inner end -->


	  
</body>
</html>