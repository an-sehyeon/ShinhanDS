<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="empAll.js"></script>
<script>
$(()=>{
	// ()=> {} 화살표함수에서 this는 window, bind()함수로 object를 bind()하여 this설정가능
	$("#search").on("keyup",function(){
		var inputData = $(this).val();
		console.log(inputData);
		$("tbody tr").hide();
		$(`td:contains(\${inputData})`).parent().show();		// <tr><td>aa</td></tr>
	});
	
	
});
</script>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<title>emp_all_list</title>
<style>
	h1 { text-align: center; margin-top: 20px; }
	table, th, td {
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	
	h2 { text-align: center; }
	
	th, td { padding: 3px; }
	
	thead tr { background: #EADCF8; border-bottom: 2px solid black; }
	
	tbody tr:nth-child(2n){ background-color: #DFF5E1;}
	tbody tr:nth-child(2n+1) { background-color: #FFE5EC; }
	
	/* td[first_name *= 'e'] { background-color: #FFE65A; }
	
	td[email ^= 'S'] { background-color: #BEF5BE; }
	
	td[dept_id *= '60'] { background-color: skyblue; }
	
	td[salary_over_8000 = 'true'] { background-color: pink; }  */
	
	#container {
		width: 1000px;
		margin: 0 auto;
	}
	
</style>
</head>
<body>
  <div id="container">
	<h1 class="title">직원목록 조회</h1>
	<button type="button" onclick="location.href='/web/day01/jsp/empinsert.jsp'" class="btn btn-success">신규직원등록</button>
	<button type="button" onclick="location.href='/web/index.html'" class="btn btn-info">컴백홈</button>
	<hr>
	급여: <input type="number" id="salaryInput">이상
	<button id="selectbtn">직원찾기(스타일변경)</button>
	<button id="resetbtn">초기화</button>
	<br>
	찾을문자 <input type="text" id="search">
	<br><br>
	<hr>
	<div id="s_list"></div>
	<br><br>
	<table>
		<thead>
			<tr>
				<th>직원번호</th>
				<th>이름</th>
				<th>성</th>
				<th>이메일</th>
				<th>급여</th>
				<th>부서</th>
				<th>커미션</th>
				<th>매니저</th>
				<th>전화번호</th>
				<th>직책</th>
				<th>입사일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<!-- 
			HTML주석 : HTML해석기가 해석안함을 의미, ${aa}
			<%-- JSP주석 : JSP해석기가 해석안함을 의미, Tomcat이 JSP를 해석후 HMTL로 만든다.
			HTML문서는 남지않는다. ${} --%> 
			-->
			<c:forEach items="${ emplist }" var="emp">
				<tr>
					<td><a href="empdetail.do?empid=${emp.employee_id}">${emp.employee_id}</a></td>
					<td>${emp.first_name}</td>
					<td>${emp.last_name}</td>
					<td>${emp.email}</td>
					<td>${emp.phone_number}</td>
					<td>${emp.hire_date}</td>
					<td>${emp.job_id}</td>
					<td>${emp.salary}</td>
					<td>${emp.commission_pct}</td>
					<td>${emp.manager_id}</td>
					<td>${emp.department_id}</td>
					<td><a href="">🗑️</a></td>
				</tr>
			</c:forEach>
		</tbody>	
	</table>
  </div>
</body>
</html>