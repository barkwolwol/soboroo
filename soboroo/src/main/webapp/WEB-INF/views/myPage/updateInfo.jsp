<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
        </head>
       <!--  <style>
            form {
                max-width: 300px;
                margin: 0;
                background-color: #ffffff;
                padding-bottom: 20px;
                border-radius: 5px;
            }

            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }
        </style> -->

        <body>

                <jsp:include page="../common/header.jsp" />
            
            <div class="body-inner">
				
                 <div id="banner-area" class="banner-area" 
            style="background-image: url()"; 
            background-repeat: no-repeat;>
                    <div class="banner-text">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="banner-heading">
                                        <h1 class="banner-title">마이페이지</h1>
                                    </div>
                                </div><!-- Col end -->
                            </div><!-- Row end -->
                        </div><!-- Container end -->
                    </div><!-- Banner text end -->
                </div><!-- Banner area end -->

                <section id="main-container" class="main-container">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-4 order-1 order-lg-0">

                                <div class="sidebar sidebar-left">
                                    <div class="widget recent-posts">
                                        <h3 class="widget-title">최근 조회한 소모임</h3>
                                        <ul class="list-unstyled">
                                            <li class="d-flex align-items-center">
                                                <div class="posts-thumb">
                                                    <a href="#"><img loading="lazy" alt="img"
                                                            src="${pageContext.request.contextPath}/resources/images/news/news1.jpg"></a>
                                                </div>
                                                <div class="post-info">
                                                    <h4 class="entry-title">
                                                        <a href="#">광진구에서 풋살해요!</a>
                                                    </h4>
                                                </div>
                                            </li><!-- 1st post end-->

                                            <li class="d-flex align-items-center">
                                                <div class="posts-thumb">
                                                    <a href="#"><img loading="lazy" alt="img"
                                                            src="${pageContext.request.contextPath}/resources/images/news/news2.jpg"></a>
                                                </div>
                                                <div class="post-info">
                                                    <h4 class="entry-title">
                                                        <a href="#">안양에서 독서모임 구합니다~</a>
                                                    </h4>
                                                </div>
                                            </li><!-- 2nd post end-->

                                            <li class="d-flex align-items-center">
                                                <div class="posts-thumb">
                                                    <a href="#"><img loading="lazy" alt="img"
                                                            src="${pageContext.request.contextPath}/resources/images/news/news3.jpg"></a>
                                                </div>
                                                <div class="post-info">
                                                    <h4 class="entry-title">
                                                        <a href="#">강남에서 독서모임 하실 분?</a>
                                                    </h4>
                                                </div>
                                            </li><!-- 3rd post end-->

                                        </ul>

                                    </div><!-- Recent post end -->

                                </div><!-- Sidebar end -->
                            </div><!-- Sidebar Col end -->

                            <div class="col-lg-8 mb-5 mb-lg-0 order-0 order-lg-1">

                                <div class="post">

                                    <div class="post-body">
                                        <div class="entry-header">
                                            <h2 class="entry-title">
                                                닉네임 변경
                                            </h2>
                                        </div><!-- header end -->

                                        <div class="entry-content">
                                            <div class="content">
                                                <!-- <br><br> -->
                                                <br>
                                                <!-- <br></br> -->
                                                <div>
                                                    <div>
                                                        <form action="updateNick.my" id="checkNick">
                                                            <div class="mb-3">
                                                                <input type="text" class="form-control"
                                                                    id="exampleInputEmail1" name="memNickname" aria-describedby="emailHelp"
                                                                    style="width: 690px; padding: 5px 10px;" placeholder="변경할 닉네임">
                                                                <div id="nickCheck" class="form-text" style="padding-left: 5px;"></div>
                                                            </div>
                                                    <div class="post-footer">
                                                        <button type="submit" class="btn btn-primary">변경하기</button>
                                                    </div>
                                                    </form>
                                                    </div>
                                                    
                                                    
                                                    <script>
                                                    	$(function(){
                                                    		const $nickInput = $("#checkNick input[name=memNickname]");
                                                    		console.log($nickInput.val());
                                                    		
                                                    		
                                                    		$nickInput.keyup(function(){
                                                    			
                                                    			$.ajax({
                                                    				url:"checkNick.my",
                                                    				data:{checkNick:$nickInput.val()},
                                                    				success:function(result){
                                                    					if(result == "NNNNN"){
                                                    						$("#nickCheck").show();
                                                    						$("#nickCheck").css("color", "#ff8932").text("이미 존재하는 닉네임입니다. 다시 입력해주세요.");
                                                    						
                                                    						$("#checkNick").find(":submit").attr("disabled", true);
                                                    					} else {
                                                    						$("#nickCheck").show();
                                                    						$("#nickCheck").css("color", "#ff8932").text("사용 가능한 닉네임입니다.");
                                                    						
                                                    						$("#checkNick").find(":submit").removeAttr("disabled");
                                                    					}
                                                    					}, error:function(){
                                                    						console.log("ajax 통신 실패!")
                                                    				} 
                                                    			});
                                                    		})
                                                    	})
                                                    </script>
                                                </div>
                                            </div>
                                        </div> <!-- post-body end -->
                                    </div><!-- 3rd post end -->
                                </div>

                                <div class="post">
                                    <div class="entry-header">
                                        <h2 class="entry-title">
                                            자기소개 변경
                                        </h2>
                                    </div><!-- header end -->

                                    <div class="entry-content">
                                        <div class="content">
                                            <!-- <br><br> -->
                                            <br>
                                            <!-- <br></br> -->
                                            <div>
                                                <div>
                                                    <form action="updateIntro.my">
                                                        <div class="mb-3">
                                                            <input type="text" class="form-control"
                                                                id="memIntroduce" name="memIntroduce"  aria-describedby="emailHelp"
                                                                style="width: 690px; padding: 5px 10px;" placeholder="최대 1000자">
                                                        </div>
                                                <div class="post-footer">
                                                    <button type="submit" class="btn btn-primary">변경하기</button>
                                                </div>
                                                </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <!-- post-body end -->
                                </div><!-- 3rd post end -->


                                <div class="post">
                                    <div class="entry-header">
                                        <h2 class="entry-title">
                                            회원 탈퇴
                                        </h2>
                                    </div><!-- header end -->

                                    <div class="entry-content">
                                        <div class="content">
                                            <!-- <br><br> -->
                                            <br>
                                            <!-- <br></br> -->
                                            <div>
                                               <!--  <div>
                                                    <form>
                                                        <div class="mb-3">
                                                            <input type="email" class="form-control"
                                                                id="exampleInputEmail1" aria-describedby="emailHelp"
                                                                style="width: 690px; padding: 5px 10px;" placeholder="비밀번호 입력">
                                                        </div>
                                                </div> -->
                                              <form action="deleteMember.my">
                                                <div class="post-footer">
                                                    <button type="submit" class="btn btn-primary">변경하기</button>
                                                </div>
                                                </div>
                                             </form>
                                            </div>
                                        </div>
                                    </div> <!-- post-body end -->
                                </div><!-- 3rd post end -->
                                <!-- </div> -->



                                <!-- </div> --><!-- Content Col end -->

                            </div><!-- Main row end -->

                        </div><!-- Container end -->
                </section><!-- Main container end -->

                <jsp:include page="../common/footer.jsp" />

            </div><!-- Body inner end -->
        </body>

        </html>