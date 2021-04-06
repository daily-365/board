<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script type="text/javascript"  src="/../../resources/js/jquery-3.5.1.min.js"></script>

<!-- flatpickr -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>


<script type="text/javascript">

 $(document).ready(function(){

  //숫자 영문만 가능
  var userIdRegex = RegExp(/^[0-9a-z]+$/);

 //특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
  var userPwRegex = RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);

 //2~10자의 한글, 영문, 숫자만 사용할 수 있습니다
  var userNameRegex =RegExp(/[0-9]|[a-z]|[A-Z]|[가-힣]/);
 
//ex)01012341234
  var userPhoneRegex=RegExp(/^\d{3}\d{3,4}\d{4}$/);
  
//ex)user@example.com
  var userMailRegex =RegExp(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i);
  
  
 
 
    $('#userId').on('blur',function(){
    
    
    if($('#userId').val()==""){
         $('#userIdCheck').text("아이디를 입력해 주세요");
        $('#userIdCheck').css('color','green');
        $('#userIdCheck').focus(); 
      
     
     }else if(!userIdRegex.test($('#userId').val())){
     
        $('#userIdCheck').text("아이디 형식에 맞춰 주세요.");
        $('#userIdCheck').css('color','red');
        $('#userIdCheck').focus();     
        
     }
     else{
        $('#userIdCheck').text("사용가능한 아이디 입니다.");
        $('#userIdCheck').css('color','blue');  
        
       }
    });
 
 
 
 
    $('#userPw').on('blur',function(){
   
      if($('#userPw').val()==""){
       
       $('#userPwCheck').text("비밀번호를 입력해 주세요");
        $('#userPwCheck').css('color','green');
       $('#userPwCheck').focus(); 
     
     }else if(!userPwRegex.test($('#userPw').val())){
     
        $('#userPwCheck').text("비밀번호는 특수문자,문자,숫자 포함 형태의 8~15자리 이내의 암호 형식 입니다.");
        $('#userPwCheck').css('color','red');
        $('#userPwCheck').focus();     
        
     }else{
        $('#userPwCheck').text("사용가능한 비밀번호 입니다.");
        $('#userPwCheck').css('color','blue');  
        
       }
      
   });
   
       $('#userPwOk').on('blur',function(){
   
    if($('#userPwOk').val()==""){
       
        $('#userPwOkCheck').text('비밀번호를 확인해 주세요.');
         $('#userPwOkCheck').css('color','green');
         $('#userPwOkCheck').focus();  
     
     }else if($('#userPwOk').val()!=$('#userPw').val()){
     
       $('#userPwOkCheck').text('비밀번호가 일치하지 않습니다.');
       $('#userPwOkCheck').css('color','red');
        $('#userPwOkCheck').focus();    
    
     }else{
     
      $('#userPwOkCheck').text('비밀번호가 일치합니다.');
       $('#userPwOkCheck').css('color','blue');
        
      }
      
   });
   
   
       $('#userName').on('blur',function(){
   
     if($('#userName').val()==""){
       
           $('#userNickCheck').text('닉네임을 입력해 주세요');
            $('#userNickCheck').css('color','green');
          $('#userNickCheck').focus();
     
     }else if(!userNameRegex.test($('#userName').val())){
     
         $('#userNickCheck').text('닉네임은 2~10자의 한글, 영문, 숫자만 사용할 수 있습니다');
       $('#userNickCheck').css('color','red');
        $('#userNickCheck').focus();
    
     
     }else{
     
      $('#userNickCheck').text('사용 가능한 닉네임 입니다.');
       $('#userNickCheck').css('color','blue');

         }
      
   });
   
       $('#userPhone').on('blur',function(){
   
   if($('#userPhone').val()==""){
       
       $('#userPhoneCheck').text('휴대폰 번호를 입력해 주세요');
       $('#userPhoneCheck').css('color','green');
       $('#userPhoneCheck').focus();
     
     }else if(!userPhoneRegex.test($('#userPhone').val())){
     
         $('#userPhoneCheck').text('휴대폰 형식에 맞춰 주세요 (ex : 01012341234)');
       $('#userPhoneCheck').css('color','red');
        $('#userPhoneCheck').focus();
    
     
     }else{
     
          $('#userPhoneCheck').text('사용가능한 휴대폰 번호 입니다.');
       $('#userPhoneCheck').css('color','blue');
     
     }
      
   });
   
       $('#userMail').on('blur',function(){
    	   
       if($('#userMail').val()==""){
           
           $('#userMailCheck').text('이메일 주소를 입력해 주세요');
           $('#userMailCheck').css('color','green');
           $('#userMailCheck').focus();
         
         }else if(!userMailRegex.test($('#userMail').val())){
         
             $('#userMailCheck').text('메일 주소에 맞춰 주세요 (ex : user@example.com)');
           $('#userMailCheck').css('color','red');
            $('#userMailCheck').focus();
        
         
         }else{
         
              $('#userMailCheck').text('사용가능한 메일 주소 입니다.');
           $('#userMailCheck').css('color','blue');
         
         }
          
       });
   
 });




