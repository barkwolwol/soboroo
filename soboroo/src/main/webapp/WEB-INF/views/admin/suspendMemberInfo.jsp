<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>soboroo admin - 정지회원 관리</title>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin/img/favicon.png">

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
<img src="${pageContext.request.contextPath}/resources/admin/img/profiles/usermain.jpg" alt="">
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
                            <a href="index.html"><i data-feather="home"></i> <span>대시보드</span></a>
                        </li>
                        <li class="submenu" class="active">
                            <a href="#"><i data-feather="pie-chart"></i> <span>회원 관리</span> <span
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
                                    <a href="#"><i data-feather="clipboard"></i> <span style="margin-right: 72px;">온라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul><li><a href="#">온라인 일반 / 단기</a></li>
                                        <li><a href="#">온라인 일반 / 정기</a></li>
                                        <li><a href="#">온라인 목표 / 기간</a></li>
                                        <li><a href="#">온라인 목표 / 단위별</a></li>
                                    </ul>
                               
                                <li class="submenu">
                                    <a href="#"><i data-feather="clipboard"></i> <span style="margin-right: 60px;">오프라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul>
                                        <li><a href="#">오프라인 일반 / 단기</a></li>
                                        <li><a href="#">오프라인 일반 / 정기</a></li>
                                        <li><a href="#">오프라인 목표 / 기간</a></li>
                                        <li><a href="#">오프라인 목표 / 단위별</a></li>
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
<h3 class="page-title">정지회원 관리</h3>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="index.html">복구</a>
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
<th>신고누적횟수</th>
<th>정지시작일</th>
<th>정지해제일</th>
<th>상태</th>
<th class="text-end">Actions</th>
</tr>
</thead>
 <tbody>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/usermain.jpg" alt="User Image"></a>
<a href="profile.html">Brian Johnson <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="60021209010e0a0f080e130f0e200518010d100c054e030f0d">[email&#160;protected]</a></td>
<td>3</td>
<td>16 Nov 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
<a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>

</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-03.jpg" alt="User Image"></a>
<a href="profile.html">Marie Canales <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="315c5043585452505f505d5442715449505c415d541f525e5c">[email&#160;protected]</a></td>
<td>3</td>
<td>8 Nov 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-04.jpg" alt="User Image"></a>
<a href="profile.html">Barbara Moore <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="9af8fbe8f8fbe8fbf7f5f5e8ffdaffe2fbf7eaf6ffb4f9f5f7">[email&#160;protected]</a></td>
<td>$8295</td>
<td>24 Oct 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-05.jpg" alt="User Image"></a>
<a href="profile.html">Greg Lynch <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="81e6f3e4e6edf8efe2e9c1e4f9e0ecf1ede4afe2eeec">[email&#160;protected]</a></td>
<td>$3000</td>
<td>11 Oct 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-06.jpg" alt="User Image"></a>
<a href="profile.html">Karlene Chaidez <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6803091a040d060d0b0009010c0d12280d10090518040d460b0705">[email&#160;protected]</a></td>
 <td>-</td>
<td>29 Sep 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-07.jpg" alt="User Image"></a>
<a href="profile.html">John Blair <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="29434641474b4548405b694c51484459454c074a4644">[email&#160;protected]</a></td>
<td>$50</td>
<td>13 Aug 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-08.jpg" alt="User Image"></a>
<a href="profile.html">Russell Copeland <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="85f7f0f6f6e0e9e9e6eaf5e0e9e4ebe1c5e0fde4e8f5e9e0abe6eae8">[email&#160;protected]</a></td>
<td>-</td>
<td>2 Jul 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-09.jpg" alt="User Image"></a>
<a href="profile.html">Leatha Bailey <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f39f9692879b9291929a9f968ab3968b929e839f96dd909c9e">[email&#160;protected]</a></td>
<td>$480</td>
<td>20 Jun 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-10.jpg" alt="User Image"></a>
<a href="profile.html">Joseph Collins <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="12787d6177627a717d7e7e7b7c6152776a737f627e773c717d7f">[email&#160;protected]</a></td>
<td>$600</td>
<td>9 May 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-11.jpg" alt="User Image"></a>
<a href="profile.html">Jennifer Floyd <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="d1bbb4bfbfb8b7b4a3b7bdbea8b591b4a9b0bca1bdb4ffb2bebc">[email&#160;protected]</a></td>
<td>-</td>
<td>17 Apr 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-12.jpg" alt="User Image"></a>
<a href="profile.html">Alex Campbell <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="bedfd2dbc6dddfd3cedcdbd2d2fedbc6dfd3ced2db90ddd1d3">[email&#160;protected]</a></td>
<td>-</td>
<td>30 Mar 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
<tr>
<td>
<h2 class="table-avatar">
<a href="profile.html" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-13.jpg" alt="User Image"></a>
<a href="profile.html">Wendell Ward <span>9876543210</span></a>
</h2>
</td>
<td><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="3a4d5f545e5f56564d5b485e7a5f425b574a565f14595557">[email&#160;protected]</a></td>
<td>$7500</td>
<td>22 Feb 2020</td>
<td>16 Nov 2020</td>
<td><span class="badge badge-pill bg-warning-light">정지</span></td>
<td class="text-end">
  <a class="btn btn-sm btn-white text-success" href="#" data-bs-toggle="modal" data-bs-target="#delete_paid"><i class="far fa-edit me-1"></i>복구</a>
</td>
</tr>
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
  <h3>회원 상태 복구</h3>
   <p>해당 소보루 회원의 정지를 해제하시겠습니까?</p>
   <p>상태 복구시, 서비스 이용이 원활하게 됩니다.</p>
  </div>
  <div class="modal-btn delete-action">
  <div class="row">
  <div class="col-6">
  <a href="javascript:void(0);" class="btn btn-primary paid-continue-btn">복구</a>
  </div>
  <div class="col-6">
  <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-cancel-btn">취소</a>

</div>




</body>
</html>