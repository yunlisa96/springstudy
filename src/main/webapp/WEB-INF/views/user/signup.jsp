<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
<%@ include file="../common/menu.jsp" %>
<form name="frm" id="frm">
id: <input type="text" id="id" name="id" /> <br/>
pw: <input type="password" id="pw" name="pw" /><br/>
email: <input type="text" id="email" name="email" /><br/>
tel: <input type="text" id="tel" name="tel" /><br/>
address: <input type="text" id="address" name="address" /><br/>

<input type="button" value="등록" onclick="insert();"/>
</form>
</body>
<script>
    function insert(){
        const id = document.getElementById("id").value;
        const pw = document.getElementById("pw").value;
        const email = document.getElementById("email").value;
        const tel = document.getElementById("tel").value;
        const address = document.getElementById("address").value;
        if(id == ""){
            alert("아이디를 입력해주세여.");
            return false;
        }
        if (pw == ""){
            alert("pw 입력");
            return false;
        }
        if(email == "") {
            alert(" e입력");
            return false;
        }
         if(tel == "") {
            alert(" t입력");
            return false;
        }
         if(address == "") {
            alert(" a입력");
            return false;
        }
document.getElementById("frm").method="post";
document.getElementById("frm").action="/adduser";
document.getElementById("frm").submit();
        alert("success");
    }
</script>
</html>