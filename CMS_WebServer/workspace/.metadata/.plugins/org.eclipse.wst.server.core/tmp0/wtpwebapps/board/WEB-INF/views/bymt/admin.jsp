<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
			<meta charset="UTF-8">
			<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
			
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<meta name="description" content="">
			<meta name="author" content="">
			<link rel="stylesheet" href="/resources/css/style.css"/>
			
			<title>바이엠텍</title>
	</head>
	<body>
		<!-- Navigation -->
		<header class="navbar navbar-expand-lg fixed-top" id="mainNav">
			<%@include file="../include/nav.jsp" %>
		</header>
		
		<!-- Main -->
		<div class="container" id="announcementmain">
			
			<div class="announcement_top">
				<div>
					<span class = title_span><strong>관리자 로그인</strong></span>
				</div>
			</div>
			
			<div class="announcement_bottom text-center">
				<!-- 
				<p><a href="/bymt/register">회원가입</a></p>
				  -->
				<c:if test="${member == null}">
					
					 <form method="post" autocomplete="off">
						<p>
							<label for="adminId">아이디</label>
							<input type="text" id="adminId" name="adminId" />
						</p>
						<p>
							<label for="adminPass">패스워드</label>
							<input type="password" id="adminPass" name="adminPass" />
						</p>
						<input type="submit" value = '로그인'> 
					</form>
				</c:if>
				
				<c:if test="${msg == false}">
					<p style="color:red;">로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주십시오.</p>
				</c:if>
											
				<c:if test="${member != null}">
					<p>${member.adminName}님 환영합니다.</p>
					<p>					
						<c:if test="${AreaNum == '1' || AreaNum == '2'}">
							<a href="/DeaJeon/main">대전</a>&nbsp;&nbsp;
						</c:if>
						<c:if test="${AreaNum == '1' || AreaNum == '3'}">
							<a href="/DeaJeon/main">세종</a>
						</c:if>
					</p>
					<button type="button" id="logout_btn"> 로그아웃</button>
						<script>	
						$("#logout_btn").click(function(){
							self.location = "../bymt/logout";					
						});
						</script>
					
				</c:if>
			</div>
		</div>

		<!-- Footer -->	
	    <footer class="footer" id="footer">
		    <%@include file="../include/footer.jsp" %>
		</footer>
		
		<script type="text/javascript" src="/resources/jquery/jstyle.js"></script>
	</body>
</html>