<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>DaumLogin</title>
<style>
body{
  background:RGB(236, 235, 238);
}

.wrapper{
  width: 700px;
  margin:0 auto;
  background:white;
  height: 723px;
  

}
.main{
  display: flex;
}
*{
  margin:0;
  padding:0;

}
.logo-image{
  text-align: center;
}
.header{
  padding:20px;
  border-bottom:3px solid RGB(230, 230, 230);


}
.log-in-form{
  padding:50px;
}

.id{
  width:300px;
  height: 48px;
  border:1px solid #b4b4b4;

}
.password{
  width:300px;
  height: 48px;
  border:1px solid #b4b4b4;
  margin-top:7px;


}
input[type=email]{
  border:0;
  outline:none;
  width:300px;
  height:48px ;

}
input[type=password]{
 border:0;
  outline:none;
  width:300px;
  height:48px ;

}

.button-items{
  border:1px solid RGB(77, 135, 238);
  width:300px;
  height: 50px;
  margin-top:20px;
  background:RGB(77, 135, 238);
  text-align: center;
  line-height: 50px;
  color:white;
}
.check-box-items{
  margin-top:11px;

}

.account-container{
  display: flex;
  justify-content: space-between;
  width:300px;

}

.boxip{
  margin-top:11px;
  
}

.find-account{
  display: flex;
  justify-content: center;
  width: 300px;
  margin-top:18px;
  font-size:12px;
  color:#767676;

}

.pw-find{
  margin-left:20px;
}
#button{
 cursor:pointer;
}

.Right-ad-box{
  margin-top:50px;
  bordeR:1px solid RGB(229, 229, 229);
  width:250px;
  height: 250px;
}
.footer{
  display: flex;
  justify-content: center;
 width:664px;
 margin-top:80px;
 padding:18px;
 font-size:12px;
 border-top:3px solid RGB(230, 230, 230);
}
a{
  text-decoration: none;
  color:#898989;

}

.footer-items{
  margin-right:10px;
}
</style>



<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>repl.it</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div class="wrapper">
      <header class="header">
        <div class="logo-image">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Daum_communication_logo.svg/302px-Daum_communication_logo.svg.png"
          width="98"height="40">

        </div>


      </header>
      <div class="main">
     <div class="log-in-form">
       <div class="id">
         <input type="email" id="id"name="id" placeholder="아이디 입력">
       </div>
       <div class="password">
         <input type="password" id="password" name="password"  placeholder="비밀번호 입력">


       </div>
       <div class="button-items">
         <div id="button">
           로그인


         </div>


       </div>
       <div class="account-container">
      <div class="check-box-items">
        <input type="checkbox">로그인상태 유지


      </div>
      <div class="ip-box">
        <div class="boxip">
          ip보안
        </div>

      </div>



     </div>
     <div class="find-account">
       <div class="id-find">
         아이디찾기

       </div>
       <div class="pw-find">
         비밀번호 찾기 

       </div>

     </div>
     </div>

     <div class="Right-ad-box">
       <div class="ad-image">
       <img src="https://t1.daumcdn.net/b2/creative/65631/4d59167f7e05b0e8247f84097efd6b34.jpg"width="250" height="250">
       </div>




     </div>
     
    </div>

     
     <div class="footer">
       <div class="footer-items"><a href="">ⓒ Kakao Corp. | </a> </div>
       <div class="footer-items"><a href="">고객센터</a> </div>



     </div>
     

    
 

</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document)
.on("click","#button",function(){
	
	if($('#id').val()==""){
		alert("아이디는 공백으로 해둘수 없습니다.")
		return false;
	}
	if($('#password').val()==""){
		alert("비밀번호는 공백으로 해둘수 없습니다.")
		return false;
	}
	
	if($('#id').val()=="dlwnghks6821"&&$('#password').val()=="123qwe"){
		alert("welcome Admin!")
		location.href = "admin.jsp";
	}else{
		
	}


	
	
	$.ajax({
		  url:'Login1',//호출될 서블릿의 경로(이름)
		  method:'get',//데이터 전송방식 get/post
		  //전송할 데이터(쿼리스트링)//
		  data:'id='+$('input[name=id]').val()+'&password='+$('input[name=password]').val(),
		  dataType:'text',//반환받을 데이터 타입 
		  beforeSend:function(){},
		  success:function(txt){//호출 성공해서 완료하면 
			  if(txt=="0"){
				  alert("존재하지 않는 계정입니다.")
			  }else{
				  alert("로그인되었습니다.")
				  location.href = "https://www.daum.net/";
			  }
		  	
			
		},
		complete:function(){
			
		} 
		
	  })
	
})





</script>

</html>