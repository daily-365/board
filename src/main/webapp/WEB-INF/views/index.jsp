<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
 
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
      <form class="navbar-form navbar-right"  method="post" role="search">
        <div class="form-group">
          <input type="text" name="boardTitle" class="form-control" placeholder="검색어를 입력해 주세요">
        </div>
        <button type="submit" class="btn btn-default">검색</button>
      </form>
     
         </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

      

<section class="container">

<c:url var="list"  value="/board/list" />  

 <a href="${list}" class="text-center">게시판 리스트</a>


</section>

       
       
<footer class="container-fluid bg-success text-center" style="padding: 30px; font-weight: bold">

   @CopyLight TAE-HA-HWANG

</footer>
