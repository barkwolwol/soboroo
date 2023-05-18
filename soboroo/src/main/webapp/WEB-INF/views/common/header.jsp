<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
      <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css"> -->
      <!-- Animation -->
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/animate-css/animate.css">
      <!-- slick Carousel -->
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick/slick.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick/slick-theme.css">
      <!-- Colorbox -->
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/colorbox/colorbox.css">
      <!-- Template styles-->
      <link rel="stylesheet" href="resources/css/style.css">

      <!-- fontawesome 라이브러리 -->
      <script src="https://kit.fontawesome.com/66bc1e54e8.js" crossorigin="anonymous"></script>

      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

		  <!-- sockJS -->
		<!-- <script src="resources/js/sockjs.min.js"></script> -->
		<script src="https://cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
      <!-- <script src="https://code.jquery.com/jquery-3.3.1/slim.min.js"></script> -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      <%-- 
      <script src="${pageContext.request.contextPath}/resources/js/alarm.js"></script> --%>
    

      <style>
        .popover-body li {
          list-style: none;
        }
        .popover-body div {
          padding: 5px 7px 5px;
          border-bottom: 1px solid #ddd;
        }
        .popover-body a {
          padding: 3px 10px 3px;
          float: right;
        }
        
 .visually-hidden {
  display: none !important;
}

   .position-absolute {
  transition: all 0.3s ease-in-out;
  visibility: visible;
}


.position-absolute.show {
  visibility: visible;
} 
      </style>

    </head>

    <body>
    
    <c:if test="${ not empty alertMsg }">
      <script>
        alert("${ alertMsg }");
      </script>
      <c:remove var="alertMsg" scope="session"/>
	  </c:if>
	

	
	<script>
  var socket = null;
  var messageQueue = []; // 메시지 큐

  $(document).ready(function(){
    connectWs();
  });

  function connectWs(){
    sock = new SockJS( "<c:url value="/echo"/>" );
    socket = sock;

    sock.onopen = function(){
      console.log('웹소켓 연결됨');
    }
  
    sock.onmessage = function(evt) {
      var data = evt.data;
      console.log("ReceiveMessage: " + data + "\n");
  
      messageQueue.push(data); // 새로운 메시지 큐에 추가
  
      updatePopoverContent(); // 팝오버 내용 갱신
  
      var circle = document.querySelector(".rounded-circle");
      circle.classList.add("show");
  
      var redDot = document.querySelector(".rounded-circle");
      redDot.classList.remove("visually-hidden");
    }
  
    document.addEventListener("click", function(event) {
      var circle = document.querySelector(".rounded-circle");
      if (event.target !== circle && !circle.contains(event.target)) {
        circle.classList.remove("show");
      }
  
      var redDot = document.querySelector(".rounded-circle");
      redDot.classList.add("visually-hidden");
    });
  
    sock.onclose = function(){
      console.log("연결 해제");
    };
  
    sock.onerror = function(err) {
      console.log('Errors : ' + err);
    };
  };
  
  function updatePopoverContent() {
    var popoverContent = ""; // 팝오버 내용
  
    if (messageQueue.length > 0) {
        for (var i = 0; i < Math.min(messageQueue.length, 5); i++) {
          popoverContent += "<div>" + messageQueue[i] + "</div>";
        }
      } else {
        popoverContent = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;새로운 알림이 없습니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
      }
  
  
    var bellIcon = document.getElementById("bellIcon");
    bellIcon.setAttribute("data-content", popoverContent);
  }
</script>
	
	
	
	<%-- 
	<script>
