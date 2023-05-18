<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>soboroo | 오프라인 반짝모임</title>
	<!-- Favicon
	================================================== -->
  	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">
    <link rel="stylesheet" href="https://static.onoffmix.com/css/pc/event/event-search.css">
    <link rel="stylesheet" href="resources/css/listStyle.css">

  	
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div id="banner-area" class="banner-area" style="background-image:url(${pageContext.request.contextPath}/resources/images/banner/with2.jpg)">
  <div class="banner-text">
    <div class="container">
        <div class="row">
          <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title">오프라인 모임</h1>
                <!-- <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                      <li class="breadcrumb-item"><a href="#">Home</a></li>
                      <li class="breadcrumb-item"><a href="#">Services</a></li>
                      <li class="breadcrumb-item active" aria-current="page">All Services</li>
                    </ol>
                </nav> -->
              </div>
          </div><!-- Col end -->
        </div><!-- Row end -->
    </div><!-- Container end -->
  </div><!-- Banner text end -->
</div><!-- Banner area end --> 

<section id="main-container" class="main-container pb-2">
  <div class="container">
    <div style="text-align: right">
      <c:if test="${ not empty loginUser }">
        <a class="btn btn-primary" href="enrollOfflineGroupOne.go">새로운 모임</a>
      </c:if>
    </div>
  </div>
</section>

