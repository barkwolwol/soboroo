<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>



   <!-- Favicon
   ================================================== -->
   <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>soboroo admin - 홈</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
    <div class="main-wrapper">
        <div class="header header-one">
            <div class="header-left header-left-one">
                <a href="adminLogin.me" class="logo">
                    <img src="${pageContext.request.contextPath}/resources/admin/img/adminlogo.png" alt="" style="width: 70%; height: 50%; margin-right: 50px;">
                </a>
                <a href="adminLogin.me" class="white-logo">
                    <img src="${pageContext.request.contextPath}/resources/admin/img/logo-white.png" alt="Logo">
                </a>
                <a href="adminLogin.me" class="logo logo-small">
                    <img src="${pageContext.request.contextPath}/resources/admin/img/adminlogo.png" alt="Logo" style="width:80%; height:50%;" >
                </a>
            </div>
            <a href="javascript:void(0);" id="toggle_btn">
                <i class="fas fa-bars"></i>
            </a>
            <div class="top-nav-search">
                <form>
                    <input type="text" class="form-control" placeholder="키워드 입력">
                    <button class="btn" type="submit"><i class="fas fa-search"></i></button>
                </form>
            </div>
            <a class="mobile_btn" id="mobile_btn">
                <i class="fas fa-bars"></i>
            </a>
            <ul class="nav nav-tabs user-menu">
  
                </li>

                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                        <i data-feather="bell"></i> <span class="badge rounded-pill">5</span>
                    </a>
                    <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header">
                            <span class="notification-title">알림</span>
                            <a href="javascript:void(0)" class="clear-noti">모두 지우기</a>
                        </div>
                        <div class="noti-content">
                            <ul class="notification-list">
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media d-flex">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt=""
                                                    src="${pageContext.request.contextPath}/resources/admin/img/profiles/usermain.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">Brian Johnson</span>
                                                    paid the invoice <span class="noti-title">#DF65485</span></p>
                                                <p class="noti-time"><span class="notification-time">4 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media d-flex">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt=""
                                                    src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-03.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">Marie Canales</span>
                                                    has accepted your estimate <span
                                                        class="noti-title">#GTR458789</span></p>
                                                <p class="noti-time"><span class="notification-time">6 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media d-flex">
                                            <div class="avatar avatar-sm">
                                                <span class="avatar-title rounded-circle bg-primary-light"><i
                                                        class="far fa-user"></i></span>
                                            </div>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">New user
                                                        registered</span></p>
                                                <p class="noti-time"><span class="notification-time">8 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media d-flex">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt=""
                                                    src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-04.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">Barbara Moore</span>
                                                    declined the invoice <span class="noti-title">#RDW026896</span></p>
                                                <p class="noti-time"><span class="notification-time">12 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media d-flex">
                                            <div class="avatar avatar-sm">
                                                <span class="avatar-title rounded-circle bg-info-light"><i
                                                        class="far fa-comment"></i></span>
                                            </div>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">You have received a new
                                                        message</span></p>
                                                <p class="noti-time"><span class="notification-time">2 days ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="topnav-dropdown-footer">
                            <a href="#">View all Notifications</a>
                        </div>
                    </div>
                </li>

                <li class="nav-item dropdown has-arrow main-drop">
                    <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                        <span class="user-img">
                            <img src="${pageContext.request.contextPath}/resources/admin/img/profiles/usermain.jpg" alt="">
                            <span class="status online"></span>
                        </span>
                        <span>관리자님</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="profile.html"><i data-feather="user" class="me-1"></i>
                            Profile</a>
                        <a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i>
                            Settings</a>
                        <a class="dropdown-item" href="login.html"><i data-feather="log-out" class="me-1"></i>
                            Logout</a>
                    </div>
                </li>
            </ul>
        </div>
        
