<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
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
                          <table class="table align-middle">
                            <thead>
                              <tr>
                                <th text-align="center">월</th>
                                <th>화</th>
                                <th>수</th>
                                <th>목</th>
                                <th>금</th>
                                <th>토</th>
                                <th>일</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr height="100px">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>1</td>
                                <td>2</td>
                              </tr>
                              <tr height="100px">
                                <td>3</td>
                                <td>4</td>
                                <td>5</td>
                                <td>6</td>
                                <td>7</td>
                                <td>8</td>
                                <td>9</td>
                              </tr>
                              <tr height="100px">
                                <td>10</td>
                                <td>11</td>
                                <td>12</td>
                                <td>13</td>
                                <td>14</td>
                                <td>15</td>
                                <td>16</td>
                              </tr>
                              <tr height="100px">
                                <td>17</td>
                                <td>18</td>
                                <td>19</td>
                                <td>20</td>
                                <td>21</td>
                                <td>22</td>
                                <td>23</td>
                              </tr>
                              <tr height="100px">
                                <td>24</td>
                                <td>25</td>
                                <td>26</td>
                                <td>27</td>
                                <td>28</td>
                                <td>29</td>
                                <td>30</td>
                              </tr>
                            </tbody>
                          </table>
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