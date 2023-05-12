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
                <div class="avatar" style="float: left;margin-top: 30px;"><img alt="" src="${pageContext.request.contextPath}/resources/images/default_profile.png" class="avatar-image"></div>
                <br> 
            <div class="author">
                <div class="write" style=" font-size: 13px;">${b.memNo} </div>
             
                <div class="board_name">
                    <a href="list.bo" style="color: black;">
                        카테고리 게시판
                    </a>
                </div>
                <div class="date body_font_color_70" style="float: left; 
                font-size: 13px; margin-left: 5px;">${ b.createDate }</div>
                <div class="hit-count body_font_color_70" style="float: left;
                font-size: 13px; margin-left: 10px;">조회수 ${ b.count }</div>
                <div class="tools txt"> 
                <a  type="button" style="margin-right: 10px;float: left; font-size: 13px; margin-left: 5px; color: orange; font-weight: 900;"  onclick="postFormSubmit(1);" >수정</a>
                <a  type="button" style="margin-right: 10px; float: left; font-size: 13px; color: red; font-weight: 900;" onclick="postFormSubmit(2);">지우기</a></div>
            </div>
            
            <form id="postForm" action="" method="post">
            <input type="hidden" name="bno" value="${b.boardNo }">
            <input type="hidden" name="memNo" value="${ loginUser.memNo }">
            </form>
            <script>
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
        <td colspan="3">${ b.boardTitle }</td>
    </tr>
    <tr>
        <th>작성자</th>
        <td>${b.memNo }</td>
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
            <table id="replyArea" class="table" align="center">
                <thead>
                    <%-- <c:choose>
                    	<c:when test="${ empty loginUser }">
		                    <tr>
		                        <th colspan="2">
		                            <textarea class="form-control"  cols="55" rows="2" style="resize:none; width:100%"readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인후 이용바랍니다.</textarea>
		                        </th>
		                        <th style="vertical-align: middle"><button class="btn btn-secondary" disabled>등록하기</button></th>
		                    </tr>
                    	</c:when>
	                    <c:otherwise> --%>
			                    <tr>
			                        <th colspan="2">
			                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
			                        </th>
			                        <th style="vertical-align: middle"><button class="btn btn-secondary" onclick="addReply();">등록하기</button></th>
			                    </tr>
	              <%--       </c:otherwise>
                    </c:choose> --%>
                    
                    
                    <tr>
                       <td colspan="3">댓글 (<span id="rcount">0</span>) fsafs</td> 
                    </tr>
                </thead>
                <tbody>
                   
                </tbody>
            </table>
        </div>
        <br><br>
    </div>
    
    <script>
    	$(function() {
			selectReplyList();  // 화면이 랜더링 되자마자 댓글 조회를 하겠다
			
		})
		
		function addReply() { // 댓글작성용 ajax
			if($("#content").val().trim().length != 0) { //유효한 댓글 작성시 => insert ajax 요청
				
				$.ajax({
					url:"rinsert.bo",
					data:{
						groupBoardNo: ${b.boardNo},
						replyContent: $("#content").val(),
						memNo: '${loginUser.userId}'  //문자열은 이렇게 묶어야함
						
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
				alertify.alert("댓글 작성 후 등록 요청해주세요")
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
    					  		+ "<th>" + list[i].memNo +"</th>"
    					  		+ "<td>" + list[i].replyContent +"</td>"
    					  		+ "<td>" + list[i].enrollDate +"</td>"
    					  		+ "</tr>";
    				
    			 	$("#replyArea tbody").html(value);
    			 	$("#rcount").text(list.length);
    				}
    			}, error:function(){
    				console.log("댓글 조회용 리스트 ajax 통신 실패");
    			}
    		});
			
		}
		
		
    </script>
        </div>
        <br><br>
    </div>
     
    
    
    
            

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>