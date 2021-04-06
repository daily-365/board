<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
     <!-- 부트스트랩 CDN-->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<script type="text/javascript" src="/../../resources/js/jquery-3.5.1.min.js"></script>
     
  <div class="cotainer-fluid">     

<header class="container">

<br><br>

 <h1 class="text-center">게시판 리스트</h1>

<br><br>

</header>

<section class="container">



<table class="table table_hover">
<thead>
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>내용</th>
    <th>작성일</th>
    <th>조회수</th>
              
  </tr>
  </thead>
  
  <c:forEach var="list" items="${list }">
  <tbody>
  <tr>
    <td>${list.boardNo}</td>
    <td><a href="/board/view?boardNo=${list.boardNo}">${list.boardTitle}</a></td>
    <td>${list.boardContent}</td>
    <td><fmt:formatDate value="${list.boardDate}" pattern="yyyy-MM-dd"/></td>
    <td>${list.boardHit}</td>
  </tr>
  </tbody>
</c:forEach>


</table>

</section>

<nav class="container text-center">
  <ul class="pagination">
  <c:if test="${pageMaker.prev }">
    <li>
      <a href="list${pageMaker.makeQuery(pageMaker.startPage-1)}" >
       <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    </c:if>
    
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage }"
       var="idx">
    <li><a href="list${pageMaker.makeQuery(idx)}">${idx}</a></li>
     </c:forEach> 
     
     
    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    <li>
      <a href="list${pageMaker.makeQuery(pageMaker.endPage+1 )}">
      <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    </c:if>
  </ul>
</nav>

 <footer class="container">
 
  <button class="btn col-sm-2 pull-right" type="button" class="btn"  onclick="javascript: location.href='/board/write'">글쓰기</button>
     <button class="btn col-sm-2 pull-left" type="button" class="btn"  onclick="javascript: location.href='/'">메인화면으로</button>
 
 </footer>

</div>

 <br><br>
