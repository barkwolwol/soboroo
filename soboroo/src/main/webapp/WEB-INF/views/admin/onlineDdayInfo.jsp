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
<title>soboroo admin - 온라인 목표 D-day모임 관리</title>



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
</head>
<body>

<div class="main-wrapper">

<div class="header header-one">

<div class="header-left header-left-one">
<a href="index.html" class="logo">
<img src="${pageContext.request.contextPath}/resources/admin/img/usermain.jpg" alt="Logo">
</a>
<a href="index.html" class="white-logo">
<img src="${pageContext.request.contextPath}/resources/admin/img/logo-white.png" alt="Logo">
</a>
<a href="index.html" class="logo logo-small">
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

<li class="nav-item dropdown has-arrow flag-nav">

</li>


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
                                    <a href="offlineone.ad"><i data-feather="clipboard"></i> <span style="margin-right: 72px;">온라인 모임</span> <span
                                    class="menu-arrow"></span></a>
                                    <ul><li><a href="offlineone.ad">온라인모임</a></li>
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
<h3 class="page-title">모임관리</h3>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a href="index.html">온라인</a></li>
<li class="breadcrumb-item active">목표 D-day</li>
</ul>
</div>
</a>
</div>
</div>
</div>


<div class="card report-card">
<div class="card-body pb-0">
<div class="row">
<div class="col-md-12">
<ul class="app-listing">

<li>
<div class="multipleSelection">
<div class="selectbox">
<p class="mb-0"><i data-feather="calendar" class="me-1 select-icon"></i>날짜 조회</p>
<span class="down-icon"><i data-feather="chevron-down"></i></span>
</div>
<div id="checkboxes">
<form action="#">
<p class="checkbox-title">날짜 선택</p>
<div class="selectbox-cont selectbox-cont-one h-auto">
<div class="date-picker">
<div class="form-custom cal-icon">
<input class="form-control datetimepicker" type="text" placeholder="Form">
</div>
</div>
<div class="date-picker pe-0">
<div class="form-custom cal-icon">
<input class="form-control datetimepicker" type="text" placeholder="To">
</div>
</div>
<div class="date-list">
<ul>
<li><a href="#" class="btn date-btn">오늘</a></li>
<li><a href="#" class="btn date-btn">어제</a></li>
<li><a href="#" class="btn date-btn">일주일 전</a></li>
<li><a href="#" class="btn date-btn">이번달</a></li>
<li><a href="#" class="btn date-btn">지난달</a></li>
<br>
</ul>
<button type="submit" class="btn w-100 btn-primary">적용</button>
<button type="reset" class="btn w-100 btn-grey">취소</button>
</div>
</div>
</form>
</div>
</div>
</li>
<li>
<div class="multipleSelection">
<div class="selectbox">
<p class="mb-0"><i data-feather="book-open" class="me-1 select-icon"></i>이용자 상태</p>
<span class="down-icon"><i data-feather="chevron-down"></i></span>
</div>
<div id="checkboxes">
<form action="#">
<p class="checkbox-title">상태 여부</p>
<div class="selectbox-cont">
<label class="custom_check w-100">
<input type="checkbox" name="name" checked>
<span class="checkmark"></span> All Invoices
</label>
<label class="custom_check w-100">
<input type="checkbox" name="name">
<span class="checkmark"></span> Paid
</label>
<label class="custom_check w-100">
<input type="checkbox" name="name">
<span class="checkmark"></span> Overdue
</label>
<label class="custom_check w-100">
<input type="checkbox" name="name">
<span class="checkmark"></span> Draft
</label>
<label class="custom_check w-100">
<input type="checkbox" name="name">
<span class="checkmark"></span> Recurring
</label>
<label class="custom_check w-100">
<input type="checkbox" name="name">
<span class="checkmark"></span> Cancelled
</label>
</div>
</form>
<button type="submit" class="btn w-100 btn-primary">적용</button>
<button type="reset" class="btn w-100 btn-grey">취소</button>
</div>
</div>
</li>
<li>
   <!-- 카테고리 시작 -->
   <div class="multipleSelection">
    <div class="selectbox">
    <p class="mb-0"><i data-feather="bookmark" class="me-1 select-icon"></i>카테고리</p>
    <span class="down-icon"><i data-feather="chevron-down"></i></span>
    </div>
    <div id="checkboxes">
    <form action="#">
    <p class="checkbox-title">카테고리</p>
    <div class="form-custom">
    <input type="text" class="form-control bg-grey" placeholder="카테고리 검색">
    </div>
    <div class="selectbox-cont">
    <label class="custom_check w-100">
        <input type="checkbox" name="category">
        <span class="checkmark"></span> 교육/어학
        </label>
    <label class="custom_check w-100">
    <input type="checkbox" name="category">
    <span class="checkmark"></span> 취업/자격증
    </label>
    <label class="custom_check w-100">
    <input type="checkbox" name="category">
    <span class="checkmark"></span> 여행
    </label>
    <label class="custom_check w-100">
    <input type="checkbox" name="category">
    <span class="checkmark"></span> 스포츠/운동
    </label>
    <label class="custom_check w-100">
    <input type="checkbox" name="category">
    <span class="checkmark"></span> 요리/음식
    </label>
    <label class="custom_check w-100">
        <input type="checkbox" name="category">
        <span class="checkmark"></span> 문화/예술
        </label>
        <label class="custom_check w-100">
            <input type="checkbox" name="category">
            <span class="checkmark"></span> 영화/음악
            </label>
                    <label class="custom_check w-100">
                        <input type="checkbox" name="category">
                        <span class="checkmark"></span> 기타
                        </label>
    </div>
    <!-- 카테고리 끝 -->
