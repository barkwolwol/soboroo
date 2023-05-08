package com.kh.soboroo.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.soboroo.board.model.vo.Board;
import com.kh.soboroo.common.model.vo.PageInfo;
import com.kh.soboroo.common.template.Pagination;
import com.kh.soboroo.member.model.vo.Member;
import com.kh.soboroo.myPage.model.service.MyPageServiceImpl;
import com.kh.soboroo.offliine.model.vo.OfflineChallengeDday;
import com.kh.soboroo.offliine.model.vo.OfflineChallengeRegular;
import com.kh.soboroo.offliine.model.vo.OfflineGroupOnce;
import com.kh.soboroo.offliine.model.vo.OfflineGroupRegular;
import com.kh.soboroo.online.model.vo.OnlineChallengeDday;
import com.kh.soboroo.online.model.vo.OnlineChallengeRegular;
import com.kh.soboroo.online.model.vo.OnlineGroupOnce;
import com.kh.soboroo.online.model.vo.OnlineGroupRegular;
import com.kh.soboroo.reply.model.vo.Reply;

@Controller
public class MyPageController {

	@Autowired
	private MyPageServiceImpl myService;
	
	
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

	// 닉네임 변경
	@RequestMapping("updateNick.my")
	public String updateNick(Member m, HttpSession session, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		m.setMemId(loginUser.getMemId());
		loginUser.setMemIntroduce(loginUser.getMemIntroduce());
		
		int result = myService.updateNick(m);
		
		if(result > 0) {
			Member updateNick = myService.loginMember(loginUser);
			session.setAttribute("loginUser", updateNick);
			
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			
			return "redirect:updateInfo.my";		
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
	    Member loginUser = (Member)session.getAttribute("loginUser");
	    m.setMemId(loginUser.getMemId());
	   loginUser.setMemIntroduce(loginUser.getMemIntroduce());
		
		int result = myService.updateIntro(m);

		if (result > 0) {
			Member updateIntro = myService.loginMember(loginUser);
			session.setAttribute("loginUser", updateIntro);
			
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			
			return "redirect:updateInfo.my";
		} else {
			
			return "common/errorPage";
		}
	}

	// 회원탈퇴
	@RequestMapping("deleteMember.my")
	public String deleteMember() {
		return "";
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

	    ArrayList<OfflineChallengeDday> list1 = myService.OfflineChallengeDday(loginUser, pi);
	    ArrayList<OfflineChallengeRegular> list2 = myService.OfflineChallengeRegular(loginUser, pi);
	    ArrayList<OfflineGroupOnce> list3 = myService.OfflineGroupOnce(loginUser, pi);
	    ArrayList<OfflineGroupRegular> list4 = myService.OfflineGroupRegular(loginUser, pi);
	    ArrayList<OnlineChallengeDday> list5 = myService.OnlineChallengeDday(loginUser, pi);
	    ArrayList<OnlineChallengeRegular> list6 = myService.OnlineChallengeRegular(loginUser, pi);
	    ArrayList<OnlineGroupOnce> list7 = myService.OnlineGroupOnce(loginUser, pi);
	    ArrayList<OnlineGroupRegular> list8 = myService.OnlineGroupRegular(loginUser, pi);

	    // 필수 정보만을 포함하는 새로운 배열 생성
	    ArrayList<MyPost> combinedList = new ArrayList<>();

	    // list1의 각 요소를 MyPost 객체로 변환하여 combinedList에 추가
	    for (Board1 board1 : list1) {
	        combinedList.add(new MyPost(board1.getPostId(), board1.getTitle(), board1.getAuthor(), board1.getDate()));
	    }

	    // list2, list3, ..., list8도 동일한 방식으로 추가

	    mv.addObject("pi", pi).addObject("list", combinedList).setViewName("myPage/myBoard");
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
	
	@RequestMapping(value="groupBoardReplyList..my", produces="application/json; charset=utf-8")
	public ModelAndView selectGroupBoardReplyList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int listCount = myService.selectReplyListCount(loginUser);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Reply> list = myService.selectGroupReplyList(loginUser, pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("myPage/mybReply");
		return mv;
	}
	


}