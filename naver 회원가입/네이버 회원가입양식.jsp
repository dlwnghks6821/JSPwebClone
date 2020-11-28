<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버:회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<style>
*{
	padding:0;
	margin:0;
	
}
.logo-image{
	text-align:center;
}
.logo-image img{
	width:50%;
	
}
.signup-form{
	width:600px;
	margin:0 auto;
}
.para{
	font-size:14px;
	font-weight:bold;
}
.red-para{
	font-size:12px;
	color:red;
}
.button-items{
    color: #fff;
    border: solid 1px rgba(0,0,0,.08);
    background-color: #03c75a;
    text-align:center;
    padding:15px;
    padding-top:20px;
    padding-bottom:20px;
    margin-top:50px;
    margin-bottom:50px;
    font-weight:bold;
    font-size:18px;
    cursor: pointer
    

}


</style>
<body>
<div class="signup-form">
<div class="logo-image">
<img src="https://mblogthumb-phinf.pstatic.net/20160622_73/hhtthh82_1466581509899OrBaG_PNG/%B3%D7%C0%CC%B9%F6-%B7%CE%B0%ED-%B0%ED%C8%AD%C1%FA.png?type=w800">
</div>
<p class="para">아이디</p>
<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>
  <input type="text" id="id" style="height:51px;" name="id"class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
  <p class="red-para"> 필수 정보입니다</p>
<p class="para">비밀번호</p>
<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>
  <input type="password" style="height:51px;" id="password"name="password" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
   <p class="red-para"> 필수 정보입니다</p>
<p class="para">이름</p>
<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>
 <input type="text" id="name" name="name"style="height:51px;" class="form-control"  aria-label="Username" aria-describedby="basic-addon1">
</div>
<p class="red-para"> 필수 정보입니다</p>
<p class="para">성별</p>
<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>
  <input type="text" id="gender"style="height:51px;" name="gender" class="form-control"  aria-label="Username" aria-describedby="basic-addon1">
</div>
<p class="red-para"> 필수 정보입니다</p>
<p class="para">본인 확인 이메일</p>
<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>
  <input type="email" id="email" name="email"style="height:51px;" class="form-control"  aria-label="Username" aria-describedby="basic-addon1">
</div>
<p class="red-para"> 필수 정보입니다</p>
<p class="para">휴대전화</p>
<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>
  <input type="tel" id="tel" name="tel" class="form-control" style="height:51px;" aria-label="Username" aria-describedby="basic-addon1">
</div>
<p class="red-para"> 필수 정보입니다</p>
<div class="button-items">
<div class="sign-up-items">
가입하기

</div>


</div>




</div>

</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document)
.on("click",".button-items",function(){
	if($('#id').val()==""){
		alert("아이디는 공백으로 해둘수 없습니다.")
		return false
	}if($('#password').val()==""){
		alert("비밀번호는 공백으로 해둘수 없습니다.")
		return false;
	}if($('#name').val()==""){
		alert("이름란은 공백으로 해둘수없습니다.")	
	}if($("#gender").val()==""){
		alert("성별란을 공백으로 입력할수없습니다.")
		return false;
	}if($('#email').val()==""){
		alert("이메일 란을 공백으로 입력할수없습니다.")
		return false;
	}if($('#tel').val()==""){
		alert("모바일 번호란을 공백으로 입력할수없습니다.")
		return false;
	}
	if($.isNumeric($('#tel').val())==false){
		alert("모바일번호란에는 숫자만 들어갈수 있습니다.")
		return false;
	}
	$.ajax({

		  url:'naversignup',//호출될 서블릿의 경로(이름)
		  method:'get',//데이터 전송방식 get/post
		  //전송할 데이터(쿼리스트링)//
		  data:'id='+$('input[name=id]').val(),
		  dataType:'text',//반환받을 데이터 타입 
		  beforeSend:function(){},
		  success:function(txt){//호출 성공해서 완료하면 
			  if(txt=="0"){
				  alert("사용가능한 아이디입니다.")
				  alert("회원가입 되었습니다.")
				  return false
			  }else{
				  alert("사용중인 아이디입니다.")
				  return false
				 
			  }
		  	
			
		},
		complete:function(){
			
		} 
		
	  })
	  $.ajax({

		  url:'naveruserinfo',//호출될 서블릿의 경로(이름)
		  method:'get',//데이터 전송방식 get/post
		  //전송할 데이터(쿼리스트링)//
		  data:'id='+$('input[name=id]').val()+'&password='+$('input[name=password]').val()+'&tel='+$('input[name=tel]').val()+'&email='+$('input[name=email]').val()+'&gender='+$('input[name=gender]').val()+'&name='+$('input[name=name]').val(),
		  dataType:'text',//반환받을 데이터 타입 
		  beforeSend:function(){},
		  success:function(txt){//호출 성공해서 완료하면 
	  	  	alert("회원가입에 성공했습니다.")
			 
		},
		complete:function(){
			
		} 
		
	  })
	
})



</script>
</html>