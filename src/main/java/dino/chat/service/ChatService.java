package dino.chat.service;

import java.util.List;
import java.util.Map;

import dino.dto.ChatMessageDto;
import dino.dto.ChatRoomDto;
import dino.chat.model.ChatListVo;
import dino.chat.model.ChatMessageVo;

public interface ChatService {

	public List<ChatListVo> getList(int sessionIdx);

	public ChatRoomDto roomCheck(int sessionIdx, int receiverIdx);

	public int addChatRoom(int sessionIdx, int receiverIdx);

	public List<ChatMessageVo> getMessages(int roomIdx);

	public int saveChatMessage(ChatMessageDto chatMessageDto);

	public int updateReadNum(int roomIdx, int sessionIdx);

	public int getReadCount(int sIdx);

}

