<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>soboroo | 오프라인 반짝모임</title>
	<!-- Favicon
	================================================== -->
  	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
  	
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div id="banner-area" class="banner-area" style="background-color: #ff8932;">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">오프라인 모임</h1>
                <!-- <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">Home</a></li>
                      <li class="breadcrumb-item"><a href="#">Services</a></li>
                      <li class="breadcrumb-item active" aria-current="page">All Services</li>
                    </ol>
                </nav> -->
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 

<section id="main-container" class="main-container pb-2">
  <div class="container">
  	<div style="text-align: right">
      <c:if test="${ not empty loginUser }">
        <a class="btn btn-primary" href="enrollOfflineGroupOne.go">새로운 모임</a>
      </c:if>
  	</div>
  	<br>
    <div class="row">
    <c:forEach var="ogo" items="${ list }">
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="ts-service-box">
            <div class="ts-service-image-wrapper">
              <img loading="lazy" class="w-100" src="${ ogo.filePath }" alt="service-image">
            </div>
            <div class="d-flex">
              <div class="ts-service-box-img">
                  <%-- <img loading="lazy" src="${pageContext.request.contextPath}/resources/images/icon-image/service-icon1.png" alt="service-icon"> --%>
              </div>
              <div class="ts-service-info">
                  <h3 class="service-box-title"><a href="detail.go?tableNo=${ ogo.tableNo }&no=${ ogo.no }">${ ogo.title }</a></h3>
                  <p>${ ogo.simple }</p>
                  <p>${ ogo.hashTag }</p>
                  <p>조회수 ${ ogo.count }</p>
                  <p>모임기간 ${ ogo.startDate } ~ ${ ogo.endDate }</p>
                  <p>접수기간 ${ ogo.startEnter } ~ ${ ogo.endEnter }</p>
                  <p>${ ogo.enrollDate }</p>
                  
                  <a class="learn-more d-inline-block" href="service-single.html" aria-label="service-details"><i class="fa fa-caret-right"></i> 더보기</a>
              </div>
            </div>
        </div><!-- Service1 end -->
      </div><!-- Col 1 end -->
    </c:forEach>
    </div><!-- Main row end -->

  </div><!-- Conatiner end -->
</section><!-- Main container end -->
<div id="pagingArea">
    <ul class="pagination">
      <c:choose>
        <c:when test="${ pi.currentPage eq 1 }">
          <li class="page-item disabled">
            <a class="page-link" href="">이전</a>
          </li>
        </c:when>
        <c:otherwise>
          <li class="page-item">
            <a class="page-link" href="listGroupOne.off?cpage=${ pi.currentPage - 1 }">이전</a>
          </li>
        </c:otherwise>
      </c:choose>
      <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
        <c:choose>
          <c:when test="${ p eq pi.currentPage }">
            <li class="page-item"><a style="background-color: lightgray; color: orangered" class="page-link" href="listGroupOne.off?cpage=${ p }">${ p }</a></li>
          </c:when>
          <c:otherwise>
              <li class="page-item"><a class="page-link" href="listGroupOne.off?cpage=${ p }">${ p }</a></li>
          </c:otherwise>
        </c:choose>
      </c:forEach>
      <c:choose>
        <c:when test="${ pi.currentPage eq pi.maxPage }">
          <li class="page-item disabled"><a class="page-link" href="">다음</a></li>
        </c:when>
        <c:otherwise>
          <li class="page-item"><a class="page-link" href="listGroupOne.off?cpage=${ pi.currentPage + 1 }">다음</a></li>
        </c:otherwise>
        </c:choose>
    </ul>
</div>

<jsp:include page="../common/footer.jsp"/>

<script>
  $("#boardList>tbody>tr").click(function(){
    location.href='listGroupOne.off?no=' + $(this).children(".no").text();
  })
</script>



</body>
</html>