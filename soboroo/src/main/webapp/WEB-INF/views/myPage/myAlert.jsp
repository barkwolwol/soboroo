<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

.body-inner {
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

/* .table{
          table-layout : fixed;
        }
      	
      	.table td {
      	   text-overflow : ellipsis;
      	   overflow: hidden;
      	   white-space : nowrap;	
      	}
 */
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp" />

	<div class="body-inner">

		<!--     <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)"> -->
		<div id="banner-area" class="banner-area"
			style="background-image: url(https://images.unsplash.com/photo-1625233583974-28b93466d22f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80)"
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
								<h3 class="widget-title">최근 조회한 소모임</h3>
								<ul class="list-unstyled">
									<li class="d-flex align-items-center">
										<div class="posts-thumb">
											<a href="#"><img loading="lazy" alt="img"
												src="${pageContext.request.contextPath}/resources/images/news/news1.jpg"></a>
										</div>
										<div class="post-info">
											<h4 class="entry-title">
												<a href="#">광진구에서 풋살해요!</a>
											</h4>
										</div>
									</li>
									<!-- 1st post end-->

									<li class="d-flex align-items-center">
										<div class="posts-thumb">
											<a href="#"><img loading="lazy" alt="img"
												src="${pageContext.request.contextPath}/resources/images/news/news2.jpg"></a>
										</div>
										<div class="post-info">
											<h4 class="entry-title">
												<a href="#">안양에서 독서모임 구합니다~</a>
											</h4>
										</div>
									</li>
									<!-- 2nd post end-->

									<li class="d-flex align-items-center">
										<div class="posts-thumb">
											<a href="#"><img loading="lazy" alt="img"
												src="${pageContext.request.contextPath}/resources/images/news/news3.jpg"></a>
										</div>
										<div class="post-info">
											<h4 class="entry-title">
												<a href="#">강남에서 독서모임 하실 분?</a>
											</h4>
										</div>
									</li>
									<!-- 3rd post end-->

								</ul>

							</div>
							<!-- Recent post end -->





						</div>
						<!-- Sidebar end -->
					</div>
					<!-- Sidebar Col end -->

					<div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">

						<div class="post" id="myGroup">

							<div class="post-body">
								<div class="entry-header">
									<h2 class="entry-title">나의 알림</h2>
								</div>
								<!-- header end -->

								<div class="entry-content">
									<div class="content">
										<!-- <br><br> -->
										<div class="innerOuter">
											<br>
											<!-- <br></br> -->
											<form action="deleteAlert.my">
											<table id="boardList" class="table table-hover"
												align="center">
												<thead align="center">
													<tr>
														<th><input type="checkbox" name="allCheck"></th>
														<th>알림번호</th>
														<th>알림내용</th>
														<th>알림날짜</th>
													</tr>
												</thead>
												<tbody align="center">
												  <c:choose>
												    <c:when test="${empty list}">
												      <tr>
												        <td colspan="4" align="center" style="pointer-events: none;">알림 내역이 없습니다.</td>
												      </tr>
												    </c:when>
												    <c:otherwise>
												   <c:forEach var="g" items="${list}">
													  <tr class="board-row" id="alert-${g.idNo}">
													    <td><input type="checkbox" class="row-checkbox" name="RowCheck" value="${g.idNo} "></td>
													    <td data-table-no="${g.tableNo}" data-no="${g.groupNo}">${g.idNo}</td>
													    <td>${g.alertContent}</td>
													    <td>${g.alertDate}</td>
													  </tr>
													</c:forEach>

													</c:otherwise>
												  </c:choose>
												</tbody>
												</table>
												<input type="submit" class="btn btn-primary" value="삭제하기" onclick="deleteAlert();">
												</form>
																								
												<script>
												  $(function() {
												    $(".board-row").on("click", function() {
												      var tableNo = $(this).find("td[data-table-no]").attr("data-table-no");
												      var no = $(this).find("td[data-no]").attr("data-no");
												      if (tableNo == 10 && no !== undefined) {
												        location.href = 'detail.bo?bno=' + no;
												      } else {
												    	  location.href = 'detail.go?tableNo=' + tableNo + '&no=' + no;
												      }
												    });
												
												    $(".row-checkbox").on("click", function(event) {
												      event.stopPropagation();
												    });
												  });
												</script>
																							

											<script>
												$(function() {
													var chkObj = document
															.getElementsByName("RowCheck");
													var rowCnt = chkObj.length;

													$("input[name='allCheck']")
															.click(
																	function() {
																		var chk_listArr = $("input[name='RowCheck']");
																		for (var i = 0; i < chk_listArr.length; i++) {
																			chk_listArr[i].checked = this.checked;
																		}
																	});

													$("input[name='RowCheck']")
															.click(
																	function() {
																		if ($("input[name='RowCheck']:checked").length == rowCnt) {
																			$("input[name='allCheck']")[0].checked = true;
																		} else {
																			$("input[name='allCheck']")[0].checked = false;
																		}
																	});
												});

												function deleteAlert() {
													  var url = "deleteAlert.my";
													  var valueArr = new Array();
													  var list = $("input[name='RowCheck']");
													  for (var i = 0; i < list.length; i++) {
													    if (list[i].checked) {
													      valueArr.push(list[i].value);
													    }
													  }
													  if (valueArr.length == 0) {
													    alert("선택된 알림이 없습니다.");
													  } else {
													    var chk = confirm("정말 삭제하시겠습니까?");
													    console.log(valueArr);
													    $.ajax({
													      url: url,
													      type: 'POST',
													      traditional: true,
													      data: { "valueArr[]": valueArr },
													      success: function(data) {
													        if (data === "success") {
													          for (var i = 0; i < valueArr.length; i++) {
													            $("#alert-" + valueArr[i]).remove();
													          }
													          alert("성공적으로 삭제되었습니다.");
													        } 
													      }
													    });
													  }
													  
													  // 폼 제출 동작 막기
													  event.preventDefault();
													}


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
        <li class="page-item"><a class="page-link" href="selectAlertList.my?cpage=${pi.currentPage - 1}">Previous</a></li>
      </c:otherwise>
    </c:choose>
  
    <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
      <li class="page-item"><a class="page-link" href="selectAlertList.my?cpage=${p}">${p}</a></li>
    </c:forEach>
  
    <c:choose>
      <c:when test="${pi.currentPage eq pi.maxPage}">
        <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
      </c:when>
      <c:otherwise>
        <li class="page-item"><a class="page-link" href="selectAlertList.my?cpage=${pi.currentPage + 1}">Next</a></li>
      </c:otherwise>
    </c:choose>
  </c:otherwise>
</c:choose>
</ul>
</nav>
<!-- 								<nav class="paging" aria-label="Page navigation example"
									style="margin: auto;">
									<ul class="pagination"
										style="padding-left: 270px; padding-top: 10px;">
										<li class="page-item"><a class="page-link" href="#"><i
												class="fas fa-angle-double-left"></i></a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#"><i
												class="fas fa-angle-double-right"></i></a></li>
									</ul>
								</nav> -->

								<!-- </div> -->
								<!-- Content Col end -->

							</div>
							<!-- Main row end -->

						</div>
						<!-- Container end -->
</div></div></div>
		</section>
		<!-- Main container end -->

		<jsp:include page="../common/footer.jsp" />
	</div>
	<!-- Body inner end -->
</body>

</html>