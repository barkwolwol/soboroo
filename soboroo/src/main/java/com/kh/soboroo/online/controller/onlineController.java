package com.kh.soboroo.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class onlineController {
	
	   // 온라인 반짝모임 리스트 호출
	   @RequestMapping("listOne.on")
	   public String onlineOneList() {
	      return "online/onlineOneListView";
	   }
	   
	   // 온라인 정기모임 리스트 호출
	   @RequestMapping("listReg.on")
	   public String onlineRegularList() {
	      return "online/onlineRegularListView";
	   }
	   
	   // 온라인 목표모임 리스트 호출
	   @RequestMapping("listGoal.on")
	   public String onlineGoalList() {
	      return "online/onlineGoalListView";
	   }
	   
	   // 온라인 목표d-day모임 리스트 호출
	   @RequestMapping("listDday.on")
	   public String onlineDdayList() {
	      return "online/onlineDdayListView";
	   }
	   
	   // 온라인 모임 상세 페이지 호출
	   @RequestMapping("detail.on")
	   public String onDetailView(int groupNum) {
		  return "online/onlineDetailView";
	   }
	   
}
