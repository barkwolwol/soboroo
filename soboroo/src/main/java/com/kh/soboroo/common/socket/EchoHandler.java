package com.kh.soboroo.common.socket;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.util.StringUtils;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.soboroo.member.model.vo.Member;

public class EchoHandler extends TextWebSocketHandler{
	// 로그인 한 전체
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	
	// 1대1
	Map<String, WebSocketSession> userSessionMap = new HashMap<String, WebSocketSession>();
	
	// 서버에 접속이 성공했을 때
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		sessions.add(session);
		
		String senderEmail = getEmail(session);
		userSessionMap.put(senderEmail, session);
	}
	
	// 소켓에 메시지를 보냈을 때
	@SuppressWarnings("deprecation")
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
		// protocol : cmd, 댓글작성자, 게시글 작성자, seq(reply, user2, user1, 12)
		String msg = message.getPayload();
		if(msg != null) {
			String[] strs = msg.split(",");
			if(strs != null && strs.length ==5) {
				String cmd = strs[0];
				String caller = strs[1];
				String receiver = strs[2];
				String receiverEmail= strs[3];
				String seq = strs[4];
				
				// 작성자가 로그인해서 있다면
				WebSocketSession boardWriterSession = userSessionMap.get(receiverEmail);
				
				if("reply".equals(cmd)&&boardWriterSession != null) {
					TextMessage tmpMsg = new TextMessage(caller + "님이 회원님의 게시글에 댓글을 남겼습니다.");
					boardWriterSession.sendMessage(tmpMsg);
					
				} else if ("board".equals(cmd) && boardWriterSession != null) {
					TextMessage tmpMsg = new TextMessage("회원님의 게시글이 신고되었습니다.");
					boardWriterSession.sendMessage(tmpMsg);
				}
			}
			if(strs != null && strs.length == 5) {
				String cmd = strs[0];
				String mentee_name = strs[1];
				String mentor_email = strs[2];
				String meetingboard_seq = strs[3];
				String participation_seq = strs[4];
				
				// 모임 작성한 멘토가 로그인 해있으면
				WebSocketSession mentorSession = userSessionMap.get(mentor_email);
				if(cmd.equals("apply") && mentorSession != null) {
					TextMessage tmpMsg = new TextMessage(
							mentee_name + "님이 모임을 신청했습니다. ");
					mentorSession.sendMessage(tmpMsg);
				}
			}
		}
		
	}
	
	// 연결 해제될 때
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception{
		userSessionMap.remove(session.getId());
		sessions.remove(session);
	}
	
	// 웹소켓 이메일 가져오기
	private String getEmail(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		Member loginUser = (Member)httpSession.get("Member");
		
		if(loginUser == null) {
			return session.getId();
		} else {
			return loginUser.getMemEmail();
		}
	}
}
		
		/*private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
		
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			sessionList.add(session);
		}
		
		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
			for(WebSocketSession sess: sessionList) {
				sess.sendMessage(new TextMessage(session.getId()+": "+message.getPayload()));
			}
		}
		
		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
			sessionList.remove(session);
		}
	}*/
	/*
	// 로그인 중인 개별 유저
	Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();
	
	// 클라이언트가 서버로 연결 시
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		String senderId = getMemId(session);
		if(senderId != null) {
			log(senderId + "연결됨");
			users.put(senderId, session);
		}
	}
	
	// 클라이언트가 Data 전송 시
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
		String senderId = getMemId(session);
		
		// 특정 유저에게 보내기
		String msg = message.getPayload();
		if(msg != null) {
			String[] strs = msg.split(",");
			log("strs" + strs.toString());
			if(strs != null && strs.length ==4) {
				String type = strs[0];
				String target = strs[1];
				String content = strs[2];
				String url = strs[3];
				WebSocketSession targetSession = users.get(target); // 메시지를 받을 세션 조회
				
				// 실시간 접속 시
				if(targetSession!=null) {
					// ex : [&분의일] 신청이 들어왔습니다
					TextMessage tmpMsg = new TextMessage("<a target='_blank' href'" + url +"'>[<b>" + type + "</b>] " + content + "</a>" );
					targetSession.sendMessage(tmpMsg);
				}
			}
		}
	
	}
	
	// 연결 해제될 때
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception{
		String senderId= getMemId(session);
		
		if(senderId != null) {
			log(senderId + "연결 종료 됨");
			users.remove(senderId);
			//sessions.remove(session);
			
		}
	}
	
	// 에러 발생 시
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception{
		System.out.println(session.getId() + "익셉션 발생 : " + exception.getMessage());
	}
	
	private void log(String logmsg) {
		System.out.println(new Date() + ":" + logmsg);
	}
	
	// 웹소켓에 id 가져오기
	// 접속한 유저의 http 세션을 조회하여 id를 얻는 함수
	private String getMemId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		String m_id = (String)httpSession.get("memId");
		return m_id == null ? null : m_id;
	}
}
	 */
