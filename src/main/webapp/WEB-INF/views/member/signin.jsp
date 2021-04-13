<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
     
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script type="text/javascript"  src="/../../resources/js/jquery-3.5.1.min.js"></script>   



<div class="container-fluid">

<br><br>
<h1 class="text-center">로그인 </h1>
<br><br>

<form  role="form" class="signinForm" method="post" autocomplete="off" >
<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userId">아이디</label>
<input class="form-control" type="text" id="userId" name="userId" placeholder="아이디를 입력해 주세요"  required="required">
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userPw">비밀번호</label>
<input class="form-control" type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력해 주세요"  required="required" >
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<button type="submit" class="btn btn-primary col-sm-2 col-sm-offset-4">로그인</button>
<button type="button" class="btn btn-danger" onclick="javascript: location.href='/member/signup';">회원가입</button>

</div>

</form>

    
    
<c:if test="${msg eq false }">
<script type="text/javascript">
 alert('아이디와 비밀번호를 확인해 주세요')

</script>

</c:if>




</div>