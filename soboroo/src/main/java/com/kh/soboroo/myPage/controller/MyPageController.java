package com.kh.soboroo.myPage.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.soboroo.alert.model.vo.Alert;
import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.offline.model.vo.EntryList;
import com.kh.soboroo.member.model.vo.Member;
import com.kh.soboroo.myPage.model.service.MailSendService;
import com.kh.soboroo.myPage.model.service.MyPageServiceImpl;
import com.kh.soboroo.myPage.model.vo.MyPage;
import com.kh.soboroo.myPage.model.vo.OfflineChallengeDday;
import com.kh.soboroo.myPage.model.vo.OfflineChallengeRegular;
import com.kh.soboroo.myPage.model.vo.OfflineGroupOnce;
import com.kh.soboroo.myPage.model.vo.OfflineGroupRegular;
import com.kh.soboroo.myPage.model.vo.OnlineChallengeDday;
import com.kh.soboroo.myPage.model.vo.OnlineChallengeRegular;
import com.kh.soboroo.myPage.model.vo.OnlineGroupOnce;
import com.kh.soboroo.myPage.model.vo.OnlineGroupRegular;
import com.kh.soboroo.reply.model.vo.Reply;

import oracle.jdbc.proxy.annotation.Post;

@Controller
public class MyPageController {

	@Autowired
	private MyPageServiceImpl myService;
	
	@Autowired
	private MailSendService mailService;
	
	
	
	/*
	 * @Autowired private BCryptPasswordEncoder bcryptPasswordEncoder;
	 */

	 @RequestMapping("loginMember.my")
	 public String loginMember() {
		 return "myPage/NewFile";
	 }
	 
	 @RequestMapping("login.my") 
	 public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		 Member loginUser = myService.loginMember(m);
		 
