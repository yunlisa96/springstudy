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
    <thead> <tr> 
        <th>번호</th> 
        <th>아이디</th>
        <th>등록일</th> 
        </tr> 
        </thead> 
    <tbody>
<c:forEach var="user" items="${list}" varStatus="status">
<tr>
    <td>${status.count}</td>
    <td>${user.id}</td>
    <td>${user.rgstr_date}</td>
</tr>
</c:forEach>
</tbody>
</table>
<input type="button" value="등록" onclick="location.href='/signup'"/>
</body>
<%-- <script>
window.onload = function(){
    const msg = "${msg}";
    console.log("msg===="+msg);
    if(msg != ""){
        alert(msg);
    }
}
</script> --%>
</html>