<main id="content" class="event_search">
  <div class="content_wrapping wide_max_width_area">
    <!-- keyword search area -->
    <section class="keyword_search_area">
      <form name="searchBoxEventForm" action="/event?s=" origaction="https://www.onoffmix.com/event?s="
        class="keyword_search_form" origtarget="">
        <input type="hidden" name="pageRows" value="12" _default="12" _search="12">
        <input type="hidden" name="page" value="1" id="page">
        <input type="hidden" id="sort-category" value="categoryIdx|ASC">
        <input type="hidden" name="order" value="popularity">
        <input type="hidden" name="searchAll" value="">
        <input type="hidden" name="research" value="">
        <input type="hidden" name="search_date" id="search_date" value="">
        <input type="hidden" name="exclude" value="">
        <input type="hidden" name="getPinCount" value="true">
        <input type="hidden" name="getAttendCount" value="true">
        <input type="hidden" name="blockAbuse" value="true">
        <input type="hidden" name="nowRecruitingEvent" value="">
        <input type="hidden" name="IngData" value="">
        <input type="hidden" name="order_gubun" value="N">
        <input type="hidden" id="endEventPage" value="">
        <input type="hidden" id="totalEventPage" value="">
        <input type="hidden" name="page_gubun" id="page_gubun" value="">
        <input type="hidden" name="eof" id="eof" value="0">

        <!-- data reset -->
        <div class="search_form_top">
          <h3 class="sub_title">상세검색</h3>

          <input type="reset" class="btn_reset " id="reset" value="초기화" rel="">
        </div>

        <input type="hidden" id="hostNumber" name="u" value="">

        <!-- category -->
        <fieldset class="filter_category_area" style="opacity: 1;">
          <button class="btn_open" type="button">모임</button>
          <span class="check_value" title="세미나/컨퍼런스">세미나/컨퍼런스</span>

          <div class="check_area" css="check_area">
            <ul class="category_check ">
              <li>
                <input type="checkbox" id="interest_category_01" class="BtnForm" name="category" value="085">
                <label for="interest_category_01">교육</label>
                <!-- <span class="count cate cate_085">(1,508)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_02" class="BtnForm checked" checked="" name="category"
                  value="087">
                <label for="interest_category_02">세미나/컨퍼런스</label>
                <!-- <span class="count cate cate_087">(228)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_03" class="BtnForm" name="category" value="086">
                <label for="interest_category_03">강연</label>
                <!-- <span class="count cate cate_086">(89)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_04" class="BtnForm" name="category" value="090">
                <label for="interest_category_04">취미/소모임</label>
                <!-- <span class="count cate cate_090">(178)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_05" class="BtnForm" name="category" value="088">
                <label for="interest_category_05">문화/예술/방송</label>
                <!-- <span class="count cate cate_088">(62)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_06" class="BtnForm" name="category" value="092">
                <label for="interest_category_06">공모전</label>
                <!-- <span class="count cate cate_092">(167)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_07" class="BtnForm" name="category" value="093">
                <label for="interest_category_07">전시/박람회</label>
                <!-- <span class="count cate cate_093">(22)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_08" class="BtnForm" name="category" value="095">
                <label for="interest_category_08">이벤트/파티</label>
                <!-- <span class="count cate cate_095">(20)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_09" class="BtnForm" name="category" value="094">
                <label for="interest_category_09">패션/뷰티</label>
                <!-- <span class="count cate cate_094">(4)</span> -->
              </li>
              <li>
                <input type="checkbox" id="interest_category_10" class="BtnForm" name="category" value="096">
                <label for="interest_category_10">기타</label>
                <!-- <span class="count cate cate_096">(389)</span> -->
              </li>
            </ul>
            <div class="button_area">
              <div class="btn_wrap">
                <button type="button" class="btn_check"
                  data-gtm_click="{&quot;event&quot; : &quot;clickAdvancedSearchButton&quot;}">적용</button>
              </div>
            </div>
          </div>
        </fieldset>

        <!-- area -->
        <fieldset class="filter_area">
          <button class="btn_open" type="button">지역</button>
          <span class="check_value" title=""></span>

          <div class="check_area">
            <ul class="area_check  ">
              <li>
                <input type="checkbox" id="interest_area_01" name="region" class="BtnForm" value="02">
                <label for="interest_area_01">서울</label>
                <span class="count region_02">(137)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_02" name="region" class="BtnForm" value="051,052,054">
                <label for="interest_area_02">부산/울산/경남</label>
                <span class="count region_051">(4)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_03" name="region" class="BtnForm" value="032,031">
                <label for="interest_area_03">인천/경기</label>
                <span class="count region_032">(23)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_04" name="region" class="BtnForm" value="042,043,041,044">
                <label for="interest_area_04">대전/충청/세종</label>
                <span class="count region_042">(5)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_05" name="region" class="BtnForm" value="062,063,061">
                <label for="interest_area_05">광주/전라</label>
                <span class="count region_062">(1)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_06" name="region" class="BtnForm" value="033">
                <label for="interest_area_06">강원</label>
                <span class="count region_033">(1)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_07" name="region" class="BtnForm" value="053,055">
                <label for="interest_area_07">대구/경북</label>
                <span class="count region_053">(3)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_08" name="region" class="BtnForm" value="064">
                <label for="interest_area_08">제주</label>
                <span class="count region_064">(1)</span>
              </li>
              <li>
                <input type="checkbox" id="interest_area_09" name="region" class="BtnForm" value="00">
                <label for="interest_area_09">기타지역</label>
                <span class="count region_00">(53)</span>
              </li>
            </ul>
            <div class="button_area">
              <div class="btn_wrap">
                <button type="button" class="btn_check"
                  data-gtm_click="{&quot;event&quot; : &quot;clickAdvancedSearchButton&quot;}">적용</button>
              </div>
            </div>
          </div>
        </fieldset>
        <!-- Time -->
        <fieldset class="filter_time_pay_type">
          <button class="btn_open" type="button">시간/비용</button>
          <span class="check_value" title=""></span>

          <div class="check_area">
            <ul class="pay_check">
              <li>
                <input type="checkbox" id="pay" name="isFree" value="N">
                <label for="pay">유료</label>
                <span class="count free_N">(64)</span>

              </li>
              <li>
                <input type="checkbox" id="free" name="isFree" value="Y">
                <label for="free">무료</label>
                <span class="count free_Y">(164)</span>
              </li>
            </ul>
            <ul class="time_check">
              <li>
                <input type="checkbox" id="time_dw" name="eventStartTimeSpan" value="time_dw">
                <label for="time_dw" data-exp="(00시 ~ 08시)">새벽</label>
              </li>
              <li>
                <input type="checkbox" id="time_am" name="eventStartTimeSpan" value="time_am">
                <label for="time_am" data-exp="(08시 ~ 12시)">오전</label>
              </li>
              <li>
                <input type="checkbox" id="time_pm" name="eventStartTimeSpan" value="time_pm">
                <label for="time_pm" data-exp="(12시 ~ 18시)">오후</label>
              </li>
              <li>
                <input type="checkbox" id="time_ev" name="eventStartTimeSpan" value="time_ev">
                <label for="time_ev" data-exp="(18시 ~ 00시)">저녁</label>
              </li>
            </ul>
            <ul class="week_check">
              <li>
                <input type="checkbox" id="interest_time_02" name="eventStartWeekday" class="BtnForm" value="weekdays">
                <label for="interest_time_02">주중</label>
              </li>
              <li>
                <input type="checkbox" id="interest_time_04" name="eventStartWeekday" class="BtnForm" value="weekend">
                <label for="interest_time_04">주말</label>
              </li>
            </ul>

            <div class="button_area">
              <div class="btn_wrap">
                <button type="button" class="btn_check"
                  data-gtm_click="{&quot;event&quot; : &quot;clickAdvancedSearchButton&quot;}">적용</button>
              </div>
            </div>
          </div>
        </fieldset>

        <!-- search_scope -->
        <fieldset class="filter_search_scope">
          <button class="btn_open" type="button">검색영역</button>
          <span class="check_value" title=""></span>

          <div class="check_area">
            <ul class="scope_check">
              <li>
                <input type="checkbox" id="scope_check_01" name="search_type" value="evt_title">
                <label for="scope_check_01">제목영역</label>
              </li>
              <li>
                <input type="checkbox" id="scope_check_02" name="search_type" value="evt_founder">
                <label for="scope_check_02">개설자 이름</label>
              </li>
              <li>
                <input type="checkbox" id="scope_check_03" name="search_type" value="evt_tag">
                <label for="scope_check_03">태그영역</label>
              </li>
            </ul>
            <div class="button_area">
              <div class="btn_wrap">
                <button type="button" class="btn_check"
                  data-gtm_click="{&quot;event&quot; : &quot;clickAdvancedSearchButton&quot;}">적용</button>
              </div>
            </div>
          </div>
        </fieldset>

        <!-- event_date -->
        <fieldset class="filter_event_date">
          <button id="eventDate" class="btn_open" type="button" value="모임기간">모임기간</button>
        </fieldset>

        <!-- search -->
        <fieldset class="search_area">
          <input type="text" id="keywordSearch" name="sub_search" class="keyword_search" placeholder="검색어 입력"
            title="검색어 입력">
          <input type="text" style="display: none">

          <button type="button" class="btn_keyword_search"
            data-gtm_click="{&quot;event&quot; : &quot;clickAdvancedSearchButton&quot;}">검색</button>
        </fieldset>

        <!-- end event -->
        <!-- <fieldset class="end_event">
          <input type="checkbox" class="endEvent" id="out_time_data" name="out_time_data" value="Y">
          <label for="out_time_data">종료된 모임 포함</label>
        </fieldset> -->

        <!-- search word area -->
        <div class="search_word_area"></div>
      </form>
    </section>

    <section class="event_main_area">
      <div class="title_bar" style="">
        <ul class="sort_menu">
          <li><a class="popularity active">인기순</a></li>
          <li><a class="latest ">최신순</a></li>
          <li><a class="soon ">마감임박순</a></li>
        </ul>
      </div>

      <ul class="event_lists thumbnail_mode">
        <c:forEach var="ogo" items="${ list }">
          <li>
            <article class="event_area event_main">
              <a href="detail.go?tableNo=${ ogo.tableNo }&no=${ ogo.no }">
                <div class="event_thumbnail">
                  <c:choose>
                    <c:when test="${ ogo.thumbnail eq 'resources/uploadFiles/' }">
                      <img loading="lazy" src="resources/images/logo_3.png">
                    </c:when>
                    <c:otherwise>
                      <img loading="lazy" src="${ ogo.thumbnail }">
                    </c:otherwise>
                  </c:choose>
                </div>
                <div class="event_info_area">
                  <div class="title_area">
                    <h5 class="title ellipsis">${ ogo.title }</h5>
                  </div>
        
                  <div class="event_info">
                    <div class="type_info">
                      <span>조회수 ${ ogo.count }</span>
                      <span class="payment_type free">${ ogo.categoryTitle }</span>
                    </div>
                    <div class="date">6.30 (금)</div>
                  </div>
        
                  <div class="list_event_tags">
                    <span class="tag" data-tag_link="%23%EB%B6%80%EB%8F%99%EC%82%B0">#부동산</span><span class="tag"
                      data-tag_link="%23%EC%9E%AC%ED%85%8C%ED%81%AC">#재테크</span><span class="tag"
                      data-tag_link="%23%EB%95%85%ED%86%A0%EC%A7%80%ED%88%AC%EC%9E%90">#땅토지투자</span><span class="tag"
                      data-tag_link="%23%EC%83%81%EA%B0%80%EB%B9%8C%EB%94%A9%EA%B2%BD%EB%A7%A4%EC%84%B8%EA%B8%88">#상가빌딩경매세금</span><span
                      class="tag"
                      data-tag_link="%23%EC%98%88%EC%88%A0%EA%B1%B4%EC%84%A4%EA%B5%90%EC%9C%A1%EA%B0%95%EC%9D%98%ED%8A%B9%EA%B0%95">#예술건설교육강의특강</span>
                  </div>
                </div>
              </a>
            </article>
          </li>
        </c:forEach>
      </ul>
    </section>
  </div>
