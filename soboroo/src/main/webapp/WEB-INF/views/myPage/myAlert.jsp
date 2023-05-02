<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <style>
        @font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

.body-inner{
  font-family: 'Pretendard-Regular';
}
        #boardList {
          text-align: center;
        }

        #boardList>tbody>tr:hover {
          cursor: pointer;
        }

        #pagingArea {
          width: fit-content;
          margin: auto;
        }

      </style>
    </head>

    <body>
      <div class="body-inner">
        <jsp:include page="../common/header.jsp" />

        <!--     <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)"> -->
        <div id="banner-area" class="banner-area" style="background-color:#ff8932">
          <div class="banner-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">마이페이지</h1>
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
                          <a href="#"><img loading="lazy" alt="img" src="${pageContext.request.contextPath}/resources/images/news/news1.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">광진구에서 풋살해요!</a>
                          </h4>
                        </div>
                      </li><!-- 1st post end-->

                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="${pageContext.request.contextPath}/resources/images/news/news2.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">안양에서 독서모임 구합니다~</a>
                          </h4>
                        </div>
                      </li><!-- 2nd post end-->

                      <li class="d-flex align-items-center">
                        <div class="posts-thumb">
                          <a href="#"><img loading="lazy" alt="img" src="${pageContext.request.contextPath}/resources/images/news/news3.jpg"></a>
                        </div>
                        <div class="post-info">
                          <h4 class="entry-title">
                            <a href="#">강남에서 독서모임 하실 분?</a>
                          </h4>
                        </div>
                      </li><!-- 3rd post end-->

                    </ul>

                  </div><!-- Recent post end -->





                </div><!-- Sidebar end -->
              </div><!-- Sidebar Col end -->

              <div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">

                <div class="post" id="myGroup">

                  <div class="post-body">
                    <div class="entry-header">
                      <h2 class="entry-title">
                        나의 알림
                      </h2>
                    </div><!-- header end -->

                    <div class="entry-content">
                      <div class="content">
                        <!-- <br><br> -->
                        <div class="innerOuter">
                          <br>
                          <!-- <br></br> -->
                          <table id="boardList" class="table table-hover" align="center">
                            <thead>
                              <tr>
                              	<th><input type="checkbox"></th>
                                <th>내용</th>
                                <th>날짜</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td><input type="checkbox"></td>
                                <td>XXX님이 회원님의 소모임에 참가했습니다.</td>
                                <td>2023.03.17</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox"></td>
                                <td>XXX님이 회원님의 커뮤니티 게시글에 댓글을 남겼습니다.</td>
                                <td>2023.03.16</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox"></td>
                                <td>XXX님이 회원님의 소모임 게시글에 댓글을 남겼습니다.</td>
                                <td>2023.03.15</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox"></td>
                                <td>XXX님의 소모임에 참여되었습니다.</td>
                                <td>2023.03.14</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox"></td>
                                <td>XXX님이 회원님의 커뮤니티 게시글에 댓글을 남겼습니다.</td>
                                <td>2023.03.14</td>
                              </tr>
                            </tbody>
                          </table>
                          <a href="news-single.html" class="btn btn-primary" style="margin-left: 85%;">삭제하기</a>
                          


                        </div>
                      </div> <!-- post-body end -->
                    </div><!-- 3rd post end -->

                    <nav class="paging" aria-label="Page navigation example" style="margin: auto;">
                      <ul class="pagination" style="padding-left: 270px; padding-top: 10px;">
                        <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-left"></i></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#"><i
                              class="fas fa-angle-double-right"></i></a>
                        </li>
                      </ul>
                    </nav>

                    <!-- </div> --><!-- Content Col end -->

                  </div><!-- Main row end -->

                </div><!-- Container end -->
        </section><!-- Main container end -->

        <jsp:include page="../common/footer.jsp" />

      </div><!-- Body inner end -->
    </body>

    </html>