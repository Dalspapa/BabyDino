<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<!-- pignose-calendar -->
<link rel="stylesheet" href="css/pignose.calendar.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="js/pignose.calendar.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<style>
.pignose-calendar-unit-disabled a{color:red !important}
</style>

<style>
   .isTest {
      background-color: red;
   }
</style>
<body>

<div class="container">

   <!-- 필터[START] -->
   <div class="row p-5" style="justify-content: center;">
      <div class="col-8">
         <div class="p-4" style="border: 1px solid #e5e5e5; border-radius: 20%;">
            <div class="row">
               <div class="col-6">
                  <div class="row" style="justify-content: space-between;">
                     <div style="width: 20%; border: 1px solid red; height: 30px;" name="cDiv" id="first" onclick="changeDiv('first')">1</div>
                     <div style="width: 20%; border: 1px solid red; height: 30px;" name="cDiv" id="second" onclick="changeDiv('second')">2</div>
                     <div style="width: 20%; border: 1px solid red; height: 30px;" name="cDiv" id="third" onclick="changeDiv('third')">3</div>
                     <div style="width: 20%; border: 1px solid red; height: 30px;" name="cDiv" id="four" onclick="changeDiv('four')">4</div>
                  </div>
                  
                  <button onclick="check()">check</button>
                  
                  
                  <script>
                     function changeDiv(val) {
                        var a = document.getElementById(val);
                        
                        if(a.classList.contains('isTest')){
                           a.classList.remove('isTest');
                         } else {
                            a.classList.add('isTest');
                         }
                     }
                     
                     function check() {
                        var a = document.getElementsByName('cDiv')
                        var b = [];
                        for(var i = 0; i < a.length; i++ ) {
                           
                           if(a[i].classList.contains('isTest')) b.push(a[i].id)
                        };
                        console.log("-- selected : ", b);
                     }
                  </script>
                  
                  
                  <div class="row mt-4">
                     <div class="form-check w-50">
                        <input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault1"/>
                        <label class="form-check-label" for="flexCheckDefault1">등하원</label>
                     </div>
                     <div class="form-check w-50">
                        <input class="form-check-input" type="checkbox" value="2" id="flexCheckDefault2"/>
                        <label class="form-check-label" for="flexCheckDefault2">놀이</label>
                     </div>
                     <div class="form-check w-50">
                        <input class="form-check-input" type="checkbox" value="3" id="flexCheckDefault3"/>
                        <label class="form-check-label" for="flexCheckDefault3">학습</label>
                     </div>
                     <div class="form-check w-50">
                        <input class="form-check-input" type="checkbox" value="4" id="flexCheckDefault4"/>
                        <label class="form-check-label" for="flexCheckDefault4">기타</label>
                     </div>
                  </div>
               </div>

               <!--  날짜 -->
               <div class="col-6">
                  
               </div>
            </div>
         </div>
      </div>
   </div><!-- 필터[END] -->
   
   
   <hr/>
         
   <!-- 하단 정보[START] -->   
   <div class="row">
      <c:forEach begin="1" end="10">
         <div class="col-4 p-2">
            <!-- 카드정보[START] -->
            <div style="border: 1px solid red; height: 80px;">
               
            </div><!-- 카드정보[END] -->
         </div>
      </c:forEach>
      
   
   </div><!-- 하단 정보[START] -->
   
</div>
   
   
   

</body>
<script>
$('.calendar').pignoseCalendar({
	lang: 'ko',
	minDate: moment().format("YYYY-MM-DD"),
	format: 'YYYY.MM.DD'
	});
</script>
</html>