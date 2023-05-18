<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <!-- Favicon
   ================================================== -->
   <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>soboroo admin - 탈퇴회원 관리</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">

</head>
<body>

<div class="main-wrapper">

<div class="header header-one">

<div class="header-left header-left-one">
<a href="adminLogin.me" class="logo">
<img src="${pageContext.request.contextPath}/resources/admin/img/usermain.jpg" alt="Logo">
</a>
<a href="adminLogin.me" class="white-logo">
<img src="${pageContext.request.contextPath}/resources/admin/img/logo-white.png" alt="Logo">
</a>
<a href="adminLogin.me" class="logo logo-small">
<img src="${pageContext.request.contextPath}/resources/admin/img/logo-small.png" alt="Logo" width="30" height="30">
</a>
</div>


<a href="javascript:void(0);" id="toggle_btn">
<i class="fas fa-bars"></i>
</a>


<div class="top-nav-search">
<form>
<input type="text" class="form-control" placeholder="Search here">
<button class="btn" type="submit"><i class="fas fa-search"></i></button>
</form>
</div>


<a class="mobile_btn" id="mobile_btn">
<i class="fas fa-bars"></i>
</a>


<ul class="nav nav-tabs user-menu">



<li class="nav-item dropdown">
<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
<i data-feather="bell"></i> <span class="badge rounded-pill">5</span>
</a>
<div class="dropdown-menu notifications">
<div class="topnav-dropdown-header">
<span class="notification-title">Notifications</span>
<a href="javascript:void(0)" class="clear-noti"> Clear All</a>
</div>
<div class="noti-content">
<ul class="notification-list">
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<span class="avatar avatar-sm">
<img class="avatar-img rounded-circle" alt="" src="${pageContext.request.contextPath}/resources/admin/img/profiles/usermain.jpg">
</span>
<div class="media-body">
<p class="noti-details"><span class="noti-title">Brian Johnson</span> paid the invoice <span class="noti-title">#DF65485</span></p>
<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<span class="avatar avatar-sm">
<img class="avatar-img rounded-circle" alt="" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-03.jpg">
</span>
<div class="media-body">
<p class="noti-details"><span class="noti-title">Marie Canales</span> has accepted your estimate <span class="noti-title">#GTR458789</span></p>
<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<div class="avatar avatar-sm">
<span class="avatar-title rounded-circle bg-primary-light"><i class="far fa-user"></i></span>
</div>
<div class="media-body">
<p class="noti-details"><span class="noti-title">New user registered</span></p>
<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<span class="avatar avatar-sm">
<img class="avatar-img rounded-circle" alt="" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-04.jpg">
</span>
<div class="media-body">
<p class="noti-details"><span class="noti-title">Barbara Moore</span> declined the invoice <span class="noti-title">#RDW026896</span></p>
<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
</div>
</div>
</a>
</li>
<li class="notification-message">
<a href="activities.html">
<div class="media d-flex">
<div class="avatar avatar-sm">
<span class="avatar-title rounded-circle bg-info-light"><i class="far fa-comment"></i></span>
</div>
<div class="media-body">
<p class="noti-details"><span class="noti-title">You have received a new message</span></p>
<p class="noti-time"><span class="notification-time">2 days ago</span></p>
</div>
</div>
</a>
</li>
</ul>
</div>
<div class="topnav-dropdown-footer">
<a href="activities.html">View all Notifications</a>
</div>
</div>
</li>


<li class="nav-item dropdown has-arrow main-drop">
<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
<span class="user-img">
<img src="assets/img/profiles/usermain.jpg" alt="">
<span class="status online"></span>
</span>
<span>Admin</span>
</a>
<div class="dropdown-menu">
<a class="dropdown-item" href="profile.html"><i data-feather="user" class="me-1"></i> Profile</a>
<a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i> Settings</a>
<a class="dropdown-item" href="login.html"><i data-feather="log-out" class="me-1"></i> Logout</a>
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

<div class="page-header">
<div class="row align-items-center">
<div class="col">
<h3 class="page-title">탈퇴회원 관리</h3>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="index.html"></a>
</li>
<li class="breadcrumb-item active"></li>
</ul>
</div>
<div class="col-auto">
</a>
</div>
</div>
</div>


<div id="filter_inputs" class="card filter-card">
<div class="card-body pb-0">
<div class="row">
<div class="col-sm-6 col-md-3">
<div class="form-group">
<label>Name</label>
<input type="text" class="form-control">
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="form-group">
<label>Email</label>
<input type="text" class="form-control">
</div>
</div>
<div class="col-sm-6 col-md-3">
<div class="form-group">
<label>Phone</label>
<input type="text" class="form-control">
</div>
</div>
</div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
<div class="card card-table">
<div class="card-body">
<div class="table-responsive">
<table class="table table-center table-hover datatable">
<thead class="thead-light">
<tr>
<th>회원이름</th>
<th>아이디</th>
<th>누적신고수</th>
<th>가입일</th>
<th>탈퇴일</th>
<th>상태</th>
<th class="text-end">Actions</th>
</tr>
</thead>
<c:forEach var="w" items="${list}">
 <tbody>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${w.memImg }" alt="User Image"></a>
<a href="profile.html">${w.memName }<span>soboroo ${w.memNo }</span></a>
</h2>
</td>
<td><a href="#" class="__cf_email__" data-cfemail="60021209010e0a0f080e130f0e200518010d100c054e030f0d">${w.memEmail }</a></td>
<td>${w.memRprCount }</td>
<td>${w.memUpdateDate }</td>
<td>${w.memUpdateDate }</td>
<td><span class="badge badge-pill bg-danger-light">탈퇴</span></td>
<td class="text-end">
<a href="updateReport.ad" class="btn btn-sm btn-white text-success me-2"><i class="far fa-edit me-1"></i> 조회</a>
<a class="btn btn-sm btn-white text-danger" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-trash-alt me-1"></i>삭제</a>

</td>
</tr>
</td>
</tr>
></c:forEach>
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


<script data-cfasync="false" src="../../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.6.0.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/feather.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/script.js"></script>


<a href="javascript:void(0);" class="btn btn-sm btn-white text-danger me-2" id="modal"><i class="far fa-trash-alt me-1"></i>삭제</a>

<div id="bottom-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm modal-bottom">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="bottomModalLabel">회원 탈퇴</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h5>해당 소보루 회원 탈퇴를 진행하시겠습니까?</h5>
        <p>탈퇴시, 서비스 이용을 하실 수 없습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary">탈퇴하기</button>
      </div>
    </div>
  </div>
</div>

<script>
  // 삭제 버튼 클릭 이벤트 핸들러
  document.getElementById("modal").addEventListener("click", function() {
    // 모달창 보이기
    var modal = new bootstrap.Modal(document.getElementById('bottom-modal'), {
      keyboard: false
    });
    modal.show();
  });
</script>


<!-- 모달팝업 -->
<div class="modal custom-modal fade" id="delete_paid" role="dialog">
  <div class="modal-dialog modal-dialog-centered">
  <div class="modal-content">
  <div class="modal-body">
  <div class="form-header">
  <h3>회원 탈퇴</h3>
   <p>해당 소보루 회원 탈퇴를 진행하시겠습니까?</p>
   <p>탈퇴 처리시 , 서비스 이용을 하실 수 없습니다.</p>
  </div>
  <div class="modal-btn delete-action">
  <div class="row">
  <div class="col-6">
  <a href="javascript:void(0);" class="btn btn-primary paid-continue-btn">탈퇴</a>
  </div>
  <div class="col-6">
  <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-cancel-btn">취소</a>

</div>




</body>
</html>