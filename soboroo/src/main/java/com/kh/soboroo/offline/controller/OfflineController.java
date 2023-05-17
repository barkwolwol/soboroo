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
	@RequestMapping("insertGroupOne.go")
	public String insertGroupOne(@RequestParam(value = "tag") String tag,
	                             @RequestParam(value = "date") String date,	
	                             @RequestParam(value = "enterDate") String enterDate,
	                             OfflineGroupOnce ogo, GroupUpload gu, List<MultipartFile> upfiles,
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
	        
	        List<GroupUpload> uploads = new ArrayList(); // 업로드한 파일의 정보를 저장할 리스트
	        
	        for (int i = 0; i < upfiles.size(); i++) {
	            MultipartFile file = upfiles.get(i);
	            String originName = file.getOriginalFilename();
	            String filePath = "resources/uploadFiles/" + savedFileNames.get(i);
	            String changeName = savedFileNames.get(i);
	            
	            GroupUpload gtoupUpload = new GroupUpload();
	            gtoupUpload.setOriginName(originName != null ? originName : "");
	            gtoupUpload.setChangeName(changeName);
	            if (i == 0) {
	            	gtoupUpload.setFileLevel(1); // 첫 번째 파일은 대표 이미지
	            } else {
	            	gtoupUpload.setFileLevel(2); // 나머지 파일은 추가 이미지
	            }
	            gtoupUpload.setFilePath(filePath);
	            gtoupUpload.setTableNo(2);
	            
	            uploads.add(gtoupUpload);
	        }
	        
	        gu.setUploads(uploads); // 업로드한 파일 리스트를 Upload 객체에 설정
	    }

	    int result = offService.insertGroupOne(ogo, gu);
	    
	    if (result > 0) { // 성공 => 게시글 리스트 페이지 url 재요청 ("list.bo")
	        session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
	        return "redirect:listGroupOne.go?$tableNo=2";
	    } else { // 실패 => 에러페이지 포워딩
	        model.addAttribute("errorMsg", "게시글 등록 실패!");
	        return "common/errorPage";
	    }
	}
	
	@RequestMapping("detail.go")
	public ModelAndView selectGroupOne(int no, Model model, ModelAndView mv) {
		int result = offService.increaseCount(no);
		List<GroupUpload> list = offService.selectAttachmentList(no);
		
		if(result > 0) {
			OfflineGroupOnce ogo = offService.selectGroupOne(no);
			mv.addObject("ogo", ogo).setViewName("offline/offlineDetailView");
			mv.addObject("list", list).setViewName("offline/offlineDetailView");
			
		}else {
			mv.addObject("errorMsg", "게시글 상세 조회 실패!").setViewName("common/errorPage");
		}
		
		return mv;
		
	}

	
	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역할
	public List<String> saveFiles(List<MultipartFile> upfiles, HttpSession session) {
	    List<String> savedFileNames = new ArrayList();

	    for (MultipartFile upfile : upfiles) {
	        if (!upfile.getOriginalFilename().isEmpty()) {
	            String originName = upfile.getOriginalFilename();
	            String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	            int ranNum = (int) (Math.random() * 90000 + 10000);
	            String ext;
	            int dotIndex = originName.lastIndexOf(".");
	            if (dotIndex != -1) {
	                ext = originName.substring(dotIndex);
	            } else {
	                ext = "";
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
