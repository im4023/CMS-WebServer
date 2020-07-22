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
			
			<script>
			function formCheck() { 
				var title = document.forms[0].title;
				var content = document.forms[0].content; 
				var busNum = document.forms[0].busNum; 
				var upfile=document.forms[0].upfile;
				var file= upfile.value;
				
				if(file.substr(file.length-3) == ""){
					alert('파일을 선택하지 않으셨습니다.');
					return false;
				}else if(file.match(/[_0-9a-zA-Z-][0-9a-zA-Z-]+.mp4/) == null){
					alert('파일은 영어와 숫자,-,_만 사용하실수 있으며 mp4형식만 가능합니다.');
					return false;
				}
				if (busNum.value =="1"){
					alert('게시판을 선택하지 않으셨습니다.');
					return false;
				}
				if (title.value == null || title.value == ""){                                   
					alert('제목을 입력하지 않으셨습니다.');                                  
					document.forms[0].title.focus();                          
					 return false;                                                     
				}else if(title.value.indexOf("'") != -1 ||
						title.value.indexOf("&") != -1 ||
						title.value.indexOf("*") != -1 ||
						title.value.indexOf("_") != -1 ||
						title.value.indexOf("--") != -1 ||
						title.value.indexOf(";") != -1
						){
				      alert("',&,*,_,--,; 와 같은 문자는 입력하실 수 없습니다.");
				      title.focus();
				      return false;
				 }	
				if (content.value == null || content.value == ""){                                   
					alert('영상에 대한 설명을 적어주세요.');                                  
					document.forms[0].content.focus();                          
					return false;                                                     
				}else if(content.value.indexOf("'") != -1 ||
						content.value.indexOf("&") != -1 ||
						content.value.indexOf("*") != -1 ||
						content.value.indexOf("_") != -1 ||
						content.value.indexOf("--") != -1 ||
						content.value.indexOf(";") != -1
						){
				      alert("',&,*,_,--,; 와 같은 문자는 입력하실 수 없습니다.");
				      content.focus();
				      return false;
				 }
				

			};
			</script>
			<script>
				function changeSelect(selectObject)
				{
				     var busNum = selectObject.value;
				}
			</script>
			
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
					<span  class = title_span><strong>광고 올리기</strong></span>
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
				<c:if test="${member != null}">
					<c:if test="${AreaNum == '1' || AreaNum == '2'}">
						<form role="form" action="/DeaJeon/write" method="post" autocomplete="off" enctype="multipart/form-data" onsubmit="return formCheck();">
							<div>
								버스 노선 :
									<select name="busNum" id="busNum" onChange="changeSelect(this)">
										<option value="1">--</option>
											<optgroup label="급행">
												<option value="ex_1">급행1</option>   
												<option value="ex_2">급행2</option> 
												<option value="ex_3">급행3</option>   
											</optgroup>
											<optgroup label="광역">
												<option value="BN_1001">1001</option> 
												<option value="BN_1002">1002</option>
											</optgroup>
											<optgroup label="간선">  
												<option value="BN_101">101</option> 
												<option value="BN_102">102</option>   
												<option value="BN_103">103</option> 
												<option value="BN_104">104</option>   
												<option value="BN_105">105</option> 
												<option value="BN_106">106</option>   
												<option value="BN_107">107</option> 
												<option value="BN_108">108</option>   
												<option value="BN_113">113</option> 
												<option value="BN_114">114</option>   
												<option value="BN_115">115</option> 
												<option value="BN_119">119</option>   
												<option value="BN_201">201</option> 
												<option value="BN_202">202</option>   
												<option value="BN_203">203</option>
												<option value="BN_211">211</option>   
												<option value="BN_216">216</option> 
												<option value="BN_301">301</option>   
												<option value="BN_311">311</option> 
												<option value="BN_312">312</option>   
												<option value="BN_313">313</option>  
												<option value="BN_314">314</option> 
												<option value="BN_315">315</option>   
												<option value="BN_316">316</option> 
												<option value="BN_318">318</option>   
												<option value="BN_501">501</option> 
												<option value="BN_511">511</option>   
												<option value="BN_512">512</option> 
												<option value="BN_513">513</option>   
												<option value="BN_514">514</option> 
												<option value="BN_601">601</option>   
												<option value="BN_602">602</option> 
												<option value="BN_603">603</option>   
												<option value="BN_604">604</option> 
												<option value="BN_605">605</option>   
												<option value="BN_607">607</option>
												<option value="BN_608">608</option>   
												<option value="BN_611">611</option> 
												<option value="BN_613">613</option>   
												<option value="BN_615">615</option> 
												<option value="BN_616">616</option>   
												<option value="BN_617">617</option>  
												<option value="BN_618">618</option> 
												<option value="BN_619">619</option>   
												<option value="BN_701">701</option> 
												<option value="BN_703">703</option>   
												<option value="BN_704">704</option> 
												<option value="BN_705">705</option>   
												<option value="BN_706">706</option> 
												<option value="BN_711">711</option>   
												<option value="BN_802">802</option>
											</optgroup> 
											<optgroup label="지선">
												<option value="BN_116">116</option>   
												<option value="BN_117">117</option> 
												<option value="BN_121">121</option>   
												<option value="BN_212">212</option>  
												<option value="BN_317">317</option> 
												<option value="BN_606">606</option>   
												<option value="BN_612">612</option> 
												<option value="BN_614">614</option>   
												<option value="BN_620">620</option> 
												<option value="BN_622">622</option>   
												<option value="BN_712">712</option> 
												<option value="BN_911">911</option>   
												<option value="BN_912">912</option>
												<option value="BN_916">916</option>   
												<option value="BN_918">918</option> 
											</optgroup>
											<optgroup label="유성구">
												<option value="BN_11">11</option>   
												<option value="BN_17">17</option> 
												<option value="BN_41">41</option>   
												<option value="BN_42">42</option>  
												<option value="BN_46">46</option>
											</optgroup>
											<optgroup label="서구"> 
												<option value="BN_20">20</option>   
												<option value="BN_21">21</option> 
												<option value="BN_22">22</option>   
												<option value="BN_23">23</option> 
												<option value="BN_24">24</option>   
												<option value="BN_25">25</option> 
												<option value="BN_26">26</option>   
												<option value="BN_27">27</option>
											</optgroup>
											<optgroup label="중구">
												<option value="BN_30">30</option>   
												<option value="BN_31">31</option> 
												<option value="BN_32">32</option> 
												<option value="BN_33">33</option>   
												<option value="BN_34">34</option> 
											</optgroup>
											<optgroup label="동구">
												<option value="BN_52">52</option>   
												<option value="BN_60">60</option> 
												<option value="BN_61">61</option>   
												<option value="BN_62">62</option>
												<option value="BN_63">63</option> 
												<option value="BN_66">66</option> 
											</optgroup>	
											<optgroup label="대덕구">
												<option value="BN_71">71</option>   
												<option value="BN_72">72</option> 
												<option value="BN_73">73</option>   
												<option value="BN_74">74</option>
												<option value="BN_75">75</option> 
											</optgroup>								
											<optgroup label="맞춤">
												<option value="CE_1">첨단1</option> 
											</optgroup>
											<optgroup label="마을">
												<option value="town_1">마을1</option>   
												<option value="town_2">마을2</option> 
												<option value="town_3">마을3</option>   
											</optgroup>	
									</select>
								
							</div>
							<table>
								<tbody>
									<tr>
										<td class ="announcement_title2">제목</td>
										<td class ="announcement_title4"><input type="text" name="title" /></td>
										<td class ="announcement_title2">작성자</td>
										<td class ="announcement_title4">
											<input type="text" name="writer" value="${member.adminName}" readonly="readonly" />
										</td>									
									</tr>
								</tbody>
							</table>
							<table>
								<tbody>
									<tr>
										<td>
											<div class ="announcement_content">
												<textarea cols="50" rows="5" name="content" class="inputbox announce_content"></textarea>
											</div>
										</td>
									</tr>
								</tbody>
								
							</table>
							<div>
								<label for = "File">광고파일 : </label>
								<input type="file" id = "upfile" name="upfile"/>
							</div>
						
							
							<button class="btn" type="submit">작성</button>
							<button class="btn" type="button" id="cancel_btn"> 취소</button>
							<script>	
								$("#cancel_btn").click(function(){
										window.history.back();
								});
							</script>
						</form>
					</c:if>
				</c:if>
				 
				<c:if test="${member == null}">
					<p>로그인을 하셔야 해당 페이지를 볼 수 있습니다.</p>
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