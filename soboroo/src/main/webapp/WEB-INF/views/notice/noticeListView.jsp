<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>soboroo | 공지사항</title>
	
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
        
        #searchForm {
            width: 80%;
            margin: auto;
        }
        
        #searchForm>* {
            float: left;
            margin: 5px;
        }
        
        .select {
            width: 20%;
        }
        
        .text {
            width: 53%;
        }
        
        .searchBtn {
            Width: 20%;
        }

 
#topMenu {            
        height: 30px; 
        width: 100%; 
}
#topMenu ul li {              
        list-style: none;          
        color: white;             
        float: left;               
        line-height: 30px;         
        vertical-align: middle;     
        text-align: center;       
}
#topMenu .menuLink {                             
        text-decoration:none;                      
        color: rgb(0, 0, 0);                            
        display: block;                           
        width: 100px;                          
        font-size: 12px;                           
        font-weight: bold;                         
        
}
#topMenu .menuLink:hover {           
        color: orange   ;            
        background-color: #ffffff;  
}

    </style>
</head>
<body>
	  <!-- 이쪽에 헤더바 포함할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
<div id="banner-area" class="banner-area" style="background-image:url(https://rabbitstamp.com/_dj/img/sub_banner_img09.jpg)">
                    <div class="banner-text">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="banner-heading">
                                       
                                    </div>
                                </div><!-- Col end -->
                            </div><!-- Row end -->
                        </div><!-- Container end -->
                    </div><!-- Banner text end -->
                </div><!-- Banner area end -->
    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
      
            

	            <!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
	   	<%-- 	 <c:if test="${not empty loginUser }">  --%>
	   		  <c:if test="${ loginUser.memName eq '관리자' }">  
           		<a class="btn btn-secondary btn-sm" style="float:right" href="notenrollForm.no">글쓰기</a>
              </c:if> 
            <br></br>
            <table id="NoticeList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>글번호</th>
                    <th>작성자</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>조회수</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="n" items="${ list }">
	                    <tr>
	                        <td class="nno" name="nno">${ n.ntcNo }</td>
	                        <td>관리자</td>
	                        <td>${n.ntcTitle}</td>
	                        <td>${n.ntcContent }</td>
	                        <td>${n.ntcCount }</td>
	                        <td>${n.ntcCreateDate }</td>
	                    </tr>

                       </c:forEach>
                </tbody>
            </table>
            <br>
		<script>
          		$(function() {
					$("#NoticeList>tbody>tr").click(function() {
						location.href='detail.no?nno=' + $(this).children(".nno").text();
					})
				})
          	</script>
			
            <div id="pagingArea">
                  <ul class="pagination">
                      	  
                      	  <c:choose>
	                      	  <c:when test="${ pi.currentPage eq 1 }">
		                           <li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
		                      </c:when> 
		                      <c:otherwise>
		                           <li class="page-item"><a class="page-link" href="list.no?cpage=${ pi.currentPage - 1 }">Previous</a></li>
		                      </c:otherwise>
                          </c:choose>
                          
                          
                          
                          <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                          	<li class="page-item"><a class="page-link" href="list.no?cpage=${ p }">${ p }</a></li>
                          </c:forEach>
                          
                          
                          <c:choose>
                          	  <c:when test="${pi.currentPage eq pi.maxPage }">
	                          	  <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
	                          </c:when>
	                          <c:otherwise>
	                          	  <li class="page-item"><a class="page-link" href="list.no?cpage=${ pi.currentPage + 1 }">Next</a></li>
	                          </c:otherwise>
                          </c:choose>
                          
                          
                  </ul>
              </div>
           
           
            <br clear="both"><br>
            

           
            <br><br>
        </div>
        <br><br>
    </div>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>