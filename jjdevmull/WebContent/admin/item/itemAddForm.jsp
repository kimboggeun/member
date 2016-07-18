<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
	div
	{
		border: 1px solid #000000;
		width: 30%;
		height: 50px;
		margin: 0 auto;
		padding-top: 20px;
	}
	#btn, #head 
	{
		font-size: 25px;
		font-style: bold;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#addBtn').click(function(){
			if($('#itemName').val()==''){
				alert("상품명을 입력하세요");
					$('#itemName').focus();
				
			}else if(isNaN($('#itemPrice').val()) || $('#itemPrice').val()==''){
				alert("상품가격을 입력하세요");
				$('#itemPrice').focus();
				
			}else if(isNaN($('#itemRate').val()=='')){
				alert("할인율을 입력하세요");
				$('#itemRate').focus();
				
			}else{
				$('#itemForm').submit();
			}
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<form id="itemForm" action="<%=request.getContextPath() %>/admin/item/itemAddAction.jsp" method="post">
		
		<div id="head">
			상품등록화면
		</div>
		
		<div>
			<label>상품명</label>
			<input type="text" name="itemName" id="itemName"/>
			
		</div>
		
		<div>
			<label>상품가격</label>
			<input type="text" name="itemPrice" id="itemPrice"/>
			
		</div>
		
		<div>
			<label>할인율</label>
			<input type="text" name="itemRate" id="itemRate"/>
			
		</div>
		
		<div id="btn">
			<input type="button" id="addBtn" value="상품등록"/>
		</div>
		
	</form>
</body>
</html>