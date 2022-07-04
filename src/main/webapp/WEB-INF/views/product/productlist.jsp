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
<div class="card">
    <div class="table-responsive">
        <table class="table align-items-center mb-0">
        <thead>
         <tr>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">번호</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">상품코드</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">상품명</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">가격</th>
            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">재고</th>
            <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">등록일</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${productlist}" varStatus="status">
              <tr>
                <td>
                  <div class="d-flex px-2 py-1">
                    <%-- <div>
                      <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-2.jpg" class="avatar avatar-sm me-3">
                    </div> --%>
                    <div class="d-flex flex-column justify-content-center">
                      <%-- <h6 class="mb-0 text-xs">John Michael</h6> --%>
                      <p class="text-xs text-secondary mb-0">${status.count}</p>
                    </div>
                  </div>
                </td>
                <td>
                  <p class="text-xs text-secondary mb-0"><a href="/productinfo?seq=${product.seq}">${product.product_code}</a></p>
                </td>
                <td>
                    <span class="text-secondary text-xs font-weight-normal">${product.product_name}</span>
                  </td>
                  <td>
                    <span class="text-secondary text-xs font-weight-normal">${product.product_price}</span>
                  </td>
                  <td>
                    <span class="text-secondary text-xs font-weight-normal">${product.product_stock}</span>
                  </td>
                <td class="align-middle text-center">
                  <span class="text-secondary text-xs font-weight-normal">${product.rgstr_date}</span>
                </td>
                <!-- <td class="align-middle">
                  <%-- <a href="javascript:;" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip" data-original-title="Edit user">
                    Edit
                  </a> --%>
                </td> -->
              </tr>
          </c:forEach>
            </tbody>
        </table>
        </div>
    </div>
        

    <!-- <table border="1">
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
    <td><a href="/userinfo?seq=${user.seq}">${user.id}</a></td>
    <td>${user.rgstr_date}</td>
</tr>
</c:forEach>
</tbody>
</table> -->
<input type="button" value="등록" onclick="location.href='/product_regis'"/>
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