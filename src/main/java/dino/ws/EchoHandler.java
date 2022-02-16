package dino.ws;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler {

	private Map<String, ArrayList<WebSocketSession>> roomList;
	private ArrayList<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	public EchoHandler() {
		if (roomList == null || roomList.isEmpty()) {
			roomList = new HashMap<String, ArrayList<WebSocketSession>>();
			System.out.println("### INFO : 새로운 소켓이 시작되었습니다.");
		}
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {

		sessionList = new ArrayList<WebSocketSession>();
		boolean isExistRoom = false;
		Map<String, Object> sessionInfo = this.getSessionInfo(session);
		String sessionRoomIdx = sessionInfo.get("roomIdx").toString();
		String roomIdx = null;

		if (sessionInfo.get("saveName") == null) {
			System.out.println("### INFO : 로그인상태가 아닙니다.");
			return;
		}

		//방존재여부 확인
		Iterator<String> roomIter = roomList.keySet().iterator();
		
		while (roomIter.hasNext()) {
			roomIdx = (String)roomIter.next();

			if (sessionRoomIdx.equals(roomIdx)) {
				isExistRoom = true;
				break;
			}
		}
		
		if (isExistRoom) { //이미방이 존재하면 해당 방에 입장합니다.
			System.out.println("### INFO : " + sessionRoomIdx + "번 방에 " + sessionInfo.get("saveName") + "님이 입장하였습니다.");
			sessionList = roomList.get(roomIdx);
			
			if (!sessionList.contains(session)) {
				sessionList.add(session);
				roomList.put(sessionRoomIdx, sessionList);
			}
			
			return;
		}

		if (!sessionList.contains(session)) {
			sessionList.add(session);
		}
		
		roomList.put(sessionRoomIdx, sessionList);
	}

	@Override
	@SuppressWarnings("rawtypes")
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		Map<String, Object> sessionInfo = this.getSessionInfo(session);
		String sessRoomIdx = sessionInfo.get("roomIdx").toString();
		
		//index[i] = name, type, message
		String msg = sessionInfo.get("saveName") + "," + sessionInfo.get("saveMemberType") + "," + message.getPayload();
		Iterator roomIdxList = roomList.keySet().iterator(); 

		//방별 세션에 메세지 전달처리.
		while (roomIdxList.hasNext()) { //방 리스트
			String roomIdx = (String)roomIdxList.next();

			//내가 진입한 방에만 메세지 전달처리.
			if (!StringUtils.isEmpty(roomIdx) && sessRoomIdx.equals(roomIdx)) {
				sessionList = roomList.get(roomIdx);
				for (WebSocketSession sess : sessionList) {
					System.out.println("### INFO : 참여명수 : " + sessionList.size() + "명");
					System.out.println("### INFO : " + roomIdx + "번 방에 보내는 " + sessionInfo.get("saveName") + "님의  메세지: " + msg);
					if (!session.equals(sess)) {
						sess.sendMessage(new TextMessage(msg));
					}
				}
			}
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		String roomIdx;

		if (this.getSessionInfo(session) != null && this.getSessionInfo(session).get("roomIdx") != null) {
			roomIdx = this.getSessionInfo(session).get("roomIdx").toString();
			try {
				System.out.println("### INFO : 방에서 나갑니다. 방번호: " + roomIdx);
				if (sessionList.contains(session)) {
					sessionList.remove(session);
				}
			} catch (Exception e) {
				System.out.println("### INFO : 이미 종료된 대화방입니다. 방번호: " + roomIdx);
			}

		}
	}


	/**
	 * 세션정보 조회
	 * @param session
	 * @return
	 */
	private Map<String, Object> getSessionInfo(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		return httpSession;
	}
	
}
