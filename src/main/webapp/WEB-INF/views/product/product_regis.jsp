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
상품코드: <input type="text" id="product_code" name="product_code" /> <br/>
상품명: <input type="text" id="product_name" name="product_name" /><br/>
가격: <input type="number" id="product_price" name="product_price" /><br/>
재고: <input type="number" id="product_stock" name="product_stock" /><br/>

<input type="button" value="등록" onclick="insert();"/>
</form>
</body>
<script>
    function insert(){
        const product_code = document.getElementById("product_code").value;
        const product_name = document.getElementById("product_name").value;
        const product_price = document.getElementById("product_price").value;
        const product_stock = document.getElementById("product_stock").value;
        if(product_code == ""){
            alert("상품코드 입력");
            return false;
        }
        if (product_name == ""){
            alert("상품명 입력");
            return false;
        }
        if(product_price == "") {
            alert("가격입력");
            return false;
        }

         if(product_stock == "") {
            alert("재고입력");
            return false;
        }
         
document.getElementById("frm").method="post";
document.getElementById("frm").action="/addproduct";
document.getElementById("frm").submit();
        alert("success");
    }
</script>
</html>