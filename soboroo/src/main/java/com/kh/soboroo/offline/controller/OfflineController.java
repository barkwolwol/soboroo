package com.kh.soboroo.offline.controller;

import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.admin.controller.AdminController;
import com.kh.soboroo.common.controller.CommonController;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.model.vo.Upload;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.offline.model.service.OfflineServiceImpl;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;

@Controller
public class OfflineController {
	
	@Autowired
	private OfflineServiceImpl offService;
	
	@Autowired
	private CommonController common;
	
	@Autowired
	private AdminController admin;
	
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

	// 오프라인 반짝모임 생성 페이지 이동
	@RequestMapping("enrollGroupOne.off")
	public String enrollOfflineOne() {
		return "offline/enrollOfflineOne";
	}
	

	/**
	 * 오프라인 반짝모임 리스트
	 * @param currentPage
	 * @param mv
	 * @return
	 */
	@RequestMapping("listGroupOne.off")
	public ModelAndView selectList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
		
		int listCount = offService.selectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
		
		ArrayList<OfflineGroupOnce> list = offService.selectList(pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("offline/offlineOneListView");
		
		return mv;
	}
	
	/**
	 * 오프라인 반짝모임 생성
	 * @param tag
	 * @param date
	 * @param enterDate
	 * @param ogo
	 * @param u
	 * @param upfile
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("insertGroupOne.off")
	public String insertGroupOne(@RequestParam(value = "tag") String tag,
								 @RequestParam(value = "date") String date,	
								 @RequestParam(value = "enterDate") String enterDate,
			OfflineGroupOnce ogo, Upload u, MultipartFile upfile, HttpSession session, Model model) {
		
		if(date.length() < 11) {
			ogo.setStartDate(date.substring(0, 10));
			
		}else {
			ogo.setStartDate(date.substring(0, 10));
			ogo.setEndDate(date.substring(13, 23));
		}
		
		if(enterDate.length() < 11) {
			ogo.setStartEnter(date.substring(0, 10));
		}else {
			ogo.setStartEnter(date.substring(0, 10));
			ogo.setEndEnter(date.substring(13, 23));
		}
		
		ogo.setHashTag(tag);
		
		System.out.println(ogo);
		
		if(!upfile.getOriginalFilename().equals("")) { // 첨부파일 있을 경우
			String changeName = saveFile(upfile, session);
			u.setOriginName(upfile.getOriginalFilename());
			u.setChangeName("resources/uploadFiles/" + changeName);
		}
		
		int result = offService.insertGroupOne(ogo, u);
		
		if(result > 0) { // 성공 => 게시글 리스트 페이지 url 재요청 ("list.bo")
			session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
			return "redirect:listGroupOne.off";
			
		}else { // 실패 => 에러페이지 포워딩
			model.addAttribute("errorMsg", "게시글 등록 실패!");
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("detail.off")
	public ModelAndView selectGroupOne(int no, Model model, ModelAndView mv) {
		int result = offService.increaseCount(no);
		
		if(result > 0) {
			OfflineGroupOnce ogo = offService.selectGroupOne(no);
			mv.addObject("ogo", ogo).setViewName("offline/offlineDetailView");
			
		}else {
			mv.addObject("errorMsg", "게시글 상세 조회 실패!").setViewName("common/errorPage");
		}
		
		return mv;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역할
	public String saveFile(MultipartFile upfile, HttpSession session) {
		// 파일명 수정 작업 후 서버에 업로드 시키기 ("flower.png" => "202303311018558581.png")
		String originName = upfile.getOriginalFilename(); // flower.png
		
		// "20230331101855" (년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 랜덤한 숫자 5자리
		int ranNum = (int)(Math.random() * 90000 + 10000); // 23241 (10000~99999 사이)
		
		// 확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 최종 수정명
		String changeName = currentTime + ranNum + ext;
		
		// 업로드 시키고자 하는 폴더의 물리적인 경롤르 알아내기
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/"); // "/" 쓰면 webapp 가리킨다.
		
		// 서버에 파일을 업로드
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
		
	}
	  

	   
}
