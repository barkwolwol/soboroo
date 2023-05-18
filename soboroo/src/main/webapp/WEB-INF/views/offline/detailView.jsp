<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../common/header.jsp"/>
	
	<meta charset="UTF-8">
	<title>${ ogo.title }</title>		<!-- 같이 바리스타 자격증 취득해봐요 -->
	
	<!-- Favicon
	================================================== -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
	
	<style>
		.entry-list-me {
      		width: auto;
      		height: 200px;
			border: 1px solid gray;
			margin-top: 50px;
			overflow: auto;
		}
	</style>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22931d135d75b509838f23be2834c5c7&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
<body>
  <div class="body-inner">
  	<c:choose>
  		<c:when test="${ ogo.tableNo eq 2 }">
		    <div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner-online2.jpg)">
  		</c:when>
  		<c:otherwise>
  			<div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/with2.jpg)">
  		</c:otherwise>
  	</c:choose>
      
      <div class="banner-text">
        <div class="container">
            <div class="row">
              <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">${ ogo.title }</h1>
                    <!-- 
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                          <li class="breadcrumb-item"><a href="listOne.on">온라인</a></li>
                          <li class="breadcrumb-item"><a href="listOne.on">반짝모임</a></li>
                          <li class="breadcrumb-item active" aria-current="page">${ ogo.categoryTitle }</li>
                        </ol>
                    </nav>
                     -->
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
            <!--
            <div id="page-slider" class="page-slider small-bg" style="background-color: rgb(241, 238, 237);">
              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/offline/coffee1.jpg" alt="모임소개이미지" />
              </div>

              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/offline/coffee2.jpg" alt="모임소개이미지" />
              </div>
              
              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/penguin.jpg" alt="모임소개이미지" />
              </div>
 			-->
            <div id="page-slider" class="page-slider small-bg" style="background-color: rgb(241, 238, 237);">
              <c:forEach var="gu" items="${ list }">
                <div class="item" style="height: 550px; position: relative;">
                  <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${ gu.filePath }" alt="모임소개이미지" />
                </div>
              </c:forEach>

            </div><!-- Page slider end -->
            
            <script>
            
             
            $(function() {
                $("#entryButton").on("click", function() {
                    var memNickname = "${loginUser.memNickname}";

                    var memNo = "${ogo.memNo}";
                    
                    console.log(memNickname);
                    console.log(memNo);
                    

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
            <!-- 여기는 참가버튼 누른 경우에만 보여야 함 -->
            <div class="entry-list-me">
            	<table border="1" align="center" width="100%" height="auto">
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
						<td>2</td>
						<td>[사진] 돌종국드뎌각성</td>
						<td>2023-05-01 17:25:54</td>
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
            
          </div><!-- Slider col end -->
		  
		  <c:choose>
		  	<c:when test="${ not empty ogo.address }">
		  	
	          <div class="col-lg-4 mt-5 mt-lg-0">
	
	            <h3 class="column-title mrt-0">${ ogo.title }</h3>		<!-- 같이 바리스타 자격증 취득해봐요 -->
	            <p>${ ogo.simple }</p>	<!--  -->
	
	            <ul class="project-info list-unstyled">
	              <li>
	                <p class="project-info-label">카테고리</p>
	                <p class="project-info-content">${ ogo.categoryTitle }</p>
	              </li>
	              <li>
	                <p class="project-info-label">모임일자</p>
	                <p class="project-info-content">${ ogo.startDate } ~ ${ ogo.endDate }</p>
	              </li>
	              <li>
	                <p class="project-info-label">모임장소</p>
	                <p class="project-info-content">${ ogo.address } ${ ogo.addressDetail }&nbsp;&nbsp;&nbsp;<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#mapModal">지도보기</a>
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
	                <p class="project-info-content">${ ogo.endEnter }</p>		<!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
	              </li>
	              <hr>
	              <li>
	                <p class="project-link">
	                  <a class="btn btn-primary" target="_blank" href="#" id="entryButton">모임에 참가하기</a> 	<!-- join.me / 클릭시, 참가취소 로 변경되게끔! 인원수가 찬 경우, 대기하기로 출력하기 -->
	                  <!-- <a class="btn btn-primary" target="_blank" href="selectChat.ih">채팅하기</a> -->
	                </p>
	              </li>
	            </ul>
	            
	            
	            <!-- The Modal -->
	            <div class="modal fade" id="mapModal">
	              <div class="modal-dialog">
	                <div class="modal-content">
	                    <div id="map" style="width:100%;height:350px;"></div>
	                </div>
	              </div>
	            </div>
	
	            <script>
	              var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	                  mapOption = { 
	                      center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	                      level: 3 // 지도의 확대 레벨
	                  };
	              
	              // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	              var map = new kakao.maps.Map(mapContainer, mapOption); 
	              
	              map.relayout();
	              </script>
	            
	          </div><!-- Content col end -->
		  		
		  	</c:when>
		  	<c:otherwise>
		  		<div class="col-lg-4 mt-5 mt-lg-0">
		
		            <h3 class="column-title mrt-0">${ ogo.title }</h3>		<!-- 같이 바리스타 자격증 취득해봐요 -->
		            <p>${ ogo.simple }</p>	<!-- 23년 04월 23일에 진행되는 바리스타 자격증 취득 준비를 위한 온라인 모임입니다. 서로가 갖고 있는 지식을 공유하며 합격 확률을 높이고자 열심히 활동할 준비가 된 분들을 모집합니다. 많은 참여 부탁드릴게요~ -->
		
		            <ul class="project-info list-unstyled">
		              <li>
		                <p class="project-info-label">카테고리</p>
		                <p class="project-info-content">${ ogo.categoryTitle }</p>				<!-- 자격증/교육 -->
		              </li>
		              <li>
		                <p class="project-info-label">모임일자</p>
		                <p class="project-info-content">${ ogo.startDate } ~ ${ ogo.endDate }</p> 				<!-- 2023년 04월 13일(목) 17:00~18:00 -->
		              </li>
		              <li>
		                <p class="project-info-label">그룹장</p>
		                <p class="project-info-content">${ ogo.name }</p>				<!-- 그룹장닉네임 -->
		              </li>
		              <li>
		              	<hr>
		                <p class="project-info-label">정원</p>
		                <p class="project-info-content">최대 ${ ogo.max }명</p>				<!-- 최대 30명 -->
		              </li>
		              <li>
		                <p class="project-info-label">신청마감일</p>
		                <p class="project-info-content">${ ogo.endEnter }</p>		<!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
		              </li>
		              <li>
		                <p class="project-info-label">온라인 회의링크</p>
		                <a class="btn btn-dark" target="_blank" href="https://meet.google.com/czp-gqri-usc">회의장소로 이동</a>
		              </li>
		              <hr>
		              <li>
		                <p class="project-link">
		                  <a class="btn btn-primary" target="_blank" href="#" id="entryButton">모임에 참가하기</a> 	<!-- join.me / 클릭시, 참가취소 로 변경되게끔! 인원수가 찬 경우, 대기하기로 출력하기 -->
		                  <!-- <a class="btn btn-primary" target="_blank" href="selectChat.ih">채팅하기</a> -->
		                </p>
		              </li>
		            </ul>
		          </div><!-- Content col end -->
		  	</c:otherwise>
		  </c:choose>
		  
          <script>
          $(function(){
          	$("#entryButton").on("click", function(){
          		var AlarmData = {
          				"myAlarm_receiverEmail" : receiverEmail,
          				"myAlarm_callerNickname" : memNickName,
          				"myAlarm_content" : memNickName + "님이 회원님의 소모임에 참여했습니다.",
          		};
          		$.ajax({
          			type : "post",
          			url : "saveAlarm.my"
          			data : JSON.stringify(AlarmData),
          			contentType: "application/json; charset=utf-8",
          			dataType : 'text',
          			success : function(data){
          				if(socket){
          					let socketMsg = "scrap," + memNickname +","+ memberSeq +","+ receiverEmail +","+ essayboard_seq;
          					console.log("msgmsg : " + socketMsg);
          					socket.send(socketMsg);
          				}

          			},
          			error : function(err){
          				console.log(err);
          			}
          		})
          	})
          })
          </script>
		  

        </div><!-- Row end -->
        
		<hr>
        <iframe src="https://service.dongledongle.com/soboroo" frameborder="0" width="100%" height="500"></iframe>
		
		<hr>
		<div>${ ogo.content }</div>
		<hr>
		
      </div><!-- Conatiner end -->
    </section><!-- Main container end -->

    <jsp:include page="../common/footer.jsp"/>

  </div><!-- Body inner end -->
  
</body>
</html>