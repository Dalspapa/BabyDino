<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>

<!-- 파비콘 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/common/img/favicon/favicon.png" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/common/img/favicon/favicon.png" type="image/x-icon">

<!-- 챗리스트 -->
<style type="text/css">
	body {
	  padding-top: 0;
	  font-size: 12px;
	  color: #777;
	  background: #f9f9f9;
	  font-family: 'Open Sans',sans-serif;
	  margin-top:20px;
	}
	
	.bg-white {
	  background-color: #fff;
	}
	
	.friend-list {
	  list-style: none;
	  margin-left: -40px;
	}
	
	.chat-title	{
	  text-align: center;
	  color: #68983b; 
	  margin-top: 10px;
	  margin-bottom: 10px;
	}
	
	.friend-list li {
	  border-bottom: 1px solid #eee;
	}
	
	.friend-list li a img {
	  float: left;
	  width: 45px;
	  height: 45px;
	  margin-right: 10px;
	}
	
	 .friend-list li a {
	  position: relative;
	  display: block;
	  padding: 10px;
	  transition: all .2s ease;
	  -webkit-transition: all .2s ease;
	  -moz-transition: all .2s ease;
	  -ms-transition: all .2s ease;
	  -o-transition: all .2s ease;
	}
	
	.friend-list li.active a {
	  background-color: #f1f5fc;
	}
	
	.friend-list li a .friend-name, 
	.friend-list li a .friend-name:hover {
	  color: #777;
	}
	
	.friend-list li a .last-message {
	  width: 65%;
	  white-space: nowrap;
	  text-overflow: ellipsis;
	  overflow: hidden;
	}
	
	.friend-list li a .time {
	  position: absolute;
	  top: 10px;
	  right: 8px;
	}
	
	small, .small {
	  font-size: 85%;
	}
	
	.friend-list li a .chat-alert {
	  position: absolute;
	  right: 8px;
	  top: 27px;
	  font-size: 10px;
	  padding: 3px 5px;
	}
	
	.chat-message {
	  padding: 60px 20px 115px;
	}
	
	.chat {
	    list-style: none;
	    margin: 0;
	}
	
	.chat-message{
	    background: #f9f9f9;  
	}
	
	.chat li img {
	  width: 45px;
	  height: 45px;
	  border-radius: 50em;
	  -moz-border-radius: 50em;
	  -webkit-border-radius: 50em;
	}
	
	img {
	  max-width: 100%;
	}
	
	.chat-body {
	  padding-bottom: 20px;
	}
	
	.chat li.left .chat-body {
	  margin-left: 70px;
	  background-color: #fff;
	}
	
	.chat li .chat-body {
	  position: relative;
	  font-size: 11px;
	  padding: 10px;
	  border: 1px solid #f1f5fc;
	  box-shadow: 0 1px 1px rgba(0,0,0,.05);
	  -moz-box-shadow: 0 1px 1px rgba(0,0,0,.05);
	  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
	}
	
	.chat li .chat-body .header {
	  padding-bottom: 5px;
	  border-bottom: 1px solid #f1f5fc;
	}
	
	.chat li .chat-body p {
	  margin: 0;
	}
	
	.chat li.left .chat-body:before {
	  position: absolute;
	  top: 10px;
	  left: -8px;
	  display: inline-block;
	  background: #fff;
	  width: 16px;
	  height: 16px;
	  border-top: 1px solid #f1f5fc;
	  border-left: 1px solid #f1f5fc;
	  content: '';
	  transform: rotate(-45deg);
	  -webkit-transform: rotate(-45deg);
	  -moz-transform: rotate(-45deg);
	  -ms-transform: rotate(-45deg);
	  -o-transform: rotate(-45deg);
	}
	
	.chat li.right .chat-body:before {
	  position: absolute;
	  top: 10px;
	  right: -8px;
	  display: inline-block;
	  background: #fff;
	  width: 16px;
	  height: 16px;
	  border-top: 1px solid #f1f5fc;
	  border-right: 1px solid #f1f5fc;
	  content: '';
	  transform: rotate(45deg);
	  -webkit-transform: rotate(45deg);
	  -moz-transform: rotate(45deg);
	  -ms-transform: rotate(45deg);
	  -o-transform: rotate(45deg);
	}
	
	.chat li {
	  margin: 15px 0;
	}
	
	.chat li.right .chat-body {
	  margin-right: 70px;
	  background-color: #fff;
	}
	
	.chat-box {
	  padding: 15px;
	  border-top: 1px solid #eee;
	  transition: all .5s ease;
	  -webkit-transition: all .5s ease;
	  -moz-transition: all .5s ease;
	  -ms-transition: all .5s ease;
	  -o-transition: all .5s ease;
	}
	
	.primary-font {
	  color: #3c8dbc;
	}
	
	a:hover, a:active, a:focus {
	  text-decoration: none;
	  outline: 0;
	}
</style>
	
<script>
function listView(userid) {
    let f = document.createElement('form');
    
    let obj;
    obj = document.createElement('input');
    obj.setAttribute('type', 'hidden');
    obj.setAttribute('name', 'userid');
    obj.setAttribute('value', userid);
    
    f.appendChild(obj);
    f.setAttribute('method', 'post');
    f.setAttribute('action', 'view.do');
    document.body.appendChild(f);
    f.submit();
}
</script>

<body>

