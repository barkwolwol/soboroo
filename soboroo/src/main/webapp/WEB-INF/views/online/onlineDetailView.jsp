<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../common/header.jsp"/>
	
	<meta charset="UTF-8">
	<title>${ g.title }</title>		<!-- 같이 바리스타 자격증 취득해봐요 -->
	
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
</head>
<body>
  <div class="body-inner">
    <div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/banner-online4.jpg)">
      <div class="banner-text">
        <div class="container">
            <div class="row">
              <div class="col-lg-12">
                  <div class="banner-heading">
                    <h1 class="banner-title">같이 공부하실분 구해요 그룹 정보</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                          <li class="breadcrumb-item"><a href="listOne.on">온라인</a></li>
                          <li class="breadcrumb-item"><a href="listOne.on">반짝모임</a></li>
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
            <div id="page-slider" class="page-slider small-bg" style="background-color: rgb(241, 238, 237);">
              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/coffee1.jpg" alt="모임소개이미지1" />
              </div>

              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/coffee2.jpg" alt="모임소개이미지2" />
              </div>
              
              <div class="item" style="height: 550px; position: relative;">
                <img loading="lazy" style="max-width: 100%; max-height: 550px; position: absolute; top: 50%; left: 50%; transform : translate(-50%,-50%);" src="${pageContext.request.contextPath}/resources/images/online/penguin.jpg" alt="모임소개이미지3" />
              </div>
            </div><!-- Page slider end -->
            
            <div class="entry-list-me">
            	참가자 목록 리스트
            </div>
            
          </div><!-- Slider col end -->

          <div class="col-lg-4 mt-5 mt-lg-0">

            <h3 class="column-title mrt-0">${ g.title }</h3>		<!-- 같이 바리스타 자격증 취득해봐요 -->
            <p>${ g.content }</p>	<!-- 23년 04월 23일에 진행되는 바리스타 자격증 취득 준비를 위한 온라인 모임입니다. 서로가 갖고 있는 지식을 공유하며 합격 확률을 높이고자 열심히 활동할 준비가 된 분들을 모집합니다. 많은 참여 부탁드릴게요~ -->

            <ul class="project-info list-unstyled">
              <li>
                <p class="project-info-label">카테고리</p>
                <p class="project-info-content">${ g.category }</p>				<!-- 자격증/교육 -->
              </li>
              <li>
                <p class="project-info-label">모임시각</p>
                <p class="project-info-content">${ g.date }</p> 				<!-- 2023년 04월 13일(목) 17:00~18:00 -->
              </li>
              <li>
                <p class="project-info-label">모임장소</p>
                <p class="project-info-content">온라인</p>
              </li>
              <li>
                <p class="project-info-label">그룹장</p>
                <p class="project-info-content">${ g.nickName }</p>				<!-- 그룹장닉네임 -->
              </li>
              <li>
              	<hr>
                <p class="project-info-label">정원</p>
                <p class="project-info-content">최대 ${ g.max }명</p>				<!-- 최대 30명 -->
              </li>
              <li>
                <p class="project-info-label">신청마감일</p>
                <p class="project-info-content">2023년 04월 12일(수) 21:00</p>		<!-- 별도 설정없는 경우, 모임 시각으로 설정 -->
              </li>
              <li>
                <p class="project-link">
                  <br>
                  <a class="btn btn-primary" target="_blank" href="join.me">참가하기</a> 	<!-- 클릭시, 참가취소 로 변경되게끔! 인원수가 찬 경우, 대기하기로 출력하기 -->
                </p>
              </li>
            </ul>

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