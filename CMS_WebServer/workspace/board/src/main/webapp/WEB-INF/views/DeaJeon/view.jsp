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
					<span class = title_span><strong>${param.busName}번 광고</strong></span>
				</div>
				<c:if test="${member != null}">
					<div class ="admin_menu">
						
						<button type="button" id="logout_btn"> 로그아웃</button>
						<script>	
						$("#logout_btn").click(function(){
							self.location = "../bymt/logout";					
						});
						</script>
					</div>
				</c:if>
			</div>
			<div class="announcement_bottom text-center">
				<table >
					<tbody class="announcement_view">
						<tr>
							<td class ="announcement_title2">제목</td>
							<td class ="announcement_title3">${view.title}</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td class ="announcement_title2">작성자</td>
							<td class ="announcement_title4">${view.writer}</td>
							<td class ="announcement_title2">작성일</td>
							<td class ="announcement_title4"><fmt:formatDate value="${view.regDate}" pattern="yyyy.MM.dd"/></td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td>
								<div style="white-space:pre;" class ="announcement_content">${view.content}</div>
							</td>
						</tr>
						<tr>
							<td>
							    
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btn_line">
					<div class="btn_box1">
						<form name = "fileinfo" action="/DeaJeon/fileDown" method="POST">
							<input type="hidden" name="sto_file" value="${view.sto_file}"/>
							<input type="hidden" name= "org_file" value ="${view.org_file}"/>
						</form>
						<a href ="#" onclick="javascript:document.fileinfo.submit();">${view.org_file}</a>
						
						 
					</div>
					<div class="btn_box2">
						<button class="btn" type="button" id="list_btn">목록</button>
						<script>	
							$("#list_btn").click(function(){
								window.history.back();	
							});
						</script>
					</div>
					<div class="btn_box3">
						<c:if test="${member != null}">	 
							<c:if test="${AreaNum == '1' || AreaNum == '2'}">
								<form name="delete_sub" action="/DeaJeon/delete" method="POST">										
									<input type="hidden" name="busNum" value="${param.busNum}" />
									<input type="hidden" name="idx" value="${view.idx}" />
									<input type="hidden" name="sto_file" value="${view.sto_file}" />
									<button class="btn" id="delete_btn">삭제</button>
								</form>
							</c:if>
						</c:if>
					</div>
				</div>
				
				

				<div>
			
				
				
				</div>	
			</div>
		</div>

	<!-- Footer -->	
	    <footer class="footer" id="footer">
		    <%@include file="../include/footer.jsp" %>
		</footer>
		
		
</body>
</html>