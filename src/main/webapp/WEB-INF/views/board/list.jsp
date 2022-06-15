<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
    <table border="1">
<c:forEach var="list3" items="${list}" varStatus="status">
<tr>
    <td>${status.count}</td>
    <td>${list3.title}</td>
    <td>${list3.user_id}</td>
    <td>${list3.rgstr_date}</td>
</tr>
</c:forEach>
</table>
</body>
</html>