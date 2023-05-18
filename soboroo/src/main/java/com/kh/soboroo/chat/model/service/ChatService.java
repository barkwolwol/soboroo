package com.kh.soboroo.chat.model.service;

import java.util.ArrayList;

import com.kh.soboroo.chat.model.vo.ChatMessage;
import com.kh.soboroo.chat.model.vo.ChatRoom;
import com.kh.soboroo.chat.model.vo.ChatUser;
import com.kh.soboroo.member.model.vo.Member;

public interface ChatService {

	 int insertMessage(ChatMessage chatMessage);

	 ArrayList<ChatRoom> selectRoom(int userNo);
	 
	 ArrayList<ChatUser> selectRoomUser(int userNo);
	 
	 ArrayList<ChatMessage> selectMessage(int rno);
	
	 ArrayList<Member> searchUser(Member m);
	 
	 int createRoom(Member m);
	 
	 void insertChatUser(int user);
	 
	 void insertChatGroupUser(int user);
	 
	 int createGroupRoom(ChatRoom c);
	 
	 int updateMessage(ChatMessage chatMessage);
	 
	 int unreadMessage(ChatMessage chatMessage);
	 
	 ArrayList<ChatUser> selectUnreadMessage(int userNo);
	 
	 int readMessage(ChatUser cu);
	 
	 ArrayList<ChatRoom> updateRoom(int userNo);
	 
	 ChatUser checkUser(ChatMessage chatMessage);
	 
	 int inviteUser(ChatMessage chatMessage);
	 
	 Member selectMember(int userNo);
	 
	 void firstEntry(Member m);
	 
	 int exitRoom(ChatMessage chatMessage);
	 
	 int hideRoom(ChatUser cu);
	 
	 ChatUser selectHideUser(ChatMessage chatMessage); 
	 
	 int displayRoom(ChatUser cu);
	 
	 ChatUser opponentUser(ChatMessage chatMessage);
	 
	 int insertChatFile(ChatMessage cm);
	 
	 void updateFileName(ChatMessage chatMessage);
	 
	 ArrayList<Member> selectFriend(int userNo);
}
