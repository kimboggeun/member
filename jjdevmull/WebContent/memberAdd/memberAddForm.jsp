<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
        
        $(document).ready(function() {
    		$('#memBtn').click(function(){
    			if($('#memberId').val()==''){
    				alert("아이디를 입력하세요");
    					$('#memberId').focus();
    					
    			}else if($('#memberPw').val()==''){
    				alert("패스워드를 입력하세요");
    				$('#memberPw').focus();
    				
    			}else if($('#memberName').val()==''){
    				alert("이름을 입력하세요");
    				$('#memberName').focus();
    					
    			}else if($('.memberSex:checked').length==0) {
    				alert("성별을 입력하세요");
    				$('#memberSex').focus();
    				
    			}else if($('#memberAge').val()==''){
    				alert("나이를 입력하세요");
    				$('#memberAge').focus();
    				
    			}else if($('#memberAddress').val()==''){
    				alert("주소를 입력하세요");
    				$('#memberAddress').focus(); 
    				
    			}else{
    				$('#memForm').submit();
    			}
    		});	
    	});
        </script>
        </head>
        <body>
       
        <form id="memForm" action="./memberAddAction.jsp" method="post"> 
        	<div>
        		<label>MEMBER_ID : </label>
        		<input id="memberId" name="memberId" type="text"/>
        	</div>
        	<div>
        		<label>MEMBER_PW : </label>
        		<input id="memberPw" name="memberPw" type="password"/>
        	</div>
        	<div>
                MEMBER_NAME :
                <input id="memberName" name="memberName" type="text"/>
            </div>
            <div>
                MEMBER_Sex :
                <input  type="radio"  class="memberSex" name="memberSex"/>남
                <input  type="radio"  class="memberSex" name="memberSex"/>여
            </div>
            <div>
                MEMBER_Age :
                <input id="memberAge" name="memberAge" type="text"/>
            </div>
            <div>
                MEMBER_Address :
                <input id="memberAddress" name="memberAddres" type="text"/>
            </div>
        	<div>
        		<input id="memBtn" type="button" value="입력"/>
        	</div>
        	
       </form>
	</body>
	</html>