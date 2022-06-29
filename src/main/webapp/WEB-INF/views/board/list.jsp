<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- css -->
<link href="/material/assets/css/material-kit.min.css" rel="stylesheet" />
<!-- javascript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
<script type="text/javascript">
$(function() {
		
    var startPage = ${paging.startPage};
		var endPage = ${paging.endPage}; 
		var totalPageSize = ${paging.totalPageSize};
		var currentPage = ${paging.currentPage};
		var totalRecordSize = ${paging.totalRecordSize}; 
   
		var viewName='classMngrList';
		if(totalRecordSize > 0){
			$(".page_num").html(getPaging(startPage,endPage,totalPageSize,currentPage,'\''+viewName+'\''));
		}
	});

   /*
		* 이전 페이지
		*/
	   function prevPage(viewName, currentPage){
		   var page = eval(currentPage) - 1;
   
			   if(page < 1){
				   page = 1;
			   }
		   searchView(viewName, page);
	   }
   
	   /*
		* 다음 페이지
		*/
	   function nextPage(viewName, currentPage, totalPageSize){
		   var page = eval(currentPage) + 1;
		   var totalPageSize = eval(totalPageSize);
   
		   if(page > totalPageSize){
			   page = totalPageSize;
		   }
		   searchView(viewName, page);
	   }
   
   
	   function searchView(viewName, page){
		   switch(viewName){
			   case 'classMngrList' : $("#defaultpage").val(page); 
			   console.log($("#defaultpage").val())
			   $('#frm').attr('action', '<c:url value="list" />');
			   $('#frm').submit();
				break;	
		   default :
		   }
	   }

  function getPaging(startPage, endPage, totalPageSize, currentPage, viewName) {
  var pagingHtml = "";

  pagingHtml += '<div class="dataTables_paginate paging_full_numbers" >';
  pagingHtml +=
    '<a href="javascript:prevPage(' +
    viewName +
    "," +
    currentPage +
    ');" class="previous paginate_button ">Previous</a>';
  pagingHtml += "<span>";

  for (startPage; startPage <= endPage; startPage++) {
    if (startPage == currentPage) {
      pagingHtml +=
        '<a href="javascript:searchView(' +
        viewName +
        "," +
        startPage +
        ');" class="paginate_button active">' +
        startPage +
        "</a>";
    } else {
      pagingHtml +=
        '<a href="javascript:searchView(' +
        viewName +
        "," +
        startPage +
        ');" class="paginate_button">' +
        startPage +
        "</a>";
    }
  }
  pagingHtml += "</span>";
  pagingHtml +=
    '<a href="javascript:nextPage(' +
    viewName +
    "," +
    currentPage +
    "," +
    totalPageSize +
    ');" class="next paginate_button">Next</a>';
  pagingHtml += "</div>";

  return pagingHtml;
}
</script>
<form id="frm" name="frm" method="post">
<input type="hidden" id="defaultpage" name="defaultpage" value="1"/>
<div class="card">
  <div class="table-responsive">
    <table class="table align-items-center mb-0">
      <thead>
        <tr>
          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">번호</th>
          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">제목</th>
          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성자</th>
          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일</th>
          <th class="text-secondary opacity-7">조회수</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="list3" items="${list}" varStatus="status">
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
            <%-- <p class="text-xs font-weight-bold mb-0">Manager</p> --%>
            <p class="text-xs text-secondary mb-0"><a href="/view?seq=${list3.seq}">${list3.title}</a></p>
          </td>
          <td class="align-middle text-center text-sm">
            <span class="text-secondary text-xs font-weight-normal">${list3.user_id}</span>
          </td>
          <td class="align-middle text-center">
            <span class="text-secondary text-xs font-weight-normal">${list3.rgstr_date}</span>
          </td>
          <td class="align-middle">
            <%-- <a href="javascript:;" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip" data-original-title="Edit user">
              Edit
            </a> --%>
            <span class="text-secondary text-xs font-weight-normal">${list3.view_cnt}</span>
          </td>
        </tr>
    </c:forEach>
      </tbody>
    </table>
    <!-- page number -->
									<div class="page_num" id="page_num"> </div>
  </div>
</div>
<input type="button" value="등록" onclick="location.href='/insertpage'"/>
</form>
</body>
</html>