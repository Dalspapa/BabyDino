<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${ sessionScope.saveName }</title>
	
	<!-- 채팅ui -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 부트스트랩 css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<!-- 제이쿼리 js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
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
		/*
		  position: fixed;
		  bottom: 0;
		  left: 444px;
		  right: 0;
		*/
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
	
</head>

<script>
function listView(userid){
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
          	<input type="hidden" value="${ 1 }" />
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
                		<small class="chat-alert text-muted">online <i class="fa fa-check" style="color: #80E12A "></i></small>
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
            		<c:set var="lastMIdx" value="${ chatVo.message_idx }" />
	                <c:set var="lastRead" value="${ chatVo.read }" />
	                
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
								<c:when test="${ chatPartnerType == 4}">
									 <img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
								</c:when>
								<c:otherwise>
									<img src="https://bootdey.com/img/Content/user_6.jpg" alt="" class="img-circle">
								</c:otherwise>
							</c:choose>
	                		
	                		<!-- 파트너 이름 -->             		
                			<div class="friend-name">	
                				<strong>${ chatPartner }</strong>
                			</div>
                			
                			<!-- 마지막으로 남긴 메시지 -->
	                		<div class="last-message text-muted">${ chatVo.message }</div>
	                		
	                		<!-- 마지막 채팅 보낸 시간 -->
	                		<small class="time text-muted">${ chatVo.send_time }</small>
	                		
	                		<!-- 새로운 메시지 알림 -->
	                		<c:if test="${ sessionIdx != lastMIdx && read == 1 }">
	                			<small class="chat-alert label label-danger">NEW</small>
	                		</c:if>
	                	</a>
	                </li>
	            </c:forEach>    
	            <!-- </ul> -->
	            </form>
	            <!-- ---------------------------------------------------- -->   
	                
	            <li>
                	<a href="goChatRoom.do?roomIdx=1" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Jane Doe</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">5 mins ago</small>
                	<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
                	</a>
                </li> 
                <li>
                	<a href="goChatRoom.do?roomIdx=2" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_3.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Kate</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">Yesterday</small>
                		<small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                	</a>
                </li>  
                <li>
                	<a href="goChatRoom.do?roomIdx=3" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Kate</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">Yesterday</small>
                		<small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                	</a>
                </li>     
                <li>
                	<a href="#" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Kate</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">Yesterday</small>
                		<small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                	</a>
                </li>        
                <li>
                	<a href="#" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_6.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Kate</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">Yesterday</small>
                		<small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                	</a>
                </li>          
                <li>
                	<a href="#" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_5.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Kate</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">Yesterday</small>
                		<small class="chat-alert text-muted"><i class="fa fa-reply"></i></small>
                	</a>
                </li>
                <li>
                    <a href="#" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Jane Doe</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">5 mins ago</small>
                	<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
                	</a>
                </li>  
              
            </ul>
           
           
           
            
		</div>
	</div>
</div>


<!-- 채팅방 누르면 챗룸으로 이동 -->
  <!-- 챗룸 버튼 -->
  <div id="chatRoom">
    <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#chatModal">
     	누르면 이동
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
           <%--  <%@ include file="chatRoom.jsp" %> --%>
          </div>
        </div>
      </div>
    </div>
  <!-- ./챗룸 Modal -->
  </div>

</body>
</html>