<button type="submit" class="btn w-100 btn-primary">적용</button>
<button type="reset" class="btn w-100 btn-grey">취소</button>
</form>
</div>
</div>
</li>
<li>
<div class="report-btn">

</div>
</li>
</ul>
</div>
</div>
</div>
</div>

<div class="card invoices-tabs-card">
<div class="card-body card-body pt-0 pb-0">
<div class="invoices-main-tabs">
<div class="row align-items-center">
<div class="col-lg-8 col-md-8">
<div class="invoices-tabs">
<ul>
<li><a href="invoices.html" class="active">모임 게시판</a></li>
<li><a href="#">모임일정</a></li>
<li><a href="#">모임공지사항</a></li>
<li><a href="#">모임신고</a></li>
</ul>
</div>
</div>
<div class="col-lg-4 col-md-4">
<div class="invoices-settings-btn">
</a>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-xl-3 col-sm-6 col-12">
<div class="card inovices-card">
<div class="card-body">
<div class="inovices-widget-header">
<span class="inovices-widget-icon">
    <img src="${pageContext.request.contextPath}/resources/admin/img/user.jpg" alt="" style="width: 30%;">
</span>
<div class="inovices-dash-count">
<div class="inovices-amount">150명 참여중</div>
</div>
</div>
<p class="inovices-all" style="margin-left: 15px;">모임멤버<span></span></p>
</div>
</div>
</div>
<div class="col-xl-3 col-sm-6 col-12">
<div class="card inovices-card">
<div class="card-body">
<div class="inovices-widget-header">
<span class="inovices-widget-icon">
<img src="${pageContext.request.contextPath}/resources/admin/img/icons/invoices-icon2.svg" alt="">
</span>
<div class="inovices-dash-count">
<div class="inovices-amount">$4,5884</div>
</div>
</div>
<p class="inovices-all">Paid Invoices <span>60</span></p>
</div>
</div>
</div>
<div class="col-xl-3 col-sm-6 col-12">
<div class="card inovices-card">
<div class="card-body">
<div class="inovices-widget-header">
<span class="inovices-widget-icon">
<img src="${pageContext.request.contextPath}/resources/admin/img/icons/invoices-icon3.svg" alt="">
</span>
<div class="inovices-dash-count">
<div class="inovices-amount">$2,05,545</div>
</div>
</div>
<p class="inovices-all">Unpaid Invoices <span>70</span></p>
</div>
</div>
</div>
<div class="col-xl-3 col-sm-6 col-12">
<div class="card inovices-card">
<div class="card-body">
<div class="inovices-widget-header">
<span class="inovices-widget-icon">
<img src="${pageContext.request.contextPath}/resources/admin/img/icons/invoices-icon4.svg" alt="">
</span>
<div class="inovices-dash-count">
<div class="inovices-amount">$8,8,797</div>
</div>
</div>
<p class="inovices-all">Cancelled Invoices <span>80</span></p>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-12">
<div class="card card-table">
<div class="card-body">
<div class="table-responsive">
<table class="table table-stripped table-hover datatable">
<thead class="thead-light">
<tr>
<th>회원 ID</th>
<th>개설모임명</th>
<th>카테고리</th>
<th>모임 가입날짜</th>
<th>모임 개설자</th>
<th>조회수</th>
<th>모임신고여부</th>
<th>모임상태</th>
<th class="text-end">Action</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="view-invoice.html" class="invoice-link">cyj2462@naver.com</a>
</td>
<td>동대문구 코딩방 모집</td>
<td>스포츠/운동</td>
<td>16 Mar 2022</td>
<td>
 <h2 class="table-avatar">
