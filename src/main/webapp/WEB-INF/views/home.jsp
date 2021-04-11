<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!-- 부트스트랩 CDN-->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<script type="text/javascript" src="/../../resources/js/jquery-3.5.1.min.js"></script>



<nav class="navbar navbar-warning">
  <div class="container-fluid bg-info">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Board Project</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/member/signup">회원가입 </a></li>
       
        <c:if test="${member eq null }">
        <li><a href="/member/signin">로그인</a></li>
         </c:if>
        
        <c:if test="${member ne null }">
        
        <script type="text/javascript">
        alert('<%=session.getAttribute("userId")%>님 환영합니다.');
       </script>
       
        <li><a href="/member/signout">로그아웃</a></li>
        </c:if>
        
        
     </ul>
    
 <form class="navbar-form navbar-right"  role="search">
        <div class="form-group">
        <select class="form-control" id="searchType" name ="searchType">
      <option value="">목록</option>
        <option value="t">제목</option>
        <option value="c">내용 </option>
        <option value="tc">제목 , 내용 </option>
         </select>
          <input type="text" name="keyword" class="form-control" placeholder="검색어를 입력해 주세요">
        </div>
        <button type="submit" class="btn btn-default">검색</button>
      </form>
     
         </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


      

<section class="container">
 <br><br>
 <h1 class="text-center">Board List</h1>
<br><br>

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


  <button class="btn col-sm-2 pull-right" type="button" class="btn"  onclick="javascript: location.href='/board/write'">글쓰기</button>
  
  
</section>

   <nav class="container text-center">
  <ul class="pagination">
  
   <c:if test="${pageMaker.prev }">
    <li>
      <a href="${pageMaker.makeSearch(pageMaker.startPage-1) }" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    </c:if>
    
    <c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
    <li><a href="${pageMaker.makeSearch(idx)}">${idx}</a></li>
     </c:forEach>

   <c:if test="${pageMaker.next  && pageMaker.endPage>0}">
    <li>
      <a href="${pageMaker.makeSearch(pageMaker.endPage+1)}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    </c:if>
    
  </ul>
</nav>


 
       
<footer class="container-fluid bg-success text-center" style="padding: 30px; font-weight: bold">

   @CopyLight TAE-HA-HWANG

</footer>