<!-- 사이드바 시작  -->
        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title"><span>MENU</span></li>
                        <li>
                            <a href="adminHome.ad"><i data-feather="home"></i> <span>대시보드</span></a>
                        </li>
                        <li class="submenu" class="active">
                            <a href="memberInfo.ad"><i data-feather="pie-chart"></i> <span>회원 관리</span> <span
                                    class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="memberInfo.ad">회원 관리</a></li>
                                <li><a href="susMember.ad">정지회원 관리</a></li>
                                <li><a href="withdrawMember.ad">탈퇴회원 관리</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                                        <a href="#"><i data-feather="clipboard"></i> <span>모임관리</span> <span
                                        class="menu-arrow"></span></a>
                            <ul>
                                <li class="submenu" align="left">
                                    <a href="onlineone.ad"><i data-feather="clipboard"></i> <span style="margin-right: 72px;">온라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul><li><a href="onlineone.ad">온라인모임</a></li>
                                        <!-- <li><a href="onlineleg.ad">온라인 / 정기</a></li>
                                        <li><a href="onlinegoal.ad">온라인 / 기간</a></li>
                                        <li><a href="onlineDday.ad">온라인 / 단위별</a></li> -->
                                    </ul>
                               
                                <li class="submenu">
                                    <a href="offlineone.ad"><i data-feather="clipboard"></i> <span style="margin-right: 60px;">오프라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul>
                                        <li><a href="offlineone.ad">오프라인모임</a></li> 
                                        <!-- <li><a href="offlineleg.ad">오프라인 / 정기</a></li>
                                        <li><a href="offlinegoal.ad">오프라인 / 기간</a></li>
                                        <li><a href="offlineDday.ad">오프라인 / 단위별</a></li> --> 
                                    </ul>
                         
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i data-feather="alert-octagon"></i> <span>신고 관리</span><span
                                class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="report.ad">통합신고 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="board.ad"><i data-feather="star"></i> <span>게시판 관리</span></a>
                        </li>
                        <li>
                            <a href="#"><i data-feather="package"></i> <span>문의답변</span></a>
                        </li>
                        <li>
                            <a href="notice.ad"><i data-feather="pie-chart"></i> <span>공지사항 관리</span> </a>
                        </li>

                        </li>
					</ul>
                </div>
            </div>
        </div>
        <!-- 사이드바 끝  -->



        <div class="page-wrapper">
            <div class="content container-fluid">
                <div class="row">
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="dash-widget-header">
                                    <span class="dash-widget-icon bg-1">
                                        <i class="fas fa-dollar-sign"></i>
                                    </span>
                                    <div class="dash-count">
                                        <div class="dash-title">생성된 모임</div>
                                        <div class="dash-counts">
                                            <p id="count">50</p>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-muted mt-3 mb-0"><span class="text-danger me-1"><i
                                    class="fas fa-arrow-down me-1"></i>1.15%</span> since last week</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="dash-widget-header">
                                    <span class="dash-widget-icon bg-2">
                                        <i class="fas fa-users"></i>
                                    </span>
                                    <div class="dash-count">
                                        <div class="dash-title">신고된 모임</div>
                                        <div class="dash-counts">
                                            <p>10</p>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-muted mt-3 mb-0"><span class="text-success me-1"><i
                                    class="fas fa-arrow-up me-1"></i>20</span>정지회원</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="dash-widget-header">
                                    <span class="dash-widget-icon bg-3">
                                        <i class="fas fa-file-alt"></i>
                                    </span>
                                    <div class="dash-count">
                                        <div class="dash-title">일일 방문자 수</div>
                                        <div class="dash-counts">
                                            <p id="visitorCount">1,041</p>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-muted mt-3 mb-0"><span class="text-success me-1"><i
                                            class="fas fa-arrow-up me-1"></i>3.77%</span>지난주 대비</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="dash-widget-header">
                                    <span class="dash-widget-icon bg-4">
                                        <i class="far fa-file"></i>
                                    </span>
                                    <div class="dash-count">
                                        <div class="dash-title">총 방문자수</div>
                                        <div class="dash-counts">
                                            <p id="totalCount">2,150</p>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-muted mt-3 mb-0"><span class="text-danger me-1"><i
                                            class="fas fa-arrow-down me-1"></i>8.68%</span>지난주대비</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title">자유게시판 관리</h5>
                                    </div>
                                    <div class="col-auto">
                                        <a href="board.ad" class="btn-right btn btn-sm btn-outline-primary">
                                            더보기
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="mb-3">
                         
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-stripped table-hover">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>작성회원</th>
                                                <th>게시글제목</th>
                                                <th>조회수</th>
                                                <th>작성날짜</th>
                                                <th>카테고리</th>
                                                <th class="text-right">삭제여부</th>
                                            </tr>
                                        </thead>
                                        <c:forEach var="b" items="${list2}">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="${b.memImg }"
                                                                alt="User Image">${b.memNickname}</a>
                                                    </h2>
                                                </td>
                                                <td>${b.boardTitle}</td>
                                                <td>${b.count }</td>
                                                <td>${b.createDate }</td>
                                                <td><span class="badge bg-success-light">${b.categoryTitle}</span></td>
                                                <td class="text-right">
                                                    ${b.delNy}
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                                </td>
                                            </tr>
                                             </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title">공지사항 관리</h5>
                                    </div>
                                    <div class="col-auto">
                                        <a href="notice.ad" class="btn-right btn btn-sm btn-outline-primary">
                                            더보기
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="mb-3">

                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>작성자</th>
                                                <th>공지사항번호</th>
                                                <th>작성제목</th>
                                                <th>작성일</th>
                                                <th>조회수</th>
                                                <th class="text-right">상태</th> 
                                            </tr>
                                        </thead>
                                        <c:forEach var="n" items="${list}">
                                        <tbody>
                                            <tr>
                                               
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="${pageContext.request.contextPath}/resources/admin/img/Slogo.png"
                                                                alt="User Image">${n.ntcWriter }</a>
                                                    </h2>
                                                </td>
                                                <td>${n.ntcNo}</td>
                                                <td>${n.ntcTitle}</td>
                                                <td>${n.ntcCreateDate }</td>
                                                <td>${n.ntcCount }</td>
                                                <td class="text-right">
                                                    <span class="badge bg-info-light">${ n.ntcDelNy }</span>
                                            
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- 일일 방문자 수 카운트 -->
    <script>
    function animateVisitorCount() {
        let count = 0;
        const targetCount = 1000; // 목표 방문자 수
        const duration = 10000; // 애니메이션 지속 시간 (밀리초)
        const increment = Math.ceil(targetCount / (duration / 100)); // 숫자 증가 속도

        const visitorCountElement = document.getElementById('visitorCount');

        const timer = setInterval(() => {
            count += increment;
            visitorCountElement.textContent = count.toLocaleString();

            if (count >= targetCount) {
                clearInterval(timer);
                visitorCountElement.textContent = targetCount.toLocaleString();
            }
        }, 100);
    }

    animateVisitorCount();
    </script>
    
    <!-- 총 방문자 수 카운트  -->
    <script>
    function totalCount() {
        let count = 0;
        const targetCount = 2200; // 목표 방문자 수
        const duration = 10000; // 애니메이션 지속 시간 (밀리초)
        const increment = Math.ceil(targetCount / (duration / 100)); // 숫자 증가 속도

        const visitorCountElement = document.getElementById('totalCount');

        const timer = setInterval(() => {
            count += increment;
            visitorCountElement.textContent = count.toLocaleString();

            if (count >= targetCount) {
                clearInterval(timer);
                visitorCountElement.textContent = targetCount.toLocaleString();
            }
        }, 100);
    }

    totalCount();
    </script>
    
    <!-- 모임 개수 카운트 증가  -->
    <script>
    function countUp(target, start, end, duration) {
        let current = start;
        const range = end - start;
        const step = range / duration * 10;
        const timer = setInterval(function() {
          current += step;
          target.innerHTML = Math.round(current);
          if (current >= end) {
            clearInterval(timer);
            target.innerHTML = end;
          }
        }, 10);
      }

      const countElement = document.getElementById('count');
      const startCount = 0;
      const endCount = 100;
      const duration = 10000; // 1초

      countUp(countElement, startCount, endCount, duration);
    </script>

    <script src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/js/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/plugins/apexchart/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/plugins/apexchart/chart-data.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/js/script.js"></script>
</body>

</html>