<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${empty KidsList }">
	<h2 align="center">원하는 아이가 없습니다.</h2>
</c:if>
<c:forEach var="kDto" items="${ KidsList }">
	<div class="col-4 kid-card p-2" id="${kDto.idx}">
		<!-- 카드정보[START] -->
		<!-- filp01 -->
		<div class="flip-card col-lg">
				<c:url var = "contentUrl" value="kidsContent.do">
					<c:param name="idx">${kDto.idx}</c:param>
				</c:url>
			<div class="flip-card-inner" onclick="location.href='${ contentUrl }'">
				<div class="flip-card-front">
					<div class="mb-2">
						<img src="/upload/${fn:replace(kDto.c_imgpath, ',', '')}" alt="선생님 사진" onerror="this.remove();"><br>
						<input type="hidden" name="idx" value="${ kDto.idx }">
						<h5 id="tendetcy">
						<c:set  var="careType" value="${kDto.k_care_type}" />
						<c:forEach items="${fn:split(careType, ',') }" var="item">
							#${item}&nbsp;&nbsp;
						</c:forEach>
						</h5>
					</div>
					<div>
						<h6 class="text-warning" id="title">${kDto.k_name } / ${kDto.age}세 /
							<c:if test="${kDto.k_gender == 1 }">
								여아
							</c:if>
							<c:if test="${kDto.k_gender == 2 }">
								남아
							</c:if>
						</h6>
						<h6 id="info">${kDto.addr2}</h6>
					</div>
				</div>
				<div class="flip-card-back ">
					<h1 id="name">${kDto.k_name}</h1>
					<p id="tendency">
						${kDto.k_introduce}
					</p>
					<ul>
						<li id="palyday">이날 만났으면 좋겠어요~</li>
						<li id="playday">${kDto.start_day}일 ~ ${kDto.end_day}일<br></li>
						<li id="playtime">${kDto.start_time}시 ~ ${kDto.end_time}시</li>
						<li id="cost"><fmt:formatNumber value="${kDto.cost}" pattern="#,###" />원  / 협의가능</li>
					</ul>
				</div>
			</div>
			<!-- ./ filp01 -->
		</div>
		<!-- 카드정보[END] -->
	</div>
</c:forEach>	
		
	


			
	


