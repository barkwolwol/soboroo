<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>같이 바리스타 자격증 취득해봐요2</title>
	
	<!-- Favicon
	================================================== -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
</head>
<body>

  <div class="body-inner">

    <jsp:include page="../common/header.jsp"/>
    
    <div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner1.jpg)">
      <div class="banner-text">
        <div class="container">
            <div class="row">
              <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">그룹 정보</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                          <li class="breadcrumb-item"><a href="listOne.off">오프라인</a></li>
                          <li class="breadcrumb-item"><a href="listOne.off">반짝모임</a></li>
                          <li class="breadcrumb-item active" aria-current="page">취업/자격증</li>
                        </ol>
                    </nav>
                  </div>
              </div><!-- Col end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
      </div><!-- Banner text end -->
    </div><!-- Banner area end --> 

    <section id="main-container" class="main-container">
      <div class="container">

        <div class="row">
          <div class="col-lg-8">
            <div id="page-slider" class="page-slider small-bg">
              <div class="item">
                <img loading="lazy" class="img-fluid" src="${pageContext.request.contextPath}/resources/images/online/coffee1.jpg" alt="모임소개이미지1" />
              </div>

              <div class="item">
                <img loading="lazy" class="img-fluid" src="${pageContext.request.contextPath}/resources/images/online/coffee2.jpg" alt="모임소개이미지2" />
              </div>
            </div><!-- Page slider end -->
          </div><!-- Slider col end -->

          <div class="col-lg-4 mt-5 mt-lg-0">

            <h3 class="column-title mrt-0">${ ogo.title }</h3>
            <p>${ ogo.content }</p>

            <ul class="project-info list-unstyled">
              <li>
                <p class="project-info-label">카테고리</p>
                <p class="project-info-content">${ ogo.categoryTitle }</p>
              </li>
              <li>
                <p class="project-info-label">모임시각</p>
                <p class="project-info-content">${ ogo.startDate }</p>
              </li>
              <li>
                <p class="project-info-label">모임장소</p>
                <p class="project-info-content">${ ogo.address } ${ ogo.addressDetail } <input type=button style="width:60px; height:20px; font-size:10px; text-align:center; line-height:15px" value="지도보기"></p>
              </li>
              <li>
                <p class="project-info-label">그룹장</p>
                <p class="project-info-content">${ ogo.name }</p>
                
                
              </li>
              <li>
              	<hr>
                <p class="project-info-label">정원</p>
                <p class="project-info-content">최대 ${ ogo.max }명</p>
              </li>
              <li>
                <p class="project-info-label">신청마감일</p>
                <p class="project-info-content">${ ogo.endEnter }</p>	 <!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
              </li>
              <li>
                <p class="project-link">
                  <br>
                  <a class="btn btn-primary" target="_blank"  id="entryButton">참가하기</a>
                </p>
              </li>
            </ul>
            
            <script>
            
             
            $(function() {
                $("#entryButton").on("click", function() {
                    var memNickname = "${loginUser.memNickname}";

                    var memNo = "${ogo.memNo}";

                    $.ajax({
                        type: "post",
                        data: { "memNo": memNo },
                        url: "findNick.my",
                        dataType: 'json',
                        success: function(data) {
                            var writer = data.memNickname; // memNickname을 받아와서 writer에 할당합니다.
                            var tableNo = "${ogo.tableNo}";
                            var groupNo = "${ogo.no}";
                            var title = "${ogo.title}";
                            var alertType = 1;
                            console.log("콘솔" + writer)
                            var alertContent = memNickname + "님이 회원님의 " + title + " 소모임에 참여했습니다.";
                            var AlarmData = {
                                "alertContent": alertContent,
                                "tableNo" : tableNo,
                                "groupNo" : groupNo,
                                "alertType" : alertType
                            };
                            

                            console.log(AlarmData);
                            $.ajax({
                                type: "post",
                                data: JSON.stringify(AlarmData),
                                url: "saveAlert.my",
                                contentType: "application/json; charset=utf-8",
                                dataType: 'text',
                                success: function(data) {
                                    console.log(data);
                                    if (socket) {
                                        var socketMsg = "apply," + memNickname + "," + writer + "," + title;
                                        console.log("msgmsg: " + socketMsg);
                                        // $("#socketMessageDiv").text(socketMsg);
                                        socket.send(socketMsg);
                                        console.log('socketMsg 보냄');
                                    }
                                },
                                error: function(err) {
                                    console.log(err);
                                }
                            });
                        },
                        error: function(err) {
                            console.log(err);
                        }
                    });
                    });

            });

</script>

          </div><!-- Content col end -->

        </div><!-- Row end -->
		
		
		
		
		
		<!-- 여기부터는 참가버튼 누른 경우에만 보여야 함 -->
		<hr>
		
		<div>
			<table border="1" align="center">
				<tbody>
					<tr>
						<th colspan="3">참가자 리스트</th>
					</tr>
					<tr>
						<th>인덱스</th>
						<th width="300px">닉네임</th>
						<th>참가시간</th>
					</tr>
					<tr>
						<td>1</td>
						<td>[사진] 감스트이꼴황대인</td>
						<td>2023-05-01 14:31:23</td>
					</tr>
					<tr>
						<td>2</td>
						<td>[사진] 돌종국드뎌각성</td>
						<td>2023-05-01 17:25:54</td>
					</tr>
					<tr>
						<td colspan="3">29명/30명</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 버튼 여부에 따라 보이는 부분 끝 -->
		
		
		
		
		
      	<hr>
      	
      </div><!-- Conatiner end -->
    </section><!-- Main container end -->

    <jsp:include page="../common/footer.jsp"/>

  </div><!-- Body inner end -->
  
</body>
</html>