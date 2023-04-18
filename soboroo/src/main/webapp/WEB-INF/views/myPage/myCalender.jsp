<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.5/index.global.min.js"></script>

  </head>

  <body>
    <jsp:include page="../common/header.jsp" />

    <div class="body-inner">


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

                      <div class="table-responsive">
                        <div id='calendar-container'>
                          <br>
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


    </div><!-- Body inner end -->

    <script>

      document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
         /*  headerToolbar: {
            left: 'none',
            center: 'title'
            //right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
          } */
        });
        calendar.render();
      });

    </script>




    <jsp:include page="../common/footer.jsp" />
  </body>

  </html>