$(function() {
    // 서버에서 socketMsg 값을 가져옴 (예시: 세션 사용)
    var socketMsg = "<%= session.getAttribute("socketMsg") %>";
    
    console.log("헤더" + socketMsg);
    
    // socketMsg 값을 <li> 요소에 삽입
    $("#bellIcon").attr("data-content", function() {
        return $(this).attr("data-content") + "<div>" + socketMsg + "</div>";
    });
});
</script> --%>
	


   <div id="top-bar" class="top-bar">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 col-md-8">
              <ul class="top-info text-center text-md-left">
                <li><!-- <i class="fas fa-map-marker-alt"></i> -->
                  <p class="info-text">소소하지만 보람찬 당신의 하루</p>
                </li>
              </ul>
            </div>
            <!--/ Top info end -->

            <div class="col-lg-4 col-md-4 top-social text-center text-md-right">
              <ul class="list-unstyled" >
                <li>
                  <a title="Facebook" href="https://facebbok.com/themefisher.com">
                    <span class="social-icon"><img src="${pageContext.request.contextPath}/resources/images/facebook.png" style="width:18px"></span>
                  </a>
                  <a title="Twitter" href="https://twitter.com/themefisher.com">
                    <span class="social-icon"><img src="${pageContext.request.contextPath}/resources/images/twitter.png" style="width:18px"></span>
                  </a>
                  <a title="Instagram" href="https://instagram.com/themefisher.com">
                    <span class="social-icon"><img src="${pageContext.request.contextPath}/resources/images/insta.png" style="width:18px"></span>
                  </a>
                  <a title="Linkdin" href="https://github.com/themefisher.com">
                    <span class="social-icon"><img src="${pageContext.request.contextPath}/resources/images/github.png" style="width:18px"></span>
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

                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse"
                    aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>

                  <div id="navbar-collapse" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav mr-auto align-items-center">
					  
					  <!-- 
					  <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">참가하기 <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="listGroupOne.go?tableNo=2">모임참가</a></li>
                        </ul>
                      </li>
					   -->
					  
                      <li class="nav-item dropdown">
                        <a href="onList.go?tableNo=2">온라인</a>
                        <!-- <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">온라인 <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="listOne.on">반짝모임</a></li>
                          <li><a href="listReg.on">정기모임</a></li>
                          <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">목표모임</a>
                            <ul class="dropdown-menu">
                              <li><a href="listGoal.on">꾸준한 습관</a></li>
                              <li><a href="listDday.on">D-DAY</a></li>
                            </ul>
                          </li>
                        </ul> -->
                      </li>

                      <li class="nav-item dropdown">
                        <a href="offList.go?tableNo=6">오프라인</a>
                        <!-- <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">오프라인<i
                            class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="listOfflineGroupOne.off?tableNo=6">반짝모임</a></li>
                          <li><a href="listOfflineGroupReg.off?tableNo=7">정기모임</a></li>
                          <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">목표모임</a>
                            <ul class="dropdown-menu">
                              <li><a href="listOfflineChallengeDday.go?tableNo=8">D-DAY</a></li>
                              <li><a href="listOfflineChallengeReg.go?tableNo=9">꾸준한 습관</a></li>
                            </ul>
                          </li>
                        </ul> -->
                      </li>

                      <li class="nav-item"><a class="nav-link" href="list.bo?category=0">자유게시판</a></li>

                      <li class="nav-item"><a class="nav-link" href="list.no">공지사항</a></li>
						
						<c:if test="${not empty loginUser }">
                      <li class="nav-item dropdown">
                        <a href="myCalender.do" class="nav-link dropdown-toggle" data-toggle="dropdown">마이페이지 <i
                            class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="selectMySchedule.my">나의 일정</a></li>
                          <li><a href="selectAlertList.my">나의 알림</a></li>
                          <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">나의 활동 내역</a>
                            <ul class="dropdown-menu">
                              <li><a href="selectMyGroup.my">참여 소모임 조회</a></li>
                              <li><a href="groupBoardList.my">소모임 게시글 조회</a></li>
                              <li><a href="groupBoardReplyList.my">소모임 댓글 조회</a></li>
                              <li><a href="communityList.my">커뮤니티 게시글 조회</a></li>
                              <li><a href="communityReplyList.my">커뮤니티 댓글 조회</a></li>
                            </ul>
                          <li><a href="updateInfo.my">개인정보 수정</a></li>
                          <c:choose>
                        <c:when test="${ loginUser.memStatus eq 5 }">
                          <li><a class="btn btn-primary" href="adminHome.ad">관리페이지</a></li>
                        </c:when>
                      </c:choose>
                    </ul>
                      </li>
						<li class="nav-item">
						  <i style="margin-bottom:10px;" id="bellIcon" class="fa-sharp fa-solid fa-bell position-relative" tabindex="0" data-toggle="popover"
						    data-toggle="popover" title="최신 알림" data-html="true"
						    data-content="
						    			  <div>최신 알림이 없습니다.</div>" data-placement="bottom"></i>
						  <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle visually-hidden"></span>
						</li>
						</c:if>
                    </ul>
                    <ul class="nav navbar-nav ml-auto align-items-center">
                      <li class="header-get-a-quote">
                      <c:choose>
                        <c:when test="${ empty loginUser }">
                          <a class="btn btn-primary" href="loginPage.me">로그인</a>
                          </c:when>
                          <c:otherwise>
                          <!-- 로그인 후-->
                          <label id="table-avatar">
                            <a id="table-avatar" href="${ loginUser.memImg }" target="_blank"><img class="rounded-circle" src="${ loginUser.memImg }" alt="User Image"></a>
                          </label>&nbsp;&nbsp;
                          <a>${ loginUser.memNickname }님</a> &nbsp;&nbsp;
                          <a href="logout.me">로그아웃</a>
                          </c:otherwise>
                          </c:choose>
      
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
   
     <!-- initialize jQuery Library  -->
     <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
     <!-- Bootstrap jQuery -->
     <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.js" defer="defer"></script>

      <!-- Slick Carousel -->
      <script src="${pageContext.request.contextPath}/resources/plugins/slick/slick.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/plugins/slick/slick-animation.min.js"></script>
      <!-- Color box -->
      <script src="${pageContext.request.contextPath}/resources/plugins/colorbox/jquery.colorbox.js"></script>
      <!-- shuffle -->
      <script src="${pageContext.request.contextPath}/resources/plugins/shuffle/shuffle.min.js" defer="defer"></script>

      <!-- Template custom -->
      <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>

      <script>
				  $(function() {
				    $('[data-toggle="popover"]').popover();
				  });
				</script>

    </body>

    </html>