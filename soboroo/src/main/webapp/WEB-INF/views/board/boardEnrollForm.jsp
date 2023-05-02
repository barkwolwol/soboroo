<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>soboroo | 게시글 등록</title>
      
		<!-- Favicon
		================================================== -->
	    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
   
        <!-- include libraries(jQuery, bootstrap) -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

        <!-- 이쪽에 헤더바 포함할꺼임 -->
        <jsp:include page="../common/header-2.jsp" />
        

        <!-- include summernote css/js -->
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

            <style>
            #enrollForm>table * {
                margin: 5px;
            }

            select {
                width: 150px;
                /* 원하는 너비설정 */
                padding: .5em .5em;
                /* 여백으로 높이 설정 */
                font-family: inherit;
                /* 폰트 상속 */
                background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 100% 50%;
                /* 네이티브 화살표 대체 */
                border: 0px;
                border-radius: 0px;
                /* iOS 둥근모서리 제거 */
                -webkit-appearance: none;
                /* 네이티브 외형 감추기 */
                -moz-appearance: none;
                appearance: none;
                border-bottom: 2px solid orange;
            }

            #post_subject {
                width: 100%;
                font-size: 20px;
                border: none;
                border-bottom: 2px solid orange;
                border-radius: 0;
                padding: 0px 118px 8px 0;
                line-height: 1.6;
            }

            *:not(input):not(hr),
            ::before,
            ::after {
                border-width: 0;
                border-style: solid;
                border-color: #e5e7eb;
            }

            .write-header .write-btn {
                float: right;
            }

            .write-header .board-name {
                font-size: 20px;
                float: left;
                font-weight: 900;
                color: #4a4a4a;
                margin-left: 18%;
            }


            .write-header .write-btn a.btn_style {
                background: #fff;
                border: 1px solid #d3d3d3;
                color: #4a4a4a;
                margin-right: 5px;
            }

            .write-header .write-btn .btn {
                padding: 6.5px 12px;
                border-radius: 3px;
            }

            .doz_sys a,
            .doz_sys a:hover {
                color: #2e3138;
            }

            .btn {
                font-size: 12px;
            }

            .write-header .write-btn .btn {
                padding: 6.5px 12px;
                border-radius: 3px;
            }

            .doz_sys .bg-brand,
            .btn.save_post,
            .modal_site_login .btn.btn-primary,
            .modal_site_join_policy .btn.btn-primary,
            .modal_site_join .btn.btn-brand,
            .doz_sys div[doz_type="section"] .widget.board .btn-primary,
            .review-box .btn-primary,
            .booking_nav_tools .btn-primary,
            .doz_sys div[doz_type="section"] .widget.board .comment_section .btn-primary.float_l,
            .m-special-btn,
            .goods_summary .btn-primary,
            .fr-view .btn-primary,
            .cart-btn-tools .btn-primary {
                background: orange !important;
                border: 1px solid orange !important;
                color: #fff !important;
            }

            .btn {
                font-size: 12px;
            }

            .write-header {
                border-bottom: 1px solid rgba(128, 128, 128, 0.3);
                /* position: fixed; */
                left: 0;
                top: 0;
                width: 100%;
                background: #fff;
                z-index: 111200;
                padding: 17px 21px;
                margin: auto;

            }

            *:not(input):not(hr),
            ::before,
            ::after {
                border-width: 0;
                border-style: solid;
                border-color: #e5e7eb;
            }

            .board_summary .author {
                display: inline-block;
            }

            .board_summary .author {
                display: table-cell;
                vertical-align: middle;
                overflow: hidden;
                line-height: 1.2;
                text-align: left;
            }

            .avatar-image {
                border-radius: 50%;
                width: 40px;
                height: 40px;
            }

            .board_write .left {
                width: 100%;
                max-width: 300px;
                float: left;
                position: relative;
                z-index: 100;

            }

            .board_summary .left {
                float: left;
                padding: 8px 0 20px;
                display: table;
            }

               
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
}


        </style>
    </head>
    
    <body>
        
        
   

        


        <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
            <div class="content">
                <br><br>
                <div class="innerOuter">
                    <div class="write-header _write_header m_sticky_toolbar">
                        <div class="header_line clearfix">
                            <div class="board-name">게시판 작성</div>
                            <div class="write-btn" style="margin-right: 20%;">
                                <a onclick="history.back()"
                                    class="btn btn_style">취소</a>
                                <a href="/" class="icon_style" onclick="POST.postCancel('/');return false;">
                                    <i class="btl bt-angle-left"></i></a>
                                <button type="button" class="_save_post save_post btn"onclick="POST.submit();return false;">작성 </button>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="left"
                        style="margin-left: 20%; margin-top: 20px; display: inline-block; margin-bottom: 20px; ">
                        <div class="avatar" style="float:left;">
                            <img src="${pageContext.request.contextPath}/resources/images/default_profile.png"
                                class="avatar-image">
                        </div>
                        <div class="author" style="margin-left: 50px; display: block;">
                            <div class="write">관리자</div>
                        </div>
                    </div>

                </div>
