<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
        <!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<style>
  /* body 스타일 */
  html, body {
    overflow: hidden;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }
  /* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
  .fc-header-toolbar {
    padding-top: 1em;
    padding-left: 1em;
    padding-right: 1em;
  }
</style>
    </head>

    <body>
      <div class="body-inner">

        <jsp:include page="../common/header.jsp" />

        <!--     <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)"> -->
        <div id="banner-area" class="banner-area" style="background-color:black">
          <div class="banner-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">MyPage</h1>
                  </div>
                </div><!-- Col end -->
              </div><!-- Row end -->
            </div><!-- Container end -->
          </div><!-- Banner text end -->
        </div><!-- Banner area end -->

        <section id="main-container" class="main-container">
          <div class="container">
            <div class="row">

              <div class="col-lg-4 order-1 order-lg-0">

                <div class="sidebar sidebar-left">

                  <div class="widget recent-posts">
                    <h3 class="widget-title">최근 조회한 소모임</h3>
                    <ul class="list-unstyled">
                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="images/news/news1.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">광진구에서 풋살해요!</a>
                          </h4>
                        </div>
                      </li><!-- 1st post end-->

                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="images/news/news2.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">안양에서 독서모임 구합니다~</a>
                          </h4>
                        </div>
                      </li><!-- 2nd post end-->

                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="images/news/news3.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">강남에서 독서모임 하실 분?</a>
                          </h4>
                        </div>
                      </li><!-- 3rd post end-->

                    </ul>

                  </div>
                  <!-- Recent post end --!>



            </div><!-- Sidebar end -->
                </div><!-- Sidebar Col end -->

                <div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">
                  <div class="post" id="calender">


                    <div class="post-body">
                      <div class="entry-header">

                        <h2 class="entry-title">
                          <a href="news-single.html">나의 일정</a>
                        </h2>
                      </div><!-- header end -->

                      <div class="entry-content">

                        <div id="yearAndMonth">
                          <br>
                          <h3 style="text-align: center;">2023.04</h3>
                        </div>

                        <div class="table-responsive">
                          <div id='calendar-container'>
    <div id='calendar'></div>
  </div>

                        </div>

                      </div>
                    </div><!-- post-body end -->
                  </div><!-- 1st post end -->
                </div><!-- Content Col end -->

              </div><!-- Main row end -->

            </div><!-- Container end -->
        </section><!-- Main container end -->

        <jsp:include page="../common/footer.jsp" />

      </div><!-- Body inner end -->
    </body>

    </html>