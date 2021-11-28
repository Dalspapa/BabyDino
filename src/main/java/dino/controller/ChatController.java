package dino.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dino.dto.ChatMessage;
import dino.service.ChatService;

@Controller
public class ChatController {
	@Autowired
	ChatService chatService;
	
	@RequestMapping("/chatRoom.do")
	public String showRoom(int roomId, Model model) {
		model.addAttribute("roomId", roomId);
		
		return "chat/room";
	}
	
	@RequestMapping("/doClearAllMessages.do")
	@ResponseBody
	public Map doClearAllMessages() {
		chatService.clearAllMessages();
		
		Map rs = new HashMap();
		
		rs.put("resultCode", "S-1");
		rs.put("msg", "모든 메세지들을 삭제 하였습니다.");
		
		return rs;
		
	}
	
	@RequestMapping("/doAddMessage.do")
	@ResponseBody
	public Map doAddMessage(int roomId, String writer, String body) {
		Map rs = new HashMap();
		
		chatService.addMessage(roomId, writer, body);
		
		rs.put("resultCode", "S-1");
		rs.put("msg", "채팅 메시지가 추가되었습니다.");
		
		return rs;
	}
	
	@RequestMapping("/getAllMessages.do")
	@ResponseBody
	public List getAllMessages() {
		return chatService.getAllMessages();
	}
	
	@RequestMapping("/getMessagesFrom.do")
	@ResponseBody
	public Map getMessages(int roomId, int from) {
		List<ChatMessage> messages = 
				chatService.getMessagesFrom(roomId, from);
		
		Map rs = new HashMap();

		rs.put("resultCode", "S-1");
		rs.put("msg", "새 메세지들을 가져왔습니다.");
		rs.put("messages", messages);

		return rs;
	}
	
}
