package com.kh.soboroo.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class onlineController {
	
	   // 오프라인 반짝모임 리스트 호출
	   @RequestMapping("listOne.on")
	   public String onlineOneList() {
	      return "online/onlineOneListView";
	   }
	   
	   // 오프라인 정기모임 리스트 호출
	   @RequestMapping("listReg.on")
	   public String onlineRegularList() {
	      return "online/onlineRegularListView";
	   }
	   
	   // 오프라인 목표모임 리스트 호출
	   @RequestMapping("listGoal.on")
	   public String onlineGoalList() {
	      return "online/onlineGoalListView";
	   }
	   
	   // 오프라인 목표d-day모임 리스트 호출
	   @RequestMapping("listDday.on")
	   public String onlineDdayList() {
	      return "online/onlineDdayListView";
	   }
	   
	   
}