		 if(loginUser == null) {
			 mv.setViewName("common/errorPage");
		 }
		 else {
			 session.setAttribute("loginUser", loginUser);
			 mv.setViewName("redirect:/");
		 }
		 return mv;
	 }
	 

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
	public String updateInfo(Member m, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		return "myPage/checkEmail";
	}
	
	@RequestMapping("update.my")
	public String update(Member m, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
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

	// 닉네임 변경
	@RequestMapping("updateNick.my")
	public String updateNick(Member m, HttpSession session, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		loginUser.setMemNickname(m.getMemNickname());
		
		int result = myService.updateNick(loginUser);
		
		System.out.println("닉네임 변경" + result);
		if(result > 0) {
			 session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
		        return "myPage/updateInfo";		
		} else {
			return "common/errorPage";
		}
	}

	// 닉네임 중복체크
	@ResponseBody
	@RequestMapping("checkNick.my")
	public String checkNick(String checkNick) {
		int count = myService.checkNick(checkNick);
		
		return count > 0 ? "NNNNN" : "NNNNY";
	}

	// 자기소개 변경
	@RequestMapping("updateIntro.my")
	public String updateIntro(Member m, HttpSession session, Model model) {
	    Member loginUser = (Member) session.getAttribute("loginUser");
	    
	    loginUser.setMemIntroduce(m.getMemIntroduce());
	    
	    int result = myService.updateIntro(loginUser);
	    
	    if (result > 0) {
	        session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
	        return "myPage/updateInfo";
	    } else {
	        return "common/errorPage";
	    }
	}

	// 회원탈퇴
	@RequestMapping("deleteMember.my")
	public String deleteMember(Member m, HttpSession session) {
	    Member loginUser = (Member)session.getAttribute("loginUser");
	  //  m.setMemNo(loginUser.getMemNo());
	    loginUser.setMemStatus(m.getMemStatus());
	    
	    int result = myService.deleteMember(loginUser);
	    
	    if(result > 0) {
	        //Member deleteMember = myService.loginMember(loginUser);
	        session.removeAttribute("loginUser");
	        
	        session.setAttribute("alertMsg", "회원 탈퇴되었습니다. 이용해주셔서 감사합니다.");
	        
	        return "redirect:/";
	    } else {
	        session.setAttribute("alertMsg", "회원 탈퇴에 실패하였습니다.");
	        return "redirect:update.my";
	    }
	}
	
	@RequestMapping("selectAlertList.my")
	public ModelAndView selectAlertList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int listCount = myService.selectAlertListCount(loginUser);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Alert> list = myService.selectAlertList(loginUser, pi);
		
		System.out.println("알람"+list);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/myAlert");
		return mv;
	}

	
	@RequestMapping("communityList.my")
	public ModelAndView selectList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session){
		Member loginUser = (Member)session.getAttribute("loginUser");

		int listCount = myService.selectListCount(loginUser);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Board> list = myService.selectList(loginUser, pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/myCboard");
		return mv;
	}
	
	@RequestMapping(value="groupBoardList.my", produces="application/json; charset=utf-8")
	public ModelAndView selectGroupBoardList(@RequestParam(value="cpage", defaultValue="1")int currentPage, ModelAndView mv, HttpSession session) {

	    Member loginUser = (Member)session.getAttribute("loginUser");
	    
	    int listCount = myService.selectGroupBoardListCount(loginUser);
	    PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
	    ArrayList<Object> list = myService.selectTestList(loginUser, pi);
	    
	    mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/myBoard");
		return mv;

	}
	
	@RequestMapping(value = "communityReplyList.my", produces = "application/json; charset=utf-8")
	public ModelAndView selectcommunityReplyList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session){
		Member loginUser = (Member)session.getAttribute("loginUser");

		int listCount = myService.selectReplyListCount(loginUser);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Reply> list = myService.selectReplyList(loginUser, pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/myCreply");
		return mv;
	}
	
	@RequestMapping(value="groupBoardReplyList.my", produces="application/json; charset=utf-8")
	public ModelAndView selectGroupBoardReplyList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int listCount = myService.selectGroupReplyListCount(loginUser);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Reply> list = myService.selectGroupReplyList(loginUser, pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/mybReply");
		return mv;
	}
	
	@RequestMapping(value = "selectMyGroup.my", produces="application/json; charset=utf-8")
	public ModelAndView selectMyGroup(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		
		int listCount = myService.selectMyGroupListCount(loginUser);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<EntryList> list = myService.selectMyGroupList(loginUser, pi);
		
		System.out.println(list);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/myGroup");
		return mv;
				
	}
	
	@RequestMapping(value="selectMySchedule.my", produces="application/json; charset=utf-8")
	public ModelAndView selectMySchedule(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		System.out.println(loginUser);
		
		ArrayList<Object> list = myService.selectMySchedule(loginUser);
		
		System.out.println(list);
		
		mv.addObject("list", list).setViewName("myPage/myCalender");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("removeRingSession")
	public void removeRingSession(HttpServletRequest request, Principal principal) {
	  if (principal != null) {
	    HttpSession session = request.getSession(false); // 현재 요청과 연결된 세션을 가져옴
	    if (session != null && session.getAttribute("loginUser").equals(principal.getName())) {
	      session.invalidate(); // 세션 무효화
	    }
	}

	  
	 }
	//이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
		
			
	}
	
	@ResponseBody
	@RequestMapping("getEmailAddress")
	public String getEmailAddress(Member m, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		return "myPage/checkEmail";
	}

	@RequestMapping("saveAlert.my")
	public String insertAlert(@RequestBody Alert alertData, HttpSession session, Model model) {
	    Member loginUser = (Member) session.getAttribute("loginUser");
	    
	    // Alert 객체 생성 및 데이터 설정
	    Alert a = new Alert();
	    a.setMemNo(loginUser.getMemNo());
	    a.setAlertContent(alertData.getAlertContent());
	    a.setTableNo(alertData.getTableNo());
	    a.setGroupNo(alertData.getGroupNo());
	    a.setAlertType(alertData.getAlertType());
	    System.out.println("컨트롤러 ㅁ : " + a);
	    int result = myService.insertAlert(a);
	    if (result > 0) {
			/*
			 * String socketMsg = "apply," + loginUser.getMemNickname() + "," +
			 * loginUser.getMemNickname();
			 * 
			 * session.setAttribute("socketMsg", socketMsg);
			 */System.out.println("알림 디비 넣기 성공");
	    } else {
	        System.out.println("알림 디비 넣기 실패");
	    }
	    return "redirect:/";
	}
	
	@RequestMapping("saveReplyAlert.my")
	public String insertReplyAlert(@RequestBody Alert alertData, HttpSession session, Model model) {
	    Member loginUser = (Member) session.getAttribute("loginUser");
	    
	    // Alert 객체 생성 및 데이터 설정
	    Alert a = new Alert();
	    a.setMemNo(loginUser.getMemNo());
	    a.setAlertContent(alertData.getAlertContent());
	    a.setTableNo(alertData.getTableNo());
	    a.setGroupNo(alertData.getGroupNo());
	   // a.setGroupNo(alertData.getGroupNo());
	    a.setAlertType(alertData.getAlertType());
	    System.out.println("컨트롤러 ㅁ : " + a);
	    int result = myService.insertAlert(a);
	    if (result > 0) {
			/*
			 * String socketMsg = "apply," + loginUser.getMemNickname() + "," +
			 * loginUser.getMemNickname();
			 * 
			 * session.setAttribute("socketMsg", socketMsg);
			 */System.out.println("알림 디비 넣기 성공");
	    } else {
	        System.out.println("알림 디비 넣기 실패");
	    }
	    return "redirect:/";
	}
	
	@RequestMapping("findNick.my")
	@ResponseBody // JSON 형식으로 응답을 반환하기 위해 추가
	public Map<String, String> findNickname(@RequestParam(value = "memNo") int memNo) {
		System.out.println("memNo" + memNo);
	    Map<String, String> response = new HashMap<>();
	    String memNickname = myService.findNickname(memNo);
	    response.put("memNickname", memNickname);
	    return response;
	}

	@RequestMapping(value = "deleteAlert.my")
	@ResponseBody
	public String deleteAlert(HttpSession session, @RequestParam(value = "valueArr[]", required = false) String[] ajaxMsg) {
	    Member loginUser = (Member) session.getAttribute("loginUser");

	    System.out.println(Arrays.toString(ajaxMsg));

	    if (ajaxMsg != null) {
	        int size = ajaxMsg.length;
	        for (int i = 0; i < size; i++) {
	            String no = ajaxMsg[i];
	            String memNo = String.valueOf(loginUser.getMemNo());
	            myService.deleteAlert(memNo, no);
	        }
	    }
	    return "success";
	}
	
	@RestController
	public class RecentPostsController {
	    private List<String> recentPosts = new ArrayList<>();

	    @GetMapping("/recent-posts")
	    public List<String> getRecentPosts() {
	        return recentPosts;
	    }

	    @PostMapping("/recent-posts")
	    public void addRecentPost(@RequestBody String post) {
	        recentPosts.add(post);
	        if (recentPosts.size() > 3) {
	            recentPosts.remove(0);
	        }
	    }
	}

	
	
	
	
	
	}