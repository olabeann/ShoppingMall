<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>아이디 찾기</title>
  <meta charset="utf-8">
</head>
<body>
<script type="text/javascript">
$(function(){
	$("#pwfind").click(function(){
		let id = $('#id').val();
		let mname = $('#mname').val();

		let url = "http://localhost:8000/member/findPw?mname=" + mname + "&id=" + id;
		console.log(url);
		
        fetch(url)
		.then(response => response.json())
		.then((data) => alert(data.passwd)); 
	//	console.log(`id:${id}, passwd:${passwd}`);
	});
});
</script>

<div class="container">

<h1 class="col-sm-offset-2 col-sm-10">비밀번호 찾기</h1>
  <form class="form-horizontal" 
        action="/member/findPw"
        method="post">

        <input type="hidden" name="rurl" value="${param.rurl}">    
    <input type="hidden" name="bbsno" value="${param.bbsno}">    
    <input type="hidden" name="nowPage" value="${param.nowPage}">    
    <input type="hidden" name="nPage" value="${param.nPage}">    
    <input type="hidden" name="col" value="${param.col}">    
    <input type="hidden" name="word" value="${param.word}">
        

    
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">아이디</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="id" 
        placeholder="Enter id" name="required="required" 
       >
      </div>
      
          <div class="form-group">
      <label class="control-label col-sm-2" for="mname">이름</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="mname" 
        placeholder="Enter mname" name="required="required" 
       >
      </div>
     
    

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
        <button type="button" class="btn btn-default" id = "pwfind">비밀번호 찾기</button>
      </div>
    </div>
  </form>

</div>
</body>
</html>