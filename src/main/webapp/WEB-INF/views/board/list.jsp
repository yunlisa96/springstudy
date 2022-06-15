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
<c:forEach var="list" items="${list}" varStatus="status">
<p>${status.count} : <c:out value="${list.title}" />
</p>
</c:forEach>
</body>
</html>