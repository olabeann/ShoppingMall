<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<title>상품정보</title>
<meta charset="utf-8">
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="container">
		<div style="text-align:center;">
		<h1>상품 상세 정보</h1>
			<img src="/contents/storage/${dto.filename}"
				style="width: 300px; heigth: 300px;">
			</div>
			<br>
	
			<div class="panel panel-default" style="text-align:center">
			<div class="panel-heading">상품명 :</div><br>
			<div class="pannel-body">${dto.pname}</div><br><br>
			<div class="panel-heading">상품 가격 :</div><br>
			<div class="pannel-body">${dto.price}</div><br><br>
			<div class="panel-heading">상품설명 :</div><br>
			<div class="pannel-body">${dto.detail}</div><br><br>
			<div class="panel-heading">재고 :</div><br>
			<div class="pannel-body">${dto.stock}</div><br><br>
			</div>
		</div>
		<div style="text-align:center">
		<a href="/contents/update/${dto.contentsno }">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
        /
        <a href="/contents/delete/${dto.contentsno}">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
        /
    	    <a href="/contents/updateFile/${dto.contentsno }/${dto.filename}">
          <span class="glyphicon glyphicon-picture"></span>
        </a>   
     </div>
  
	
	<div class="btnBox" style="text-align:center">
		<button class="btn btn-success" onclick="history.back()">뒤로가기</button>
	</div>


</body>
</html>