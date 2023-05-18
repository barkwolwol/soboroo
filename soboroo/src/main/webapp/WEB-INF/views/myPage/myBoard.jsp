<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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

.table {
	table-layout: fixed;
}

.table td {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp" />

	<div class="body-inner">




		<!--     <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)"> -->
		<div id="banner-area" class="banner-area"
			style="background-image: url(https://images.unsplash.com/photo-1599249300635-da2e60b2a0ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80)"
			; 
                background-repeat:no-repeat;>
			<div class="banner-text">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="banner-heading">
								<h1 class="banner-title">마이페이지</h1>
							</div>
						</div>
						<!-- Col end -->
					</div>
					<!-- Row end -->
				</div>
				<!-- Container end -->
			</div>
			<!-- Banner text end -->
		</div>
		<!-- Banner area end -->

		<section id="main-container" class="main-container">
			<div class="container">
				<div class="row">

					<div class="col-lg-4 order-1 order-lg-0">

						<div class="sidebar sidebar-left">
							<div class="widget recent-posts">
								            <h3 class="widget-title">가장 인기있는 소모임</h3>
            <ul id="recent-posts" class="list-unstyled">
              <li class="d-flex align-items-center">
              </li>
            </ul>
          </div>
          

<script>
  $(function(){
    topGroupList();

    function topGroupList(){
      $.ajax({
        url:"topList.bo",
        success:function(data){
          console.log(data);
          
          let value = "";
          for (let i in data) {
            value += "<li class='d-flex align-items-center'>";
            value += "<div class='post-thumb'>";
            value += "<a href='http://localhost:3500/soboroo/detail.go?tableNo=" + data[i].tableNo + "&no=" + data[i].no + "'>";
            value += "<img style='width:70px; height:50px; margin-right:10px' loading='lazy' alt='img' src='${pageContext.request.contextPath}/resources/images/logo_3.png'></a>";
            value += "</div>";
            value += "<div class='post-info'>";
            value += "<h4 class='entry-title'>";
            value += "<a href='http://localhost:3500/soboroo/detail.go?tableNo=" + data[i].tableNo + "&no=" + data[i].no + "'>" + data[i].title + "</a>";
            value += "</h4>";
            value += "</div>";
            value += "</li>";
          }


          
          $("#recent-posts").html(value);
          
        }, error : function(){
          console.log("ajax 통신 실패!");
        }
      });
    }
  });
</script>
	

						</div>
						<!-- Sidebar end -->
					</div>
					<!-- Sidebar Col end -->

					<div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">

						<div class="post" id="myGroup">

							<div class="post-body">
								<div class="entry-header">
									<h2 class="entry-title">작성한 소모임 게시글</h2>
								</div>
								<!-- header end -->

								<div class="entry-content">
									<div class="content">
										<!-- <br><br> -->
										<div class="innerOuter">
											<br>
											<!-- <br></br> -->
											<table id="boardList" class="table table-hover"
												align="center">
												<thead align="center">
													<tr>
														<th>글번호</th>
														<th>제목</th>
														<th>등록일</th>
													</tr>
												</thead>
												<tbody align="center">
													<c:choose>
														<c:when test="${empty list }">
															<tr>
																<td colspan="4" align="center"
																	style="pointer-events: none;">작성한 게시글이 없습니다.</td>
															</tr>
														</c:when>
														<c:otherwise>
															<c:forEach var="g" items="${list}">
																<tr class="board-row">
																	<td class="bno">${g.no }</td> 
																	<td data-table-no="${g.tableNo}" data-no="${g.no}">${g.title }</td>
																	<td>${g.enrollDate }</td>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
											
											<script>
  $(function() {
    $(".board-row").on("click", function() {
      var tableNo = $(this).find("td[data-table-no]").attr("data-table-no");
      var no = $(this).find("td[data-no]").attr("data-no");
      location.href = 'detail.go?tableNo=' + tableNo + '&no=' + $(this).children(".bno").text();
    });
  });
  
</script>

										

										</div>
									</div>
									<!-- post-body end -->
								</div>
								<!-- 3rd post end -->

								<nav class="paging" aria-label="Page navigation example"
									style="margin: auto;">
									<ul class="pagination"
										style="padding-left: 270px; padding-top: 10px;">

<c:choose>
  <c:when test="${pi.maxPage == 0}">
    <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
    <li class="page-item"><a class="page-link" href="">1</a></li>
    <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
  </c:when>
  <c:otherwise>
    <c:choose>
      <c:when test="${pi.currentPage eq 1}">
        <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
      </c:when>
      <c:otherwise>
        <li class="page-item"><a class="page-link" href="groupBoardList.my?cpage=${pi.currentPage - 1}">Previous</a></li>
      </c:otherwise>
    </c:choose>
  
    <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
      <li class="page-item"><a class="page-link" href="groupBoardList.my?cpage=${p}">${p}</a></li>
    </c:forEach>
  
    <c:choose>
      <c:when test="${pi.currentPage eq pi.maxPage}">
        <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
      </c:when>
      <c:otherwise>
        <li class="page-item"><a class="page-link" href="groupBoardList.my?cpage=${pi.currentPage + 1}">Next</a></li>
      </c:otherwise>
    </c:choose>
  </c:otherwise>
</c:choose>

										<!-- <li class="page-item"><a class="page-link" href="#"><i
                                                            class="fas fa-angle-double-left"></i></a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#"><i
                                                            class="fas fa-angle-double-right"></i></a>
                                                </li> -->
									</ul>
								</nav>


							</div>
							<!-- Main row end -->

						</div>
						<!-- Container end -->
		</section>
		<!-- Main container end -->

		<jsp:include page="../common/footer.jsp" />

	</div>
	<!-- Body inner end -->
</body>

</html>