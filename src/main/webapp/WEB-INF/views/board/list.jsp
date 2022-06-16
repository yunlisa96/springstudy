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
        <th>제목</th>
        <th>작성자</th> 
        <th>작성일</th> 
        <th>조회수</th> 
        </tr> 
        </thead> 
    <tbody>
<c:forEach var="list3" items="${list}" varStatus="status">
<tr>
    <td>${status.count}</td>
    <td><a href="/view?seq=${list3.seq}">${list3.title}</a></td>
    <td>${list3.user_id}</td>
    <td>${list3.rgstr_date}</td>
    <td>${list3.view_cnt}</td>
</tr>
</c:forEach>
</tbody>
</table>
<input type="button" value="등록" onclick="location.href='/insertpage'"/>
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