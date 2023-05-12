<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 공지사항 상세보기</title>

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
    </style>
</head>
<body>
	  <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter" align="center">
            <h2>공지사항 상세보기</h2>
            <br>
         </div>   
           
            
            <div style="margin-left: 20%; margin-right: 20%">
                <div class="avatar" style="float: left;margin-top: 30px;"><img alt="" src="${pageContext.request.contextPath}/resources/images/default_profile.png" class="avatar-image"></div>
                <br> 
            <div class="author">
                <div class="write" style=" font-size: 13px;">${ n.ntcWriter }</div>
             
                <div class="board_name">
                    <a href="list.no" style="color: black;">
                        공지사항 게시판
                    </a>
                </div>
                <div class="date body_font_color_70" style="float: left; 
                font-size: 13px; margin-left: 5px;">${ n.ntcCreateDate }</div>
                <div class="hit-count body_font_color_70" style="float: left;
                font-size: 13px; margin-left: 10px;">조회수 ${n.ntcCount }</div>
                <div class="tools txt">
                 <c:if test="${not empty loginUser }"> 
                <a  type="button" style="margin-right: 10px;float: left; font-size: 13px; margin-left: 5px; color: orange; font-weight: 900;"  onclick="postFormSubmit(1);" >수정</a>
                <a  type="button" style="margin-right: 10px; float: left; font-size: 13px; color: red; font-weight: 900;" onclick="postFormSubmit(2);">지우기</a></div>
           		</c:if>
            </div>
            
            <form id="postForm" action="" method="post">
            <input type="hidden" name="nno" value="${ n.ntcNo }">
            <input type="hidden" name="ntcWriter" value="${ loginUser.memNo }">
            </form>
            <script>
            		function postFormSubmit(num) {
						if(num == 1){	//수정하기 클릭시 
							$("#postForm").attr("action", "updateForm.no").submit();
						}else{	//삭제하기 클릭시
							$("#postForm").attr("action", "delete.no").submit();
						}
					}
            	</script>
            <br><br>
            <table id="contentArea" align="center" class="table">
             <tr>
                 <th width="100">제목</th>
                 <td colspan="3">${ n.ntcTitle }</td>
             </tr>
             <tr>
                 <th>작성자</th>
                 <td>${ n.ntcWriter }</td>
                 <th>작성일</th>
                 <td>${ n.ntcCreateDate }</td>
             </tr>
             
             <tr>
                 <th>내용</th>
                 <td colspan="3"></td>
             </tr>
             <tr>
                 <td colspan="4">${ n.ntcContent }</td>
             </tr>
         </table>

            
    

            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
           <div style="margin-right: 50%" >
        <a class="btn btn-secondary" style="float:right" href="list.no">목록으로</a> 
        </div>
        <br><br>
        
    </div>
    </div>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>