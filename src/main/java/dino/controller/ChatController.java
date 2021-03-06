package dino.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dino.chat.model.ChatListVo;
import dino.chat.model.ChatMessageVo;
import dino.chat.service.ChatService;
import dino.dto.ChatMessageDto;
import dino.dto.ChatRoomDto;

@Controller
public class ChatController {
	
	@Autowired
	private ChatService chatService;
	
	//채팅 리스트 가져오기
	@RequestMapping("/chatList.do")
	public ModelAndView showChatList(HttpSession session) {

		Object sessionIdxObj = session.getAttribute("saveIdx");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chatList");

		if (sessionIdxObj != null) {

			List<ChatListVo> list = chatService.getList(Integer.parseInt(sessionIdxObj.toString()));

			//Test Code
			System.out.println("::: 채팅리스트 컨트롤러 수행됨 :::");
			System.out.println("ChatController -> list : " + list);

			mav.addObject("list", list);

		} else {
			mav.addObject("msg", "채팅 내역이 없어요 :)");
		}

		return mav;
	}

	//채팅방 입장, 없으면 생성.
	@RequestMapping(value = "/enterChatRoom.do")
	public ModelAndView enterChatRoom(HttpSession session, @RequestParam("partnerIdx") int partnerIdx) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chatRoom");

		int sessionIdx = 0;
		if(session.getAttribute("saveIdx") != null) {
			sessionIdx = Integer.parseInt((String)session.getAttribute("saveIdx").toString());
		}

		//채팅방에서 상대방 정보확인
		mav.addObject("partnerIdx", partnerIdx);

		//챗룸 존재하는지 조회 및 방정보 가져오기
		ChatRoomDto chatRoomDto = chatService.roomCheck(sessionIdx, partnerIdx);

		if (chatRoomDto == null) {
			int result = chatService.addChatRoom(sessionIdx, partnerIdx);
			String msg = result > 0 ? "생성 성공" : "생성 실패";

			System.out.println("::: 챗룸 생성 컨트롤러 수행됨 :::" + msg); //Test Code

			//방금 만든 roomIdx 가져오기
			ChatRoomDto roomDto = chatService.roomCheck(sessionIdx, partnerIdx);
			int roomIdx = roomDto.getIdx();

			session.setAttribute("roomIdx", roomIdx);
			System.out.println("세션에 새로운 방정보 저장됨::" + roomIdx);

			System.out.println("::::::new chatRoom Idx ::::::" + roomIdx); //Test Code
			mav.addObject("roomIdx", roomIdx);
			return mav;

		//챗룸 존재하면 해당 룸으로 이동
		} else {
			int roomIdx = chatRoomDto.getIdx();

			System.out.println("::: 챗룸 이동 :::" + roomIdx); //Test Code

			session.setAttribute("roomIdx", roomIdx);
			System.out.println("세션에 기존 방정보 저장됨::" + roomIdx);

			//기존대화 내역 불러오기
			List<ChatMessageVo> messageList = chatService.getMessages(roomIdx);
			System.out.println("Chat Message List >>>>>>>>>>>>>>>>>>>>>>>>" + messageList);
			
			//리드컬럼 업데이트 상대 메시지 읽음 확인처리
			int updateResult = chatService.updateReadNum(roomIdx, sessionIdx);
			System.out.println("###INFO::::::업뎃 결과 ####" + updateResult);

			mav.addObject("messageList", messageList);
			mav.addObject("roomIdx", roomIdx);
			return mav;
		}

	}
	
	
	/** 채팅 메시지 DB 저장
	 * @param chatMessageDto
	 * @return
	 */
	@RequestMapping("/saveChatMessage.do")
	@ResponseBody
	public int saveChatMessage(ChatMessageDto chatMessageDto, HttpSession session) {
		
		//메시지 테이블 인서트
		int result = chatService.saveChatMessage(chatMessageDto);
		System.out.println("###INFO::::::DB저장 결과 ####" + result);
		
		return result;
	}
	
	/** 채팅알람 카운트
	 * @param session Idx
	 * @return count
	 */
	@RequestMapping("/chatAlarm.do")
	@ResponseBody
	public int getReadCount(@RequestParam(value = "sIdx", defaultValue = "0") int sIdx) {
		
		int readCnt = chatService.getReadCount(sIdx);
		System.out.println("###INFO### : 알림카운트 :::::::" + readCnt);
		
		return readCnt;
	}
	
	/** 상담완료시 상태 업데이트
	 * @param tIdx, pIdx
	 * @return result
	 */
	@RequestMapping("/statusUpdForChat.do")
	@ResponseBody
	public int updateStatusForChat(@RequestParam Map<String, Object> params) {
		
		int Resert = chatService.updateStatusForChat(params); 
		System.out.println("###INFO### : 채팅상태변경 결과 :::::::" + Resert);
		
		return Resert;
	}
}
