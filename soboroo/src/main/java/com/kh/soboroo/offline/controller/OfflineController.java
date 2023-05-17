package com.kh.soboroo.offline.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.common.controller.CommonController;
import com.kh.soboroo.common.model.vo.GroupUpload;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.offline.model.service.OfflineServiceImpl;
import com.kh.soboroo.offline.model.vo.OfflineGroupOnce;

@Controller
public class OfflineController {
	
	@Autowired
	private OfflineServiceImpl offService;
	
	@Autowired
	private CommonController common;
	
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
	@RequestMapping("enrollGroupOne.go")
	public String enrollOfflineOne() {
		return "offline/enrollOfflineOne";
	}
	

	/**
	 * 오프라인 반짝모임 리스트
	 * @param currentPage
	 * @param mv
	 * @return
	 */
	@RequestMapping("listGroupOne.go")
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
//	@RequestMapping("insertGroupOne.go")
//	public String insertGroupOne(@RequestParam(value = "tag") String tag,
//								 @RequestParam(value = "date") String date,	
//								 @RequestParam(value = "enterDate") String enterDate,
//			OfflineGroupOnce ogo, Upload u, MultipartFile upfile, HttpSession session, Model model) {
//		
//		
//		if(date.length() < 11) {
//			ogo.setStartDate(date.substring(0, 10));
//			
//		}else {
//			ogo.setStartDate(date.substring(0, 10));
//			ogo.setEndDate(date.substring(13, 23));
//		}
//		
//		if(enterDate.length() < 11) {
//			ogo.setStartEnter(date.substring(0, 10));
//		}else {
//			ogo.setStartEnter(date.substring(0, 10));
//			ogo.setEndEnter(date.substring(13, 23));
//		}
//		
//		ogo.setHashTag(tag);
//		
//		System.out.println(ogo);
//		
//		if(!upfile.getOriginalFilename().equals("")) { // 첨부파일 있을 경우
//			String changeName = saveFile(upfile, session);
//			u.setOriginName(upfile.getOriginalFilename());
//			u.setChangeName("resources/uploadFiles/" + changeName);
//		}
//		
//		int result = offService.insertGroupOne(ogo, u);
//		
//		if(result > 0) { // 성공 => 게시글 리스트 페이지 url 재요청 ("list.bo")
//			session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
//			return "redirect:listGroupOne.go?$tableNo=2";
//			
//		}else { // 실패 => 에러페이지 포워딩
//			model.addAttribute("errorMsg", "게시글 등록 실패!");
//			return "common/errorPage";
//		}
//		
//	}
	
	@RequestMapping("insertGroupOne.go")
	public String insertGroupOne(@RequestParam(value = "tag") String tag,
	                             @RequestParam(value = "date") String date,
	                             @RequestParam(value = "enterDate") String enterDate,
	                             OfflineGroupOnce ogo, GroupUpload groupUpload, List<MultipartFile> upfiles,
	                             HttpSession session, Model model) {

	    if (date.length() < 11) {
	        ogo.setStartDate(date.substring(0, 10));
	    } else {
	        ogo.setStartDate(date.substring(0, 10));
	        ogo.setEndDate(date.substring(13, 23));
	    }

	    if (enterDate.length() < 11) {
	        ogo.setStartEnter(enterDate.substring(0, 10));
	    } else {
	        ogo.setStartEnter(enterDate.substring(0, 10));
	        ogo.setEndEnter(enterDate.substring(13, 23));
	    }

	    ogo.setHashTag(tag);

	    System.out.println(ogo);

	    if (!upfiles.isEmpty()) { // 첨부파일이 있을 경우
	        List<String> savedFileNames = saveFiles(upfiles, session);

	        List<GroupUpload> uploads = new ArrayList<>(); // 업로드한 파일의 정보를 저장할 리스트

	        for (int i = 0; i < upfiles.size(); i++) {
	            MultipartFile file = upfiles.get(i);
	            String originName = file.getOriginalFilename();
	            String filePath = "resources/uploadFiles/" + savedFileNames.get(i);
	            String changeName = savedFileNames.get(i);

	            GroupUpload upload = new GroupUpload();
	            upload.setOriginName1(originName);
	            upload.setFilePath1(filePath);
	            upload.setTableNo(groupUpload.getTableNo());

	            uploads.add(upload);
	        }

	        // 첫 번째 파일을 대표 이미지로 설정 (fileLevel = 1)
	        if (!uploads.isEmpty()) {
	            GroupUpload firstUpload = uploads.get(0);
	            firstUpload.setFileLevel(1);
	        }

	        groupUpload.setOriginName1(upfiles.size() > 0 ? upfiles.get(0).getOriginalFilename() : "");
	        groupUpload.setOriginName2(upfiles.size() > 1 ? upfiles.get(1).getOriginalFilename() : "");
	        groupUpload.setOriginName3(upfiles.size() > 2 ? upfiles.get(2).getOriginalFilename() : "");
	        groupUpload.setOriginName4(upfiles.size() > 3 ? upfiles.get(3).getOriginalFilename() : "");
	        groupUpload.setOriginName5(upfiles.size() > 4 ? upfiles.get(4).getOriginalFilename() : "");

	        groupUpload.setFilePath1(upfiles.size() > 0 ? "resources/uploadFiles/" + savedFileNames.get(0) : "");
	        groupUpload.setFilePath2(upfiles.size() > 1 ? "resources/uploadFiles/" + savedFileNames.get(1) : "");
	        groupUpload.setFilePath3(upfiles.size() > 2 ? "resources/uploadFiles/" + savedFileNames.get(2) : "");
	        groupUpload.setFilePath4(upfiles.size() > 3 ? "resources/uploadFiles/" + savedFileNames.get(3) : "");
	        groupUpload.setFilePath5(upfiles.size() > 4 ? "resources/uploadFiles/" + savedFileNames.get(4) : "");

	        groupUpload.setFileLevel(upfiles.size());
	        groupUpload.setTableNo(2);

	        groupUpload.setUploads(uploads); // 업로드한 파일 리스트를 GroupUpload 객체에 설정
	    }

	    int result = offService.insertGroupOne(ogo, groupUpload);

	    if (result > 0) { // 성공 => 게시글 리스트 페이지 url 재요청 ("listGroupOne.go")
	        session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
	        return "redirect:listGroupOne.go?tableNo=2";
	    } else { // 실패 => 에러페이지 포워딩
	        model.addAttribute("errorMsg", "게시글 등록 실패!");
	        return "common/errorPage";
	    }
	}
	
	@RequestMapping("detail.go")
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
	public List<String> saveFiles(List<MultipartFile> upfiles, HttpSession session) {
	    List<String> savedFileNames = new ArrayList<>();

	    for (MultipartFile upfile : upfiles) {
	        if (!upfile.isEmpty()) {
	            String originName = upfile.getOriginalFilename();
	            String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	            int ranNum = (int) (Math.random() * 90000 + 10000);
	            String ext = "";
	            int dotIndex = originName.lastIndexOf(".");
	            if (dotIndex != -1) {
	                ext = originName.substring(dotIndex);
	            }
	            String changeName = currentTime + ranNum + ext;
	            String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");

	            try {
	                upfile.transferTo(new File(savePath + changeName));
	                savedFileNames.add(changeName);
	            } catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        } else {
	            savedFileNames.add(""); // 파일이 없을 경우 빈 문자열 추가
	        }
	    }

	    return savedFileNames;
	}
	  

	   
}
