<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 게시글 상세보기</title>

	<!-- Favicon
	================================================== -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
	
	<!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        table * {
            margin: 5px;
        }
        
        table {
            width: 100%;
        }
        .avatar {
    display: table-cell;
    padding-right: 16px;
    vertical-align: top;
    }
    .avatar-image {
    border-radius: 50%;
    width: 40px;
    height: 40px;
    }   
    .board_name {
    float: left;
    font-size: 13px;
    }
    .board_view .board_name {
    font-size: 12px;
    margin-right: 10px;
    }   
    .board_summary .author .date {
    margin-right: 10px;
}
.board_summary .author .hit-count {
    display: inline-block;
    font-size: 13px;
    margin-right: 10px;
}
.board_summary .tools.txt {
    display: block;
}

.board_summary .tools {
    float: right;
    font-size: 13px;
    display: none;
}
   table * {
        margin: 5px;
    }
    
    table {
        width: 100%;
    }
    </style>
</head>
<body>
	  <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter" align="center">
            <h2>게시글 상세보기</h2>
            <br>
         </div>   
           
            
            <div style="margin-left: 20%; margin-right: 20%">
                <div class="avatar" style="float: left;margin-top: 30px;"><img class="avatar-image" src="${b.memImg}" ></div>
                <br> 
            <div class="author" style="margin-top:2%;">
                <div class="write" style=" font-size: 13px;">${b.memNickname} </div>
             
                <div class="board_name">
                    <a href="list.bo?category=0" style="color: black;">
                        카테고리 게시판
                    </a>
                </div>
                <div class="date body_font_color_70" style="float: left; 
                font-size: 13px; margin-left: 5px;">${ b.createDate }</div>
                <div class="hit-count body_font_color_70" style="float: left;
                font-size: 13px; margin-left: 10px;">조회수 ${ b.count }</div>
	        <c:if test="${not empty loginUser }"> 
                <div class="tools txt"> 
                <c:if test="${b.memNickname eq loginUser.memNickname }">
	                <a  type="button" style="margin-right: 10px;float: left; font-size: 13px; margin-left: 5px; color: orange; font-weight: 900;"  onclick="postFormSubmit(1);" >수정</a>
	                <a  type="button" style="margin-right: 10px; float: left; font-size: 13px; color: red; font-weight: 900;" onclick="postFormSubmit(2);">지우기</a>
	            </c:if>
	            <c:if test="${b.memNickname ne loginUser.memNickname }">
	            	<a  type="button" style="margin-right: 10px; float: left; font-size: 13px; color: red; font-weight: 900;" id="test1">신고</a>
                </c:if>
                </div>
            </c:if>
         
            </div>
            
            <form id="postForm" action="" method="post">
            <input type="hidden" name="bno" value="${b.boardNo }" data-boardNo="${b.boardNo }">
            <input type="hidden" name="memNo" value="${ loginUser.memNo }" data-memNo="${ b.memNo }">
            </form>
            <script>
            		function test01(){
            			$("#test11").click();
            			
            		}
            
            
            		function postFormSubmit(num) {
						if(num == 1){	//수정하기 클릭시 
							$("#postForm").attr("action", "updateForm.bo").submit();
						}else{	//삭제하기 클릭시
							$("#postForm").attr("action", "delete.bo").submit();
						}
					}
            	</script>
   <br><br>
   <table id="contentArea" align="center" class="table">
    <tr>
        <th width="100">카테고리</th>
        <td colspan="3">${ b.category }</td>
    </tr>
    
    <tr>
        <th width="100">제목</th>
        <td colspan="3" data-title="${b.boardTitle }">${ b.boardTitle }</td>
    </tr>
    <tr>
        <th>작성자</th>
        <td data-nickname="${b.memNickname }">${b.memNickname }</td>
        <th>작성일</th>
        <td>${ b.createDate }</td>
    </tr>
    
    <tr>
        <th>내용</th>
        <td colspan="3"></td>
    </tr>
    <tr>
        <td colspan="4">${ b.boardContent }</td>
    </tr>
    
