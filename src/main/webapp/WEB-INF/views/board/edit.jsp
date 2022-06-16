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
<input type="hidden" id="seq" name="seq" value="<c:out value='${board.seq}' />" />
제목:  <input type="text" id="title" name="title" value="<c:out value='${board.title}' />"/> <br/>
작성자: <input type="text" id="user_id" name="user_id" readonly value="<c:out value='${board.user_id}' />"/> <br/>
조회수: <input type="text" id="view_cnt" name="view_cnt" readonly value="<c:out value='${board.view_cnt}' />"/> <br/>
작성일: <input type="text" id="rgstr_date" name="rgstr_date" readonly value="<c:out value='${board.rgstr_date}' />"/> <br/>
내용: <textarea id="content" name="content"
          rows="20" cols="33">
<c:out value='${board.content}' />
</textarea><br/>
<input type="button" value="수정" onclick="update();"/>
<input type="button" value="목록" onclick="location.href='/list'"/>
</form>
</body>
<script>
    function update(){
        const title = document.getElementById("title").value;
        const content = document.getElementById("content").value;
        // const user_id = document.getElementById("user_id").value;
        if(title == ""){
            alert("제목을 입력해주세여.");
            return false;
        }
        if (content == ""){
            alert("내용 입력");
            return false;
        }
        // if(user_id == "") {
        //     alert("아이디 입력");
        //     return false;
        // }
document.getElementById("frm").method="post";
document.getElementById("frm").action="/edit";
document.getElementById("frm").submit();
        alert("success");
    }
</script>
</html>