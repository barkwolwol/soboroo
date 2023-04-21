package com.kh.soboroo.offliine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OfflineController {
	
	   // 오프라인 반짝모임 리스트 호출
	   @RequestMapping("listOne.off")
	   public String offlineOneList() {
	      return "offline/offlineOneListView";
	   }
	   
	   // 오프라인 정기모임 리스트 호출
	   @RequestMapping("listReg.off")
	   public String offlineRegularList() {
	      return "offline/offlineRegularListView";
	   }
	   
	   // 오프라인 목표모임 리스트 호출
	   @RequestMapping("listGoal.off")
	   public String offlineGoalList() {
	      return "offline/offlineGoalListView";
	   }
	   
	   // 오프라인 목표d-day모임 리스트 호출
	   @RequestMapping("listDday.off")
	   public String offlineDdayList() {
	      return "offline/offlineDdayListView";
	   }
	   
	   // 오프라인 모임 상세 페이지 호출
	   @RequestMapping("detail.off")
	   public String onDetailView(int groupNum) {
		  return "offline/offlineDetailView";
	   }
	   
	   
}
