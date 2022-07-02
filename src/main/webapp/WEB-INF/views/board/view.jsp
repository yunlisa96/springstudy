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
    <div class="card card-body blur shadow-blur mx-3 mx-md-4 mt-n6 mb-4">
    <section class="py-sm-7 py-5 position-relative">
        <div class="container">
        <div class="row">
        <div class="col-12 mx-auto">
        <div class="mt-n8 mt-md-n9 text-center">
        <img class="avatar avatar-xxl shadow-xl position-relative z-index-2" src="../assets/img/bruce-mars.jpg" alt="bruce" loading="lazy">
        </div>
        <div class="row py-5">
        <div class="col-lg-7 col-md-7 z-index-2 position-relative px-md-2 px-sm-5 mx-auto">
        <div class="d-flex justify-content-between align-items-center mb-2">
        <h3 class="mb-0"><c:out value="${board.title}" /></h3>
        <div class="d-block">
        <button type="button" class="btn btn-sm btn-outline-info text-nowrap mb-0">Follow</button>
        </div>
        </div>
        <div class="row mb-4">
        <div class="col-auto">
        <span class="h6"><c:out value="${board.user_id}" /></span>
        <span>작성자</span>
        </div>
        <div class="col-auto">
        <span class="h6"><c:out value="${board.view_cnt}" /></span>
        <span>조회수</span>
        </div>
        <div class="col-auto">
        <span class="h6"><c:out value="${board.rgstr_date}" /></span>
        <span>작성일</span>
        </div>
        </div>
        <p class="text-lg mb-0">
            <c:out value="${board.content}" /><br>
            <!-- <a href="javascript:;" class="text-info icon-move-right">More about me -->
        <i class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
        </a>
        </p>
        </div>
        </div>
        </div>
        </div>
        </div>
        </section>
    </div>
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