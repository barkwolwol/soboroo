<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <style>
        
        
        #enrollForm>table * {
            margin: 5px;
        }
        select {
            width: 130px;
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

    #post_subject{
    width: 100%;
    font-size: 20px;
    border: none;
    border-bottom: 2px solid orange;
    border-radius: 0;
    padding: 8px 118px 8px 0;
    line-height: 1.2;
    }
   
*:not(input):not(hr), ::before, ::after {
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
.doz_sys a, .doz_sys a:hover {
    color: #2e3138;
}
.btn {
    font-size: 12px;
}

.write-header .write-btn .btn {
    padding: 6.5px 12px;
    border-radius: 3px;
}
.doz_sys .bg-brand, .btn.save_post, .modal_site_login .btn.btn-primary, .modal_site_join_policy .btn.btn-primary, .modal_site_join .btn.btn-brand, .doz_sys div[doz_type="section"] .widget.board .btn-primary, .review-box .btn-primary, .booking_nav_tools .btn-primary, .doz_sys div[doz_type="section"] .widget.board .comment_section .btn-primary.float_l, .m-special-btn, .goods_summary .btn-primary, .fr-view .btn-primary, .cart-btn-tools .btn-primary {
    background: orange !important;
    border: 1px solid orange !important;
    color: #fff !important;
}
.btn {
    font-size: 12px;
}
.write-header {
    border-bottom: 1px solid rgba(128, 128, 128, 0.3);
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    background: #fff;
    z-index: 111200;
    padding: 17px 21px;
    
}

*:not(input):not(hr), ::before, ::after {
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
    </style>
</head>
<body>
	  <!-- 이쪽에 메뉴바 포함 할꺼임 -->
     <jsp:include page="../common/header.jsp"/>

     <div class="content">
         <br><br>
         <div class="innerOuter">
            <div class="write-header _write_header m_sticky_toolbar">
                <div class="header_line clearfix">
                    <div class="board-name">게시판 수정</div>
                    <div class="write-btn">
                        <a href="/?redirect=no&amp;_gl=1*85vag5*_ga*MzM1NjAwNTU2LjE2ODExODM3NzQ.*_ga_HP37L08LP3*MTY4MTM1Njg5Ny42LjEuMTY4MTM1NjkwMC41Ny4wLjA.&amp;_ga=2.17696893.538490389.1681131221-335600556.1681183774&amp;_gac=1.128724734.1681356898.CjwKCAjwrdmhBhBBEiwA4Hx5gx2E_7atkRGbwQprcGIr3d8ETefLePzl50bzjiwyFTItL4RhIoCxYBoC1GQQAvD_BwE" class="btn btn_style">취소</a>
                        <a href="/" class="icon_style" onclick="POST.postCancel('/');return false;"><i class="btl bt-angle-left"></i></a>
                        <button type="button" class="_save_post save_post btn" onclick="POST.submit();return false;">
                            확인				</button>
                    </div>
                </div>
            </div>
             <br>
 
             <form id="enrollForm" method="post" action="" enctype="">
           
                <div class="left" style="margin-left: 25%; margin-top: 20px; display: inline-block; margin-bottom: 20px; ">
                    <div class="avatar" style="float:left;">
                        <img  src="../../../resources/default_profile.png" class="avatar-image" >
                    </div>
                    <div class="author" style="margin-left: 50px; display: block;">
                        <div class="write" >관리자</div>
                    </div>
                </div>
            
                




             <form action="">
            <div style="width: 50%;margin: auto;">
                 <table style="width: 100%;">
                     <tr>
                         <th>
                            <select style="border-bottom: 2px solid orange;">
                                <option selected>셀렉트박스</option>
                                <option>옵션1</option>
                                <option>옵션2</option>
                                <option>옵션3</option>
                            </select>
                    </th>
                         <td><input id="post_subject" name="subject" class="no-margin basic_input title_name w100p mb24" type="text" value="" placeholder="제목" ></td>
                     </tr>
                    
                     <tr>
                         <th colspan="2"><label for="content" style="margin-top: 30px;">내용</label></th>
                     </tr>
                     <tr style="width: 100%;">
                         <th colspan="2">
                            <textarea id="summernote">Hello Summernote</textarea>
                         </th>
                     </tr>
                 </table>
            </div>
        </form>
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

        $(document).ready(function() {
        $('#summernote').summernote();
        });


     </script>
     <!-- 이쪽에 푸터바 포함할꺼임 -->
     <jsp:include page="../common/footer.jsp"/>
</body>
</html>