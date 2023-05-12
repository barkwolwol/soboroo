<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <title>Document</title>
    </head>
    <body>
       <div class="reservation">
          <div>
             <p>예약일</p>
             <input id="input1" class="dateSelector" placeholder="ex) 2020-09-01" />
          </div>
          <div>
             <p>예약일2</p>
             <input id="input2" class="dateSelector" placeholder="ex) 2020-09-01" />
          </div>
        </div>

        <div class="form_row" id="eventDateTime_-1">
            <div class="date_time_wrap event">
                <label for="">모임기간</label>
                <input type="text" id="meetingDate" class="dateSelector" placeholder="모임기간을 선택하세요." value=""
                    autocomplete="off" required="">
            </div>
        </div>
        <div class="form_row">
            <div class="date_time_wrap event">
                <label for="">신청기간</label>
                <input type="text" id="joningDate" class="dateSelector" placeholder="신청기간을 선택하세요." value=""
                    autocomplete="off" required="">
            </div>
        </div>
    
        <script>
          let input1 = $("#input1");
          input1.flatpickr();
          // var dateSelector = document.querySelector('.dateSelector');
          // dateSelector.flatpickr();
    
          let input2 = $("#input2");
          input2.flatpickr();

          let meetingDate = $("#meetingDate");
          let joningDate = $("#joningDate");
          flatpickr.localize(flatpickr.l10ns.ko);
          meetingDate.flatpickr(
            {
							mode: "range",
							minDate: "today",
							dateFormat: "Y-m-d",
							local: 'ko'
						}
                        
          );

          joningDate.flatpickr(
            {
							mode: "range",
							minDate: "today",
							dateFormat: "Y-m-d",
							local: 'ko'
						}
          );


    
        </script>
            
    </body>
    </html>