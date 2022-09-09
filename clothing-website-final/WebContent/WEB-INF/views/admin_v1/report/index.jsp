<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Thống kê</title>
	<%@ include file="/WEB-INF/views/admin_v1/layout/head.jsp"%>
</head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<body>
	<div class="container">
	<nav class="row">
		<%@ include file="/WEB-INF/views/admin_v1/layout/menu.jsp"%>
	</nav>
	<canvas id="myChart" style="width:200%;max-width:1000px"></canvas>
	<script>
	var xValues = ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"];
	var yValues = [55, 49, 44, 24, 15, 30, 35, 20, 40, 35, 50, 45, 0];
	var barColors = ["red","red","orange","orange","yellow","yellow","green","green","blue","blue","purple","purple"];
	
	new Chart("myChart", {
	  type: "bar",
	  data: {
	    labels: xValues,
	    datasets: [{
	      backgroundColor: barColors,
	      data: yValues
	    }]
	  },
	  options: {
	    legend: {display: false},
	    title: {
	      display: true,
	      text: "Thống kê doanh thu của từng tháng trong năm"
	    }
	  }
	});
	</script>
	<footer class="row">
		<%@ include file="/WEB-INF/views/admin_v1/layout/footer.jsp"%>
	</footer>
	</div>
</body>
</html>