<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<script type="text/javascript" src="../../resources/js/jquery-3.5.1.min.js"></script>
    
    
    <div class="cotainer-fluid">     

<header class="container">

<br><br>

 <h1 class="text-center">글쓰기</h1>

<br><br>

</header>

<section class="container">

  <form role="form" method="post" autocomplete="off" onsubmit="submitFunc()">
     
          
    <div class="fomr-group col-sm-4 col-sm-offset-4">
    <label for="boardTitle">제목</label>
    <input class="form-control" type="text" name="boardTitle" placeholder="제목을 입력해 주세요" required="required">
    </div>
    
    <br><br><br><br>
    
    <div class="form-group col-sm-4 col-sm-offset-4">
    <label for="boardContent">내용</label>
    <textarea rows="5" cols="" class="form-control" name="boardContent" placeholder="내용을 입력해 주세요" required="required"></textarea>
    </div>
     
     <div class="form-group col-sm-4 col-sm-offset-4">
     <button class="btn" type="button" id="writeBtn">작성완료</button>
    <button class="btn" type="reset">재작성</button>
       <script type="text/javascript">
     
     var form = $("form[role='form']");
     
     $('#writeBtn').on('click',function(){
    	 
    	 form.submit();
    	    	 
     });
     
   function submitFunc(){
      	 
      	 alert('작성이 완료되었습니다.');
      	
       }
   
     
       </script>
       
      
     
    </div>
    </form> 
     
  
    </section>
    
    </div>