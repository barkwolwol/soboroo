package com.kh.soboroo.common.socket;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.soboroo.member.model.vo.Member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EchoHandler extends TextWebSocketHandler{
    private static final Logger logger = LoggerFactory.getLogger(EchoHandler.class);

   // 로그인 한 전체
   List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
   
   // 1대1
   Map<String, WebSocketSession> userSessionMap = new HashMap<String, WebSocketSession>();
   
   // 알림 저장
    Map<String, List<String>> notifications = new HashMap<String, List<String>>();

   // 서버에 접속이 성공했을 때
   @Override
   public void afterConnectionEstablished(WebSocketSession session) throws Exception{
      sessions.add(session);
      
      String senderNickname = getNickname(session);
      userSessionMap.put(senderNickname, session);
      
       if (notifications.containsKey(senderNickname)) {
               List<String> userNotifications = notifications.get(senderNickname);
               for (String notification : userNotifications) {
                   session.sendMessage(new TextMessage(notification));
               }
               userNotifications.clear();
           }
       
   }
   
   // 소켓에 메시지를 보냈을 때
   @SuppressWarnings("deprecation")
   @Override
   protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
      
      System.out.println("handleTextMessage");
      
      // protocol : cmd, 댓글작성자, 게시글 작성자, seq(reply, user2, user1, 12)
      String msg = message.getPayload();
      
      System.out.println(msg);
      if(msg != null) {
         String[] strs = msg.split(",");
         if(strs != null && strs.length ==4) {
            String cmd = strs[0];
            String caller = strs[1];
            String receiver = strs[2];
            String title = strs[3];
            /* String receiverEmail= strs[3]; */
            /*
            String seq = strs[4];
            */
            System.out.println("cmd"+cmd);
            System.out.println("caller"+caller);
            System.out.println("receiver"+receiver);
            logger.info("Received apply message: {}", msg);
            // 작성자가 로그인해서 있다면
            WebSocketSession boardWriterSession = userSessionMap.get(receiver);
            if ("reply".equals(cmd) && boardWriterSession != null) {
            	 logger.info("Received apply message: {}", msg);
                 System.out.println("Received apply message: " + msg);
                TextMessage tmpMsg = new TextMessage(caller + "님이 회원님의 " + title + " 게시글에 댓글을 남겼습니다.");
                try {
                    boardWriterSession.sendMessage(tmpMsg);
                } catch (IllegalStateException e) {
                    // 세션이 이미 종료된 경우
                    // 알림을 저장하고 사용자가 다시 로그인했을 때 알림을 전송하도록 처리
                    List<String> userNotifications = notifications.get(receiver);
                    if (userNotifications == null) {
                        userNotifications = new ArrayList<>();
                        notifications.put(receiver, userNotifications);
                    }
                    userNotifications.add(caller + "님이 회원님의 " + title + " 게시글에 댓글을 남겼습니다.");
                }
            } else if ("report".equals(cmd) && boardWriterSession != null) {
               TextMessage tmpMsg = new TextMessage("회원님의 " + title + " 게시글이 신고되었습니다.");
               try {
                    boardWriterSession.sendMessage(tmpMsg);
                } catch (IllegalStateException e) {
                    // 세션이 이미 종료된 경우
                    // 알림을 저장하고 사용자가 다시 로그인했을 때 알림을 전송하도록 처리
                    List<String> userNotifications = notifications.get(receiver);
                    if (userNotifications == null) {
                        userNotifications = new ArrayList<>();
                        notifications.put(receiver, userNotifications);
                    }
                    userNotifications.add("회원님의 " + title + " 게시글이 신고되었습니다.");
                }
            } else if ("apply".equals(cmd)&& boardWriterSession != null) {
               logger.info("Received apply message: {}", msg);
               System.out.println("Received apply message: " + msg);
               TextMessage tmpMsg = new TextMessage(caller + "님이 회원님의 " + title + " 소모임에 참여했습니다. ");
               try {
                    boardWriterSession.sendMessage(tmpMsg);
                } catch (IllegalStateException e) {
                    // 세션이 이미 종료된 경우
                    // 알림을 저장하고 사용자가 다시 로그인했을 때 알림을 전송하도록 처리
                    List<String> userNotifications = notifications.get(receiver);
                    if (userNotifications == null) {
                        userNotifications = new ArrayList<>();
                        notifications.put(receiver, userNotifications);
                    }
                    userNotifications.add(caller + "님이 회원님의 " + title + " 소모임에 참여했습니다. ");
                }
            }
         }
         /*
          * if(strs != null && strs.length == 5) { String cmd = strs[0]; String
          * mentee_name = strs[1]; String mentor_email = strs[2]; String meetingboard_seq
          * = strs[3]; String participation_seq = strs[4];
          * 
          * // 모임 작성한 멘토가 로그인 해있으면 WebSocketSession mentorSession =
          * userSessionMap.get(mentor_email); if(cmd.equals("apply") && mentorSession !=
          * null) { TextMessage tmpMsg = new TextMessage( mentee_name +
          * "님이 모임을 신청했습니다. "); mentorSession.sendMessage(tmpMsg); } }
          */
      }
      
   }
   
   
   // 연결 해제될 때
   @Override
   public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
      userSessionMap.remove(session.getId());
      sessions.remove(session);
   }
   
   // 웹소켓 이메일 가져오기
   private String getNickname(WebSocketSession session) {
      Map<String, Object> httpSession = session.getAttributes();
      Member loginUser = (Member)httpSession.get("loginUser");
      //System.out.println("member" + member);
      
      System.out.println("loginUser" + loginUser);
      
      if(loginUser == null) {
         System.out.println("getId" + session.getId());
         return session.getId();
      } else {
         System.out.println("memNickname" + loginUser.getMemNickname());
         return loginUser.getMemNickname();
      }
}
   }