</table>

              <div style="margin-right: 50%" >
        <a class="btn btn-secondary" style="float:right" href="list.bo?category=0">목록으로</a>
    </div>   
    
<br><br><br><br>
            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <form>
            <table id="replyArea" class="table" align="center">
                <thead>
                     <c:choose>
                    	<c:when test="${ empty loginUser }">
		                    <tr>
		                        <th colspan="2">
		                            <textarea class="form-control"  cols="55" rows="2" style="resize:none; width:100%"readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인후 이용바랍니다.</textarea>
		                        </th>
		                        <th style="vertical-align: middle"><button class="btn btn-secondary" disabled>등록하기</button></th>
		                    </tr>
                    	</c:when>
	                    <c:otherwise> 
			                    <tr>
			                        <th colspan="2">
			                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
			                        </th>
			                        <th style="vertical-align: middle"><button  type="button" class="btn btn-secondary" onclick="addReply();" id="enrollButton">등록하기</button></th>
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
            
            </form>
        </div>
        <br><br>
    </div>
 
   
        <br><br>
 
       
    <script>

		
	$(function() {
		selectReplyList();  // 화면이 랜더링 되자마자 댓글 조회를 하겠다
	})

	
	function addReply() { // 댓글작성용 ajax
		//console.log("dsadsada");
		if($("#content").val().trim().length != 0) { //유효한 댓글 작성시 => insert ajax 요청
			
			$.ajax({
				url:"rinsert.bo",
				data:{
					groupBoardNo: ${b.boardNo},
					replyContent: $("#content").val(),
					memNo: '${loginUser.memNo}'  //문자열은 이렇게 묶어야함
					
				}, success:function(status){
					if(status == "success"){
						selectReplyList();
						$("#content").val("");
					}
				}, error:function(){
					console.log("댓글 작성용 ajax 통신 실패!");
				}
			})
		}else{
			alert("댓글 작성 후 등록 요청해주세요")
		}
	}
	
	function selectReplyList() {	//해당 게시글에 딸린 댓글리스트 조회용 ajax
		$.ajax({
			url:"rlist.bo",
			data:{bno:${b.boardNo}},
			success: function(list){
				console.log(list);
				
				let value = "";
				for(let i in list){
					value += "<tr>"
					  		+ "<th>" + list[i].memNickname +"</th>"
					  		+ "<td>" + list[i].replyContent +"</td>"
					  		+ "<td>" + list[i].enrollDate +"</td>"
					  		+ "</tr>";
					  		value += selectReplyComment(list[i].replyNo);
				
				}
			 	$("#replyArea tbody").html(value);
			 	$("#rcount").text(list.length);
			}, error:function(){
				console.log("댓글 조회용 리스트 ajax 통신 실패");
			}
		});
		
	}
	// 대댓글
	function selectReplyComment(replyNo){
		$.ajax({
			url:"Relist.bo",
			data:{bno:${b.boardNo}},
			async:false,
			success: function(list){
				console.log(list);
				//대댓글
				let values = "";
				for(let i in list){
					values += "<tr>"
					  		+ "<th>" + list[i].memNickname +"</th>"
					  		+ "<td>" + list[i].replyContent +"</td>"
					  		+ "<td>" + list[i].enrollDate +"</td>"
					  		+ "</tr>";
				
				}
			 	return values;
			}, error:function(){
				console.log("댓글 조회용 리스트 ajax 통신 실패");
			}
		});
	}
		
    </script>
    
    <script>
    
    $(function(){
    	$("#enrollButton").on("click", function(){
    		 var memNickname = "${loginUser.memNickname}";

             var memNo = "${b.memNo}";
             
             console.log(memNickname);
             console.log(memNo);

             $.ajax({
                 type: "post",
                 data: { "memNo": memNo },
                 url: "findNick.my",
                 dataType: 'json',
                 success: function(data) {
                     var writer = data.memNickname; // memNickname을 받아와서 writer에 할당합니다.
                     var tableNo = 10;
                     var groupNo = "${b.boardNo}";
                     var title = "${b.boardTitle}";
                     var alertType = 2;
                     var alertContent = memNickname + "님이 회원님의 " + title + " 게시글에 댓글을 남겼습니다.";
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
                         url: "saveReplyAlert.my",
                         contentType: "application/json; charset=utf-8",
                         dataType: 'text',
                         success: function(data) {
                             console.log(data);
                             if (socket) {
                                 var socketMsg = "reply," + memNickname + "," + writer + "," + title;
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
    
    <script>
    $(function(){
    	$("#test1").on("click", function(){
    		if(confirm("게시글을 신고하시겠습니까?")==true){
    		console.log('ㅎㅇ');
    		
    		 var memNickname = "${loginUser.memNickname}";

             var memNo = "${b.memNo}";
             
             console.log(memNickname);
             console.log(memNo);

             $.ajax({
                 type: "post",
                 data: { "memNo": memNo },
                 url: "findNick.my",
                 dataType: 'json',
                 success: function(data) {
                     var writer = data.memNickname; // memNickname을 받아와서 writer에 할당합니다.
                     var tableNo = 10;
                     var groupNo = "${b.boardNo}";
                     var title = "${b.boardTitle}";
                     var alertType = 3;
                     var alertContent = "회원님의 " + title + " 게시글이 신고되었습니다.";
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
                         url: "saveReplyAlert.my",
                         contentType: "application/json; charset=utf-8",
                         dataType: 'text',
                         success: function(data) {
                             console.log(data);
                             if (socket) {
                                 var socketMsg = "report," + memNickname + "," + writer + "," + title;
                                 console.log("msgmsg: " + socketMsg);
                                 // $("#socketMessageDiv").text(socketMsg);
                                 socket.send(socketMsg);
                                 console.log('socketMsg 보냄');
                                 alert("신고되었습니다.")
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
            
    	} else {
    		return false;
    	}
    	 });
     });

    </script>
     
	    <!-- Button trigger modal -->
	<button style="visibility: hidden;" id="test11" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
	  Launch demo modal
	</button>
	
	<!-- Modal -->
	<%-- 
	<div   class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">게시글 신고</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	       <form action="report.bo">
	      <div class="modal-body">
	       		게시글 신고하시겠습니까?
	       	<input type="hidden" name="boardNo" value="${ b.boardNo }"/>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        <button type="submit" class="btn btn-primary" id="reportBoard">확인</button>
	      </div>
	      
	       </form>
	    </div>
	  </div>
	</div> --%>
	
<!-- 	<script>
    $(function(){
    	$("#test").on("click", function(){
    		console.log('ㅎㅇ');
    		
    		 var memNickname = "${loginUser.memNickname}";

             var memNo = "${b.memNo}";
             
             console.log(memNickname);
             console.log(memNo);

             $.ajax({
                 type: "post",
                 data: { "memNo": memNo },
                 url: "findNick.my",
                 dataType: 'json',
                 success: function(data) {
                     var writer = data.memNickname; // memNickname을 받아와서 writer에 할당합니다.
                     var tableNo = 10;
                     var groupNo = "${b.boardNo}";
                     var title = "${b.boardTitle}";
                     var alertType = 3;
                     var alertContent = "회원님의 " + title + " 게시글이 신고되었습니다.";
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
                         url: "saveReplyAlert.my",
                         contentType: "application/json; charset=utf-8",
                         dataType: 'text',
                         success: function(data) {
                             console.log(data);
                             if (socket) {
                                 var socketMsg = "report," + memNickname + "," + writer + "," + title;
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

    </script> -->
    
            

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>