</script>

<div class="container" >

<br><br>

<!-- <div class="modal-header"> -->
<!--     <button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">X</button> -->
<!--     <h1 class="text-center smaller lighter blue no-margin modal-title">회원가입</h1> -->
<!-- </div> -->

<!-- <div class="modal-body"> -->

<h1 class="text-center">회원가입</h1>

 <br><br>


<form  role="form" class="signupForm" method="post" autocomplete="off" >
<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userId">아이디</label>
<input class="form-control" type="text" id="userId" name="userId" placeholder="아이디를 입력해 주세요"  >
<div id="userIdCheck"></div>
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userPw">비밀번호</label>
<input class="form-control" type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력해 주세요"  >
<div id="userPwCheck"></div>
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<label for=userPwOk>비밀번호 확인</label>
<input class="form-control" type="password" id="userPwOk" name="userPwOk" placeholder="비밀번호를 한번 더 입력해 주세요"  >
<div id="userPwOkCheck"></div>
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userName">닉네임</label>
<input class="form-control" type="text" id="userName" name="userName" placeholder="닉네임을 입력해 주세요"  >
<div id="userNickCheck"></div>
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userGender">성별</label>
<input type="radio" id="userGender" name="userGender" required="required" value="남" >남
<input  type="radio" id="userGender" name="userGender" required="required" value="여" >여
</div>

 <div class="form-group col-sm-4 col-sm-offset-4">
<label for="userBirth">생년월일</label>
<input type="text" class="form-control" id="userBirth"  name="userBirth" placeholder="날짜를 선택하세요." required="required" />

<a class="input-button" title="toggle" data-toggle><i class="icon-calendar"></i></a>

​<script type="text/javascript">

$("#userBirth").flatpickr({ 

dateFormat: "Y-m-d",


});

</script>


</div>


<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userPhone">연락처</label>
<input class="form-control" type="text" onkeyup="this.value=this.value.replace('/^[0-9]/g','')" id="userPhone" name="userPhone" placeholder="연락처를 입력해 주세요"  >
<div id="userPhoneCheck"></div>
</div>

<div class="form-group col-sm-4 col-sm-offset-4">
<label for="userMail">이메일</label>
<input class="form-control" type="text" id="userMail" name="userMail" placeholder="메일 주소를 입력해 주세요"  >
<div id="userMailCheck"></div>
</div>


<div class="form-group modal-footer">
<button class="btn btn-primary col-sm-2 col-sm-offset-4" type="submit" id="sign_btn" name="sign_btn">회원가입</button>
 <button class="btn btn-danger col-sm-2 " type="reset" >다시작성</button>

</div>





<script type="text/javascript">
 $('.signupForm').on('submit',function(){
   alert('회원가입이 완료되었습니다');
  });

</script>

</form>

<!-- </div> -->



</div>