<!-- 세션값 -->
<c:set var="sessionIdx" value="${ sessionScope.saveIdx }" />
<c:set var="sessionName" value="${ sessionScope.saveName }" />
<c:set var="sessionType" value="${ sessionScope.saveMemberType }" />

<div class="container bootstrap snippets bootdey">
    <div class="row">
		<div class="bg-white ">
            <div class=" row border-bottom padding-sm" style="height: 40px;">
           		<h4 class="chat-title">공 룡 톡</h4>
            </div>
          	<form name="chatForm" action="" onsubmit="return false;" method="post">
            <ul class="friend-list">			
            
				<!-- 문의하기 -->
				<li>
	                <a href="enterChatRoom.do?partnerIdx=1" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>공룡지기</strong>
                		</div>
                		<div class="last-message text-muted">궁금한게 있다면 저를 불러주세요 :)</div>
                		<small class="time text-muted">오전 9시 ~ 오후 6시</small>
                		<small class="chat-alert text-muted" id="connectionStatus"></small>
                	</a>
                </li>
                
	           	<c:if test="${ empty list }">
	          		<li>
	               		<h4 class="chat-title">${ msg }</h4>
	          		</li>
	          	</c:if>
                
                <!-- 챗룸 불러오기 -->
            	<c:forEach var="chatVo" items="${ list }">
            		
            		<!-- 필요한 변수들 -->
            		<c:set var="senderIdx" value="${ chatVo.sender }" />
            		<c:set var="senderName" value="${ chatVo.sender_name }" />
            		<c:set var="senderType" value="${ chatVo.sender_type }" />
            		<c:set var="receiverIdx" value="${ chatVo.receiver }" />
            		<c:set var="receiverName" value="${ chatVo.receiver_name }" />
            		<c:set var="receiverType" value="${ chatVo.receiver_type }" />
            		<c:set var="lastMIdx" value="${ chatVo.last_m_idx }" />
	                <c:set var="lastRead" value="${ chatVo.last_read }" />
	                
            		<!-- 보낸사람 이름으로 채팅방 출력 -->
           		  	<c:choose>
						<c:when test="${ sessionIdx == senderIdx }">
							 <c:set var="chatPartner" value="${ receiverName }" />
							 <c:set var="chatPartnerType" value="${ receiverType }" />
							 <c:set var="chatPartnerIdx" value="${ receiverIdx }" />
						</c:when>
						<c:otherwise>
							<c:set var="chatPartner" value="${ senderName }" />
							<c:set var="chatPartnerType" value="${ senderType }" />
							<c:set var="chatPartnerIdx" value="${ senderIdx }" />
						</c:otherwise>
					</c:choose>
					
					<!-- url -->
					<c:url var="enterChatRoom" value="enterChatRoom.do">
					    <c:param name="partnerIdx" value="${ chatPartnerIdx }"/>
					</c:url>
						
            		<!-- 채팅방 -->
	                <li class="active bounceInDown">
	                	<a href="${ enterChatRoom }" class="clearfix">
	                		<!-- 멤버타입별 사진 다르게. -->
	                		<c:choose>
								<c:when test="${ chatPartnerType == 1}">
									 <img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">
								</c:when>
								<c:when test="${ chatPartnerType == 2 || chatPartnerType == 3 || chatPartnerType == 8}">
									 <img src="https://bootdey.com/img/Content/user_6.jpg" alt="" class="img-circle">
								</c:when>
								<c:otherwise>
									<img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
								</c:otherwise>
							</c:choose>
	                		
	                		<!-- 파트너 이름 -->             		
                			<div class="friend-name">	
                				<strong>${ chatPartner }</strong>
                			</div>
                			
                			<!-- 마지막으로 남긴 메시지 -->
	                		<div class="last-message text-muted">${ chatVo.last_message }</div>
	                		
	                		<!-- 마지막 채팅 보낸 시간 -->
	                		<small class="time text-muted">${ chatVo.last_send_time }</small>
	                		
	                		<!-- 새로운 메시지 알림 -->
	                		<c:if test="${ sessionIdx != lastMIdx && lastRead == 1 }">
	                			<small class="chat-alert label label-danger" style="color:red;">NEW</small>
	                		</c:if>
	                	</a>
	                </li>
	            </c:forEach>    
	            </ul>
            </form>
		</div>
	</div>
</div>

  <!-- 챗룸 버튼 -->
  <div id="chatRoom ">
    <a class="nav-link clearfix" href="#" data-bs-toggle="modal" data-bs-target="#chatModal">
     	
    </a>
  <!-- ./챗룸 버튼 -->
  </div>

  <!-- 챗룸 Modal -->
  <div class="modal fade" id="chatModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">채팅</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div id="chatBox">
           	<%@ include file="chatRoom.jsp" %>
          </div>
        </div>
      </div>
    </div>
  <!-- ./챗룸 Modal -->
  </div>

<!-- 제이쿼리 js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
<script type="text/javascript">
	var theHours = fnGetTime();
	
	if (theHours >= 9 && theHours <= 18) {
		$('#connectionStatus').append(
			'online' + ' <i class="fa fa-check" style="color: #80E12A ">' + '</i>'		
		);
	} else {
		$('#connectionStatus').append(
				'offline' + ' <i class="fa fa-check" style="color: grey ">' + '</i>'		
		);
	}

	function fnGetTime() {
		var currentNow = new Date();
		var theHours = currentNow.getHours();
	
		return theHours;
	}
</script>  
  
</body>  
</html>

