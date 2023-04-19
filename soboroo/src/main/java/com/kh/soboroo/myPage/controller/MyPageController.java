package com.kh.soboroo.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {

   // 마이페이지 메인 페이지(캘린더) 호출
   @RequestMapping("myCalender.my")
   public String myCalender() {
      return "myPage/myCalender";
   }
   
   // 마이페이지 알림 호출
   @RequestMapping("myAlert.my")
   public String myAlert() {
      return "myPage/myAlert";
   }
   // 마이페이지 정보수정 페이지 호출
   @RequestMapping("updateInfo.my")
   public String updateInfo() {
      return "myPage/updateInfo";
   }
   
   // 마이페이지 참여한 소모임 페이지 호출
   @RequestMapping("myGroup.my")
   public String myGroup() {
      return "myPage/myGroup";
   }
   
   // 마이페이지 소모임 게시글 조회
   @RequestMapping("myBoard.my")
   public String myBoard() {
      return "myPage/myBoard";
   }
   
   // 마이페이지 소모임 댓글 조회
   @RequestMapping("mybReply.my")
   public String mybReply() {
      return "myPage/mybReply";
   }
   
   // 마이페이지 커뮤니티 게시글 조회
   @RequestMapping("myCboard.my")
   public String myCboard() {
      return "myPage/myCboard";
   }
   
   // 마이페이지 커뮤니티 댓글 조회
   @RequestMapping("myCreply.my")
   public String myCreply() {
      return "myPage/myCreply";
   }
}