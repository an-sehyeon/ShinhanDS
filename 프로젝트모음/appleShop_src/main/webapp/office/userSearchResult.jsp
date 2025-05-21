<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
    <thead>
        <tr>
            <th>접수번호</th>
            <th>이름</th>
            <th>주민번호</th
            ><th>전화번호</th>
            <th>주소</th>
            <th>평수</th>
            <th>총점</th>
            <th>순위</th>
            <th>삭제</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${userinfolist}" var="office">
            <tr>
                <td>${office.bno}</td>
                <td>${office.name}</td>
                <td>${office.reg_no}</td>
                <td>${office.phone}</td>
                <td>${office.address}</td>
                <td>${office.housing_area}</td>
                <td>${office.total_score}</td>
                <td>${office.area_rank}</td>
                <td><a href="#">🗑️</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>