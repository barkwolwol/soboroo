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
			border: 1px solid red;
			/*margin-top: 50px;*/
		}
	</style>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22931d135d75b509838f23be2834c5c7&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
<body>
  <div class="body-inner">
    <div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner-online4.jpg)">
      <div class="banner-text">
        <div class="container">
            <div class="row">
              <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">${ ogo.title }</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                          <!-- <li class="breadcrumb-item"><a href="listOne.on">온라인</a></li> -->
                          <!-- <li class="breadcrumb-item"><a href="listOne.on">반짝모임</a></li> -->
                          <li class="breadcrumb-item active" aria-current="page">${ ogo.categoryTitle }</li> <!-- categoryTitle -->
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

            <!--<div id="page-slider" class="page-slider small-bg">
              <c:forEach var="gu" items="${ list }">
                <div class="item">
                  <img loading="lazy" class="img-fluid" src="${ gu.filePath }" alt="모임소개이미지1" />
                </div>
              </c:forEach> -->

            </div><!-- Page slider end -->
            
            <div class="entry-list-me">
            	참가자 목록 리스트
            </div>
            
          </div><!-- Slider col end -->

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
                <p class="project-info-label">모임장소</p>
                <c:choose>
                	<c:when test="${ empty ogo.address }">
                		<a href="https://meet.google.com/czp-gqri-usc">온라인 회의로 이동하기</a>
                		<p>온라인이거나 장소가 미정입니다.</p>
                	</c:when>
                	<c:otherwise>
                		<p class="project-info-content">${ ogo.address } ${ ogo.addressDetail } <input type=button style="width:60px; height:20px; font-size:10px; text-align:center; line-height:15px" value="지도보기"></p>
						<!-- <p class="project-info-content">${ ogo.address } ${ ogo.addressDetail }&nbsp;&nbsp;&nbsp;<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#mapModal">지도보기</a> -->
					</c:otherwise>
                </c:choose>
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
                <p class="project-link">
                  <br>
                  <a class="btn btn-primary" target="_blank" href="#" id="entryButton">참가하기</a> 	<!-- join.me / 클릭시, 참가취소 로 변경되게끔! 인원수가 찬 경우, 대기하기로 출력하기 -->
                  <a class="btn btn-primary" target="_blank" href="selectChat.ih">채팅하기</a>
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
        
        <hr>
        
		<iframe src="https://service.dongledongle.com/soboroo" frameborder="0" width="100%" height="500"></iframe>
		
		<table id="replyArea" class="table" align="center">
	        <thead>
	        	<c:choose>
	        		<c:when test="${ empty loginUser }">
	              <tr>
	                  <th colspan="2">
	                      <textarea class="form-control" cols="55" rows="2" style="resize:none; width:100%" readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인 후 이용바랍니다.</textarea> 		<!-- name과 id 불필요하고 readonly -->
	                  </th>
	                  <th style="vertical-align: middle"><button class="btn btn-secondary" disabled>등록하기</button></th> 																	<!-- 등록하기 버튼이 막히게끔 disabled 부여 -->
	              </tr>
	            	</c:when>
	            	<c:otherwise>
	              <tr>
	                  <th colspan="2">
	                      <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
	                  </th>
	                  <th style="vertical-align: middle"><button class="btn btn-secondary" onclick="addReply();">등록하기</button></th>
	              </tr>
	            	</c:otherwise>
	            </c:choose>
	            <tr>
	               <td colspan="3">댓글 (<span id="rcount">0</span>) </td> 
	            </tr>
	        </thead>
	        <tbody>
	        </tbody>
         </table>
         
         <script>
	    	$(function(){
	    		selectReplyList(); // 화면이 랜더링 되자마자 댓글 조회를 하겠다
	    	})
	    	
	    	function addReply(){ // 댓글작성용 ajax
	    		if($("#content").val().trim().length != 0){ // 유효한 댓글 작성시 => insert ajax 요청 		// trim() 으로 공백을 제거함으로써 "       " 다음과 같이 불필요한 댓글 등록을 막는다.
	    			
	    			$.ajax({
	    				url:"rinsert.bo",
	    				data:{
	    					refBoardNo:${ b.boardNo },													// 컨트롤러에서 Reply 객체 하나로 한번에 받기 위해서는 키값을 vo의 필드 이름으로 지정해준다.
	    					replyContent:$("#content").val(),
	    					replyWriter:'${ loginUser.userId }' // 문자열은 이렇게 묶어야함 					// 문자를 EL구문으로 가져오는 경우
	    				}, success:function(status){
	    					
	    					if(status == "success"){
	    						selectReplyList();
	    						$("#content").val("");
	    					}
	    					
	    					
	    				}, error:function(){
	    					console.log("댓글 작성용 ajax 통신 실패!");
	    				}
	    			});
	    		
	    		}else{
	    			alertify.alert("댓글 작성 후 등록 요청해주세요!"); $("#content").val("");
	    		}
	    	}
	    	
	    	function selectReplyList(){ // 해당 게시글에 딸린 댓글리스트 조회용 ajax
	    		$.ajax({
	    			url:"rlist.bo",
	    			data:{bno:${ b.boardNo }},
	    			success:function(list){
	    				console.log(list);
	    				
	    				let value = "";
	    				
	    				for(let i in list){
	    					value += "<tr>"
	    							+ "<th>" + list[i].replyWriter + "</th>"
	    							+ "<td>" + list[i].replyContent + "</td>"
	    							+ "<td>" + list[i].createDate + "</td>"
	    							+ "</tr>";
	    				}
	    				
	    				$("#replyArea tbody").html(value);
	    				$("#rcount").text(list.length);
	    				
	    			}, error:function(){
	    				console.log("댓글 리스트 조회용 ajax 통신 실패!");
	    			}
	    		});
	    		
	    	}
	    	
	     </script>
            
            
		

      </div><!-- Conatiner end -->
    </section><!-- Main container end -->

    <jsp:include page="../common/footer.jsp"/>

  </div><!-- Body inner end -->
  
</body>
</html>