<a href="profile.html"><img class="avatar avatar-sm me-2 avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-04.jpg" alt="User Image"> Barbara Moore</a>
</h2>
</td>
<td class="text-primary">$1,54,220</td>
<td>23 Mar 2022</td>
<td><span class="badge bg-success-light">Paid</span></td>
<td class="text-end">
<div class="dropdown dropdown-action">
<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="edit-invoice.html"><i class="far fa-edit me-2"></i>Edit</a>
<a class="dropdown-item" href="view-invoice.html"><i class="far fa-eye me-2"></i>View</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-trash-alt me-2"></i>Delete</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-check-circle me-2"></i>Mark as sent</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-paper-plane me-2"></i>Send Invoice</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-copy me-2"></i>Clone Invoice</a>
</div>
</div>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="view-invoice.html" class="invoice-link">IN093439#@10</a>
</td>
<td>동대문구 코딩방 모집</td>
<td>요리/음식</td>
<td>14 Mar 2022</td>
<td>
<h2 class="table-avatar">
<a href="profile.html"><img class="avatar avatar-sm me-2 avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-06.jpg" alt="User Image"> Karlene Chaidez</a>
</h2>
</td>
<td class="text-primary">$1,222</td>
<td>18 Mar 2022</td>
<td><span class="badge bg-danger-light">Overdue</span></td>
<td class="text-end">
<div class="dropdown dropdown-action">
<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="edit-invoice.html"><i class="far fa-edit me-2"></i>Edit</a>
<a class="dropdown-item" href="view-invoice.html"><i class="far fa-eye me-2"></i>View</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-trash-alt me-2"></i>Delete</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-check-circle me-2"></i>Mark as sent</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-paper-plane me-2"></i>Send Invoice</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-copy me-2"></i>Clone Invoice</a>
</div>
</div>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="view-invoice.html" class="invoice-link">IN093439#@11</a>
</td>
<td>동대문구 코딩방 모집</td>
<td>문화/예술</td>
<td>7 Mar 2022</td>
<td>
<h2 class="table-avatar">
<a href="profile.html"><img class="avatar avatar-sm me-2 avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-08.jpg" alt="User Image"> Russell Copeland</a>
</h2>
</td>
<td class="text-primary">$3,470</td>
<td>10 Mar 2022</td>
<td><span class="badge bg-primary-light">Cancelled</span></td>
<td class="text-end">
<div class="dropdown dropdown-action">
<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="edit-invoice.html"><i class="far fa-edit me-2"></i>Edit</a>
<a class="dropdown-item" href="view-invoice.html"><i class="far fa-eye me-2"></i>View</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-trash-alt me-2"></i>Delete</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-check-circle me-2"></i>Mark as sent</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-paper-plane me-2"></i>Send Invoice</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-copy me-2"></i>Clone Invoice</a>
</div>
</div>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="view-invoice.html" class="invoice-link">IN093439#@12</a>
</td>
<td>동대문구 코딩방 모집</td>
<td>교육/어학</td>
<td>24 Mar 2022</td>
<td>
<h2 class="table-avatar">
<a href="profile.html"><img class="avatar avatar-sm me-2 avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-10.jpg" alt="User Image"> Joseph Collins</a>
</h2>
</td>
<td class="text-primary">$8,265</td>
<td>30 Mar 2022</td>
<td><span class="badge bg-success-light">Paid</span></td>
<td class="text-end">
<div class="dropdown dropdown-action">
<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="edit-invoice.html"><i class="far fa-edit me-2"></i>Edit</a>
<a class="dropdown-item" href="view-invoice.html"><i class="far fa-eye me-2"></i>View</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-trash-alt me-2"></i>Delete</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-check-circle me-2"></i>Mark as sent</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-paper-plane me-2"></i>Send Invoice</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-copy me-2"></i>Clone Invoice</a>
</div>
</div>
</td>
</tr>
<tr>
<td>
<label class="custom_check">
<input type="checkbox" name="invoice">
<span class="checkmark"></span>
</label>
<a href="view-invoice.html" class="invoice-link">IN093439#@13</a>
</td>
<td>동대문구 코딩방 모집</td>
<td>여행</td>
<td>17 Mar 2022</td>
<td>
<h2 class="table-avatar">
<a href="profile.html"><img class="avatar avatar-sm me-2 avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-11.jpg" alt="User Image"> Jennifer Floyd</a>
</h2>
</td>
<td class="text-primary">$5,200</td>
<td>20 Mar 2022</td>
<td><span class="badge bg-danger-light">Overdue</span></td>
<td class="text-end">
<div class="dropdown dropdown-action">
<a href="#" class="action-icon dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-ellipsis-v"></i></a>
<div class="dropdown-menu dropdown-menu-end">
<a class="dropdown-item" href="edit-invoice.html"><i class="far fa-edit me-2"></i>Edit</a>
<a class="dropdown-item" href="view-invoice.html"><i class="far fa-eye me-2"></i>View</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-trash-alt me-2"></i>Delete</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-check-circle me-2"></i>Mark as sent</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-paper-plane me-2"></i>Send Invoice</a>
<a class="dropdown-item" href="javascript:void(0);"><i class="far fa-copy me-2"></i>Clone Invoice</a>
</div>
</div>
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


<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.6.0.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/feather.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/select2/js/select2.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/plugins/moment/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap-datetimepicker.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/admin/js/script.js"></script>


</body>
</html>