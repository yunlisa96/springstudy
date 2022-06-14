<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
aaaaaa<br/>
<form name="frm" id="frm">
title: <input type="text" id="title" name="title" /> <br/>
content: <input type="text" id="content" name="content" /><br/>
user_id: <input type="text" id="user_id" name="user_id" /><br/>
<input type="button" value="등록" onclick="insert();"/>
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