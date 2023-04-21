<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
           
            
            <div style="margin-left: 25%;">
                <div class="avatar" style="float: left;margin-top: 15px;"><img alt="" src="../../../resources/default_profile.png" class="avatar-image"></div>
                <br>
            <div class="author">
                <div class="write" style=" font-size: 13px;">관리자</div>
                <div class="board_name">
                    <a href="" style="color: black;">
                        카테고리 게시판
                    </a>
                </div>
                <div class="date body_font_color_70" style="float: left; 
                font-size: 13px; margin-left: 5px;">1일전</div>
                <div class="hit-count body_font_color_70" style="float: left;
                font-size: 13px; margin-left: 10px;">조회수 3</div>
                <div class="tools txt"><a href="" style="margin-right: 10px;float: left;
                    font-size: 13px; margin-left: 5px; color: black;" >수정</a>
                    <a href="javascript:;" onclick="" style="margin-right: 10px; float: left;
                    font-size: 13px; color: black;">지우기</a></div>
            </div>

            <div   style=" width: 100%;  height: 100% ;margin-top: 50px;">
                <div style="width: 100%; height: 100%;">
                  
                    <tr>
                        <td colspan="4"><p style="height:150px">피자가 먹고싶네오</p></td>
                    </tr>
                </div>
            </div>
        </div>


            
    

            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <table id="replyArea" class="table" align="center" style="width: 50%;">
                <thead>
                   
                    
                    <tr>
                       <td colspan="3">댓글 (<span id="rcount">3</span>) </td> 
                    </tr>
                </thead>
                
                <tbody>
                    <tr>
                        <th>user02</th>
                        <td>댓글입니다.너무웃기다앙</td>
                        <td>2023-03-03</td>
                    </tr>
                    <tr>
                        <th>user01</th>
                        <td>많이봐주세용</td>
                        <td>2023-01-08</td>
                    </tr>
                    <tr>
                        <th>admin</th>
                        <td>댓글입니다ㅋㅋㅋ</td>
                        <td>2022-12-02</td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
                        </th>
                        <th style="vertical-align: middle"><button class="btn btn-secondary">등록하기</button></th>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br>
        <div style="margin-right: 50%" >
        <a class="btn btn-secondary" style="float:right" href="">목록으로</a>
    </div>
    </div>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>