</main>

<div class="pagination_wrap">
  <div class="pagination">
    <c:choose>
      <c:when test="${ pi.currentPage eq 1 }">
          <a href="" class="btn_prev disabled">이전</a>
      </c:when>
      <c:otherwise>
          <a href="offList.go?tableNo=6&cpage=${ pi.currentPage - 1 }" class="btn_prev">이전</a>
      </c:otherwise>
    </c:choose>
    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
      <c:choose>
        <c:when test="${ p eq pi.currentPage }">
          <a href="offList.go?tableNo=6&cpage=${ p }" class="page_move active disabled">${ p }</a>
        </c:when>
        <c:otherwise>
            <a href="offList.go?tableNo=6&cpage=${ p }" class="page_move active">${ p }</a>
        </c:otherwise>
      </c:choose>
    </c:forEach>
    <c:choose>
      <c:when test="${ pi.currentPage eq pi.maxPage }">
        <a href="" class="btn_next disabled">다음</a>
      </c:when>
      <c:otherwise>
        <a href="offList.go?tableNo=6&cpage=${ pi.currentPage + 1 }" class="btn_next">다음</a>
      </c:otherwise>
      </c:choose>
  </div>
</div>

<jsp:include page="../common/footer.jsp"/>

<script>
  $("#boardList>tbody>tr").click(function(){
    location.href='listGroupOne.off?no=' + $(this).children(".no").text();
  })
</script>



</body>
</html>