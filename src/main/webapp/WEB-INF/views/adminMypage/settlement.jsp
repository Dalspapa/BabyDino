<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님 정산페이지</title>
<link href="../common/css/startbootstrapstyles.css" rel="stylesheet" />
<style>
.size {
	width: 1000px;
	height: 500px;
}
</style>
</head>
 <!-- header -->
	<%@include file="/header.jsp" %>
	<div class="card size">
	    <div class="card-header">
	        <i class="fas fa-chart-area me-1"></i>
	        	선생님 정산 현황  
	    </div>
	    <div class="card-body">
	    	<canvas id="myAreaChart" width="100%" height="40"></canvas>
	    </div>
	</div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../common/js/startbootstrapscripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script>
	    	 // Area Chart Example
	        var ctx = document.getElementById("myAreaChart");
	        var myLineChart = new Chart(ctx, {
	          type: 'line',
	          data: {
	            labels: ["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7", "Mar 8", "Mar 9", "Mar 10", "Mar 11", "Mar 12", "Mar 13", "Mar 29"],
	            datasets: [{
	              label: "정산금액",
	              lineTension: 0.3,
	              backgroundColor: "rgba(2,117,216,0.2)",
	              borderColor: "rgba(2,117,216,1)",
	              pointRadius: 5,
	              pointBackgroundColor: "rgba(2,117,216,1)",
	              pointBorderColor: "rgba(255,255,255,0.8)",
	              pointHoverRadius: 5,
	              pointHoverBackgroundColor: "rgba(2,117,216,1)",
	              pointHitRadius: 50,
	              pointBorderWidth: 2,
	           
	              data: ["${c_list[0].cost}", "${c_list[1].cost}", "${c_list[2].cost}", "${c_list[3].cost}", "${c_list[4].cost}", "${c_list[5].cost}", "${c_list[6].cost}", "${c_list[7].cost}", 25849, 24159, 32651, 31984, 38451, 19930],
	            }],
	          },
	          options: {
	            scales: {
	              xAxes: [{
	                time: {
	                  unit: 'date'
	                },
	                gridLines: {
	                  display: false
	                },
	                ticks: {
	                  maxTicksLimit: 7
	                }
	              }],
	              yAxes: [{
	                ticks: {
	                  min: 0,
	                  max: 40000,
	                  maxTicksLimit: 5
	                },
	                gridLines: {
	                  color: "rgba(0, 0, 0, .125)",
	                }
	              }],
	            },
	            legend: {
	              display: false
	            }
	          }
	        });
        </script>
    </body>
				
<!-- 변경하기 버튼 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">선생님 수수료 변경</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <input type = "text">
        <button type = "button">변경완료</button>
      </div>
    </div>
  </div>
</div>
 <!-- footer -->
	<%@include file="/footer.jsp" %>
</html>