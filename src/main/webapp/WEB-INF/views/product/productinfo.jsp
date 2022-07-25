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
상품코드:  <c:out value="${product.product_code}" /> <br/>
상품명: <c:out value="${product.product_name}" /> <br/>
가격: <c:out value="${product.product_price}" /> <br/>
재고: <c:out value="${product.product_stock}" /> <br/>
작성일: <c:out value="${product.rgstr_date}" /> <br/>
<input type="button" value="수정" onclick="location.href='/productedit?seq=${product.seq}'"/> 
<input type="button" value="삭제" onclick="location.href='/productdelete?seq=${product.seq}'"/>

<input type="button" value="목록" onclick="location.href='/productlist'"/>
</form>
</body>
<script>
    function insert(){}
document.getElementById("frm").method="post";
document.getElementById("frm").action="/productlist";
    
</script>
</html>