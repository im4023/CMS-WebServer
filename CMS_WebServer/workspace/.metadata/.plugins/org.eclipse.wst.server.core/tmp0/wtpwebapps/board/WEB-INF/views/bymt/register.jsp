<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
 <title>회원가입</title> 
 
 	<script>
			function formCheck() { 
				var adminId = document.forms[0].adminId;
				var adminPass = document.forms[0].adminPass; 
				var adminName = document.forms[0].adminName; 
				var codeNum = document.forms[0].codeNum;
				
				if (adminId.value == null || adminId.value == ""){                                   
					alert('아이디를 입력하지 않으셨습니다.');                                  
					adminId.focus();                          
					return false;                                                     
				}else if(adminId.value.indexOf("'") != -1 ||
						adminId.value.indexOf("&") != -1 ||
						adminId.value.indexOf("*") != -1 ||
						adminId.value.indexOf("--") != -1 ||
						adminId.value.indexOf(";") != -1
						){
				      alert("',&,*,--,; 와 같은 문자는 입력하실 수 없습니다.");
				      adminId.focus();
				      return false;
				 }	
				if (adminPass.value == null || adminPass.value == ""){                                   
					alert('비밀번호를 입력하지 않으셨습니다.');                                  
					document.forms[0].adminPass.focus();                          
					return false;                                                     
				}else if(adminPass.value.indexOf("'") != -1 ||
						adminPass.value.indexOf("&") != -1 ||
						adminPass.value.indexOf("*") != -1 ||
						adminPass.value.indexOf("--") != -1 ||
						adminPass.value.indexOf(";") != -1
						){
				      alert("',&,*,--,; 와 같은 문자는 입력하실 수 없습니다.");
				      adminPass.focus();
				      return false;
				 }
				if (adminName.value == null || adminName.value == ""){                                   
					alert('닉네임을 입력하지 않으셨습니다.');                                  
					document.forms[0].adminName.focus();                          
					return false;                                                     
				}else if(adminName.value.indexOf("'") != -1 ||
						adminName.value.indexOf("&") != -1 ||
						adminName.value.indexOf("*") != -1 ||
						adminName.value.indexOf("--") != -1 ||
						adminName.value.indexOf(";") != -1
						){
				      alert("',&,*,--,; 와 같은 문자는 입력하실 수 없습니다.");
				      adminName.focus();
				      return false;
				 }
				if (codeNum.value =="0"){
					alert('지역을 선택하지 않으셨습니다.');
					return false;
				}
			};
		</script>
</head>
<body>

<form role="form" method="post" autocomplete="off" onsubmit="return formCheck();">
	<p>
		<label for="adminId">아이디</label>
		<input type="text" id="adminId" name="adminId" />
	</p>  
	<p>
		<label for="adminPass">패스워드</label>
		<input type="password" id="adminPass" name="adminPass" />
	</p>
	<p>
		<label for="adminName">닉네임</label>
		<input type="text" id="adminName" name="adminName" />
	</p>
	<p>
		<label for="codeNum">지역</label>
		<select name="codeNum" >
			<option value="0">--</option>								
			<option value="1">바이엠텍</option>   
			<option value="2">대전</option> 
			<option value="3">세종</option>   
		</select>
	</p>
	<p>
		<button type="submit" id="submit" >가입</button>  
	</p>
	<p>
		<a href="/">처음으로</a>
	</p>
</form>
 
</body>
</html>