</div>

                    <div style="width: 50%; margin-left: 20%;">
                        <table style="width: 100%;">
                            <tr>
                                <th>
                                    <select style="border-bottom: 2px solid orange;">
                                        <option>선택</option>
                                        <option value="1">교육/어학</option>
                                        <option>취업/자격증</option>
                                        <option>여행</option>
                                        <option>스포츠/운동</option>
                                        <option>요리/음식</option>
                                        <option>문화/예술</option>
                                        <option>영화/음악</option>
                                        <option>기타</option>
                                    </select>
                                </th>

                                <td>
                                    <input id="post_subject" name="subject"
                                        class="no-margin basic_input title_name w100p mb24" type="text" value=""
                                        placeholder="제목">
                                    </td>
                            </tr>

                            <tr>
                                <th colspan="2"><label for="content" style="margin-top: 30px;"></label></th>
                            </tr>
                            <tr >
                                <th colspan="2">
                                    <textarea class="form-control" name="content" rows="3" id="content"></textarea>
                                </th>
                            </tr>
                            
                        </table>
                        

                        <div class="header_line clearfix">
                            <div class="write-btn" style="margin-left: 110%;">
                                <a onclick="history.back()"
                                    class="btn btn_style" style="float:left;  border: 1px solid #d3d3d3; margin-right: 5px;color: #4a4a4a; ">취소</a>
                                <a href="/" class="icon_style" onclick="POST.postCancel('/');return false;">
                                    <i class="btl bt-angle-left"></i></a>
                                <button type="button" class="_save_post save_post btn"onclick="POST.submit();return false;">작성 </button>
                            </div>
                        </div>

                    </div>

                    <br>

                    <!-- <div align="center">
                     <button type="submit" class="btn btn-primary">등록하기</button>
                     <button type="reset" class="btn btn-danger">취소하기</button>
                 </div> -->
        </form>
        </div>
        <br><br>
        </div>
        <script>
           $(function(){
         var editor = $('#content').summernote({
        height: 500,
        width : 1000,
        minHeight: null,
        maxHeight: null,
        focus: true,
        toolbar: [
            // [groupName, [list of button]]
            ['style', ['style']],
            ['style', ['bold', 'italic', 'underline']],
            ['fontname', ['fontname']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['insert', ['link', 'picture', 'video','hr']],
            ['height', ['height']],
            ['view', ['fullscreen', 'codeview', 'help','undo','redo']]
        ],
        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
        callbacks: {
          onImageUpload : function(files){
        
            sendFile(files[0],this);
          }
        }
    })
     });

     
     function sendFile(file, editor){
    const form_data = new FormData();
    form_data.append('file',file);
        
    $.ajax({
    	data: form_data,
    	type:"POST",
    	url :"insertImg.co",
    	cache : false,
    	contentType : false,
    	enctype : "multipart/form-data",
    	processData : false,
    	success : function(url){
    		$(editor).summernote('insertImage', url, function($image){
    			$image.css("width", "50%");
    		})
    	}, error:function(){
    		console.log("ajax 통신 실패!");
    	}
    })	
    
    
}


        </script>


        <!-- 이쪽에 푸터바 포함할꺼임 -->
        <jsp:include page="../common/footer.jsp" />
    </body>

    </html>