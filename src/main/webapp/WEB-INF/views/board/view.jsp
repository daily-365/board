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

 <h1 class="text-center">글 상세 페이지</h1>

<br><br>

</header>

<section class="container">

  <form role="form" method="post">
    
    <div class="form-group">
  
    <input  type="hidden"  name="boardNo" value="${view.boardNo }">
    </div>
    
    
     <div class="form-group">
     <label for="boardTitle">제목</label>
    <input class="form-control" name="boardTitle" type="text" value="${view.boardTitle }"  onfocus="if(this.value=='${view.boardTitle}'){this.value=''}">
    </div>
     
        
     <div class="form-group">
     <label for="boardContent">내용</label>
    <textarea cols=50 rows=5  name="boardContent" required="required" class="form-control" onfocus="if(this.value=='${view.boardContent}'){this.value=''}">${view.boardContent}</textarea>
    </div>
    
     
    
     <div class="form-group">
     
       
       <button type="button" class="btn" id="modifyBtn">글수정</button>
       <button type="button" class="btn" id="deleteBtn">글삭제</button>
       <button type="button" class="btn" id="cancelBtn">취소</button>
      
        <script type="text/javascript">
    
  var form = $("form[role='form']");
  
  
   $('#modifyBtn').on('click',function(){
	  
	   if(confirm("정말로 수정하시겠습니까?")==true){
	   form.attr("action", "/board/modify")
	   form.attr("method","get")
       form.submit();
	   }
	   
	   
   });
   
 $('#deleteBtn').on('click',function(){
	   
	   if(confirm("정말로 삭제하시겠습니까?")==true)
	   form.attr("action", "/board/delete")
	   form.attr("method","get")
       form.submit();
	 
	   
   });
    
 $('#cancelBtn').on('click',function(){
	   
	alert('목록페이지로 이동합니다.') 
	location.href="/"
	 	   
 });
      
    
  </script>
      
      
     </div>
  

  
  
  
  </form>



</section>

</div>