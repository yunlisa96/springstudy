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
<form name="frm" id="frm">
제목:  <c:out value="${board.title}" /> <br/>
작성자: <c:out value="${board.user_id}" /> <br/>
조회수: <c:out value="${board.view_cnt}" /> <br/>
작성일: <c:out value="${board.rgstr_date}" /> <br/>
내용: <c:out value="${board.content}" /> <br/>
<input type="button" value="수정" onclick="location.href='/editpage?seq=${board.seq}'"/>
<input type="button" value="삭제" onclick="location.href='/delete?seq=${board.seq}'"/>
<input type="button" value="목록" onclick="location.href='/list'"/>
</form>
</body>
<script>
    function insert(){
        const title = document.getElementById("title").value;
        const content = document.getElementById("content").value;
        const user_id = document.getElementById("user_id").value;
        if(title == ""){
            alert("제목을 입력해주세여.");
            return false;
        }
        if (content == ""){
            alert("내용 입력");
            return false;
        }
        if(user_id == "") {
            alert("아이디 입력");
            return false;
        }
document.getElementById("frm").method="post";
document.getElementById("frm").action="/insert";
document.getElementById("frm").submit();
        alert("success");
    }
</script>
</html>