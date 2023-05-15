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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22931d135d75b509838f23be2834c5c7&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                <p class="project-info-content">${ ogo.endEnter }</p>	 <!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
              </li>
              <li>
                <p class="project-link">
                  <br>
                  <a class="btn btn-primary" target="_blank" href="#" id="entryButton">참가하기</a>
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