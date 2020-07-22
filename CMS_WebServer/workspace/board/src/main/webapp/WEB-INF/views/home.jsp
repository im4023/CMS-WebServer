<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="stylesheet" href="/resources/css/style.css"/>
		
		<title>바이엠텍</title>
	</head>
	
	<body>
		<!-- Navigation -->
		<header class="navbar navbar-expand-lg fixed-top" id="mainNav">
			<%@include file="./include/nav.jsp" %>
		</header>
		
		<!-- Main -->
		<div class="container" id="indexmain ">
			<div>
			<a href="/DeaJeon/main">
				<img src="/resources/img/CMS/DeaJeon_img2.png" alt="">
			</a>
			<a href="/DeaJeon/main">
				<img src="/resources/img/CMS/SeJong_img.png" alt="">
			</a>
			</div>
		</div>
		
		<!-- Footer -->	
	    <footer class="footer" id="footer">
		    <%@include file="./include/footer.jsp" %>
		</footer>
		
		<script src="/resources/jquery/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="/resources/jquery/jstyle.js"></script>
	</body>
</html>