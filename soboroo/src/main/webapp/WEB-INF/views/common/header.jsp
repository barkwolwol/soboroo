<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       
     <!-- Mobile Specific Metas
   ================================================== -->
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="description" content="Construction Html5 Template">
     <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
   
     <!-- Favicon
   ================================================== -->
     <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
   
     <!-- CSS
   ================================================== -->
     <!-- Bootstrap -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.css">
     <!-- FontAwesome -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css">
     <!-- Animation -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/animate-css/animate.css">
     <!-- slick Carousel -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick/slick.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick/slick-theme.css">
     <!-- Colorbox -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/colorbox/colorbox.css">
     <!-- Template styles-->
     <link rel="stylesheet" href="resources/css/style.css">

    
</head>
<body>

   <div id="top-bar" class="top-bar">
        <div class="container">
          <div class="row">
              <div class="col-lg-8 col-md-8">
                <ul class="top-info text-center text-md-left">
                    <li><!-- <i class="fas fa-map-marker-alt"></i> --> <p class="info-text">소소하지만 보람찬 당신의 하루</p>
                    </li>
                </ul>
              </div>
              <!--/ Top info end -->
  
              <div class="col-lg-4 col-md-4 top-social text-center text-md-right">
                <ul class="list-unstyled">
                    <li>
                      <a title="Facebook" href="https://facebbok.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-facebook-f"></i></span>
                      </a>
                      <a title="Twitter" href="https://twitter.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-twitter"></i></span>
                      </a>
                      <a title="Instagram" href="https://instagram.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-instagram"></i></span>
                      </a>
                      <a title="Linkdin" href="https://github.com/themefisher.com">
                          <span class="social-icon"><i class="fab fa-github"></i></span>
                      </a>
                    </li>
                </ul>
              </div>
              <!--/ Top social end -->
          </div>
          <!--/ Content row end -->
        </div>
        <!--/ Container end -->
    </div>
    <!--/ Topbar end -->
    
	<!-- Header start -->
	<header id="header" class="header-two">
	  <div class="site-navigation">
	    <div class="container">
	        <div class="row">
	          <div class="col-lg-12">
	              <nav class="navbar navbar-expand-lg navbar-light p-0">
	                
	                <div class="logo">
	                    <a class="d-block" href="${pageContext.request.contextPath}">
	                      <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/logo_1.png" alt="">
	                    </a>
	                </div><!-- logo end -->
	
	                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
	                    <span class="navbar-toggler-icon"></span>
	                </button>
	                
	                <div id="navbar-collapse" class="collapse navbar-collapse">
	                    <ul class="nav navbar-nav mr-auto align-items-center">
	
	                      <li class="nav-item dropdown">
	                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">온라인 <i class="fa fa-angle-down"></i></a>
	                          <ul class="dropdown-menu" role="menu">
	                            <li><a href="listOne.on">반짝모임</a></li>
	                            <li><a href="listReg.on">정기모임</a></li>
	                            <li class="dropdown-submenu"><a href="#">목표모임</a>
	                            	<ul class="dropdown-menu">
	                            		<li><a href="listGoal.on">꾸준한 습관</a></li>
	                            		<li><a href="listDday.on">D-DAY</a></li>
	                            	</ul>
	                            </li>
	                          </ul>
	                      </li>
	                      
                          <li class="nav-item dropdown">
	                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">오프라인 <i class="fa fa-angle-down"></i></a>
	                          <ul class="dropdown-menu" role="menu">
	                            <li><a href="listOne.off">반짝모임</a></li>
	                            <li><a href="listReg.off">정기모임</a></li>
	                            <li class="dropdown-submenu"><a href="#">목표모임</a>
	                            	<ul class="dropdown-menu">
	                            		<li><a href="listGoal.off">꾸준한 습관</a></li>
	                            		<li><a href="listDday.off">D-DAY</a></li>
	                            	</ul>
	                            </li>
	                          </ul>
	                      </li>
	              
	                      <li class="nav-item"><a class="nav-link" href="contact.html">자유게시판</a></li>
	                      
	                      <li class="nav-item"><a class="nav-link" href="contact.html">공지사항</a></li>
	                      
	                      <li class="nav-item dropdown">
												<a href="myCalender.do" class="nav-link dropdown-toggle"
													data-toggle="dropdown">마이페이지 <i class="fa fa-angle-down"></i></a>
												<ul class="dropdown-menu" role="menu">
													<li><a href="myCalender.my">나의 일정</a></li>
													<li><a href="updateInfo.my">개인정보 수정</a></li>
													<li><a href="myGroup.my">참여 소모임 조회</a></li>
													<!-- <li><a href="myBoard.my">작성 게시글 조회</a></li> -->
													<li class="dropdown-submenu">
														<a href="myBoard.my" class="dropdown-toggle"
															data-toggle="dropdown">작성 게시글 조회</a>
														<ul class="dropdown-menu">
															<li><a href="myBoard.my">소모임 게시글 조회</a></li>
															<li><a href="mybReply.my">소모임 댓글 조회</a></li>
															<li><a href="myCboard.my">커뮤니티 게시글 조회</a></li>
															<li><a href="myCreply.my">커뮤니티 댓글 조회</a></li>
														</ul>
												</ul>

											</li>
	
	                    </ul>
	                    <ul class="nav navbar-nav ml-auto align-items-center">
   	                      <li class="header-get-a-quote">
	                          <a class="btn btn-primary" href="login.me">로그인</a>
	                      </li>
	                    </ul>
	                </div>
	              </nav>
	          </div>
	          <!--/ Col end -->
	        </div>
	        <!--/ Row end -->
	    </div>
	    <!--/ Container end -->
	
	  </div>
	  <!--/ Navigation end -->
	</header>
	<!--/ Header end -->



	
	
	  <!-- Javascript Files
	  ================================================== -->
	
	  <!-- initialize jQuery Library
	  <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
	  <!-- Bootstrap jQuery 
	  <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.js" defer="defer"></script>-->
	  
	  <!-- include bootstrap --> <!-- 서머노트 bootstrap -->	  
	  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	  
	  <!-- Slick Carousel -->
	  <script src="${pageContext.request.contextPath}/resources/plugins/slick/slick.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/plugins/slick/slick-animation.min.js"></script>
	  <!-- Color box -->
	  <script src="${pageContext.request.contextPath}/resources/plugins/colorbox/jquery.colorbox.js"></script>
	  <!-- shuffle -->
	  <script src="${pageContext.request.contextPath}/resources/plugins/shuffle/shuffle.min.js" defer="defer"></script>
	
	
	  <!-- Google Map API Key-->
	  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer="defer"></script>
	  <!-- Google Map Plugin-->
	  <script src="${pageContext.request.contextPath}/resources/plugins/google-map/map.js" defer="defer"></script>
	
	  <!-- Template custom -->
	  <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
	
	
</body>
</html>