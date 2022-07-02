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
<%@ include file="../common/menu.jsp" %>
<form name="frm" id="frm">
<input type="hidden" id="seq" name="seq" value="<c:out value='${user.seq}' />" />
id:  <input type="text" id="id" name="id" value="<c:out value='${user.id}' />"/> <br/>
pw: <input type="password" id="pw" name="pw" value="<c:out value='${user.pw}' />"/> <br/>
email: <input type="text" id="email" name="email" value="<c:out value='${user.email}' />"/> <br/>
tel: <input type="text" id="tel" name="tel" value="<c:out value='${user.tel}' />"/> <br/>
address: <textarea id="address" name="address"
          rows="20" cols="33">
<c:out value='${user.address}' />
</textarea><br/>
<input type="button" value="수정" onclick="update();"/>
<input type="button" value="목록" onclick="location.href='/signuplist'"/>
</form>
</body>
<script>
    function update(){
        // const title = document.getElementById("title").value;
        // const content = document.getElementById("content").value;
        // // const user_id = document.getElementById("user_id").value;
        // if(title == ""){
        //     alert("제목을 입력해주세여.");
        //     return false;
        // }
        // if (content == ""){
        //     alert("내용 입력");
        //     return false;
        // }
        // if(user_id == "") {
        //     alert("아이디 입력");
        //     return false;
        // }
            document.getElementById("frm").method="post";
            document.getElementById("frm").action="/useredit2";
            document.getElementById("frm").submit();
        alert("success");
    }
</script>
</html>