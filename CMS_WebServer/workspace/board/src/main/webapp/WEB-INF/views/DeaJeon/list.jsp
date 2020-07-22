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
			<!--
			<script>
			
			$(document).ready(function(){
			    //체크박스 전체 선탣&해제
			    $('#allCheck').click(function(){
			         if($("#allCheck").prop("checked")){
			            $("input[type=checkbox]").prop("checked",true); 
			        }else{
			            $("input[type=checkbox]").prop("checked",false); 
			        }
			    });
			});
			</script>
			-->
			<script>
				function selectValue(){
					var sel = document.getElementById("selectBox");
					var Num = sel.options[sel.selectedIndex].value;
					var txt = sel.options[sel.selectedIndex].text;
					
					$("input[name='busNum']").val(Num)
					$("input[name='busName']").val(txt)

					document.getElementById('select_Bus').submit();
					}
			
			</script>
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
						<span class = title_span><strong>
						버스 번호 : ${param.busName}
						</strong></span>
				</div>
				<c:if test="${member != null}">
					<div class ="admin_menu">
						<c:if test="${AreaNum == '1' || AreaNum == '2'}">
							<button type="button" id="write_btn">광고 올리기</button>
							<script>	
								$("#write_btn").click(function(){
									self.location = "./write";					
								});
							</script>
						</c:if>								
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
				<div class=option_div>
					<form name="selectBus" method="post"  id="select_Bus" action="/DeaJeon/list" onsubmit="return getValue();">
						<input type="hidden" name= busNum value ="">
						<input type="hidden" name= busName value ="">
						<select name="selectBox" id="selectBox" onChange="selectValue()">
							<option>--</option>
							<optgroup label="급행">									
								<option value="ex_1" ${param.busNum eq "ex_1"?"selected":""}>급행1</option>   
								<option value="ex_2" ${param.busNum eq "ex_2"?"selected":""}>급행2</option> 
								<option value="ex_3" ${param.busNum eq "ex_3"?"selected":""}>급행3</option>   
							</optgroup>
							<optgroup label="광역">
									<option value="BN_1001" ${param.busNum eq "BN_1001"?"selected":""}>1001</option> 
									<option value="BN_1002" ${param.busNum eq "BN_1002"?"selected":""}>1002</option>
								</optgroup>
								<optgroup label="간선">  
									<option value="BN_101" ${param.busNum eq "BN_101"?"selected":""}>101</option> 
									<option value="BN_102" ${param.busNum eq "BN_102"?"selected":""}>102</option>   
									<option value="BN_103" ${param.busNum eq "BN_103"?"selected":""}>103</option> 
									<option value="BN_104" ${param.busNum eq "BN_104"?"selected":""}>104</option>   
									<option value="BN_105" ${param.busNum eq "BN_105"?"selected":""}>105</option> 
									<option value="BN_106" ${param.busNum eq "BN_106"?"selected":""}>106</option>   
									<option value="BN_107" ${param.busNum eq "BN_107"?"selected":""}>107</option> 
									<option value="BN_108" ${param.busNum eq "BN_108"?"selected":""}>108</option>   
									<option value="BN_113" ${param.busNum eq "BN_113"?"selected":""}>113</option> 
									<option value="BN_114" ${param.busNum eq "BN_114"?"selected":""}>114</option>   
									<option value="BN_115" ${param.busNum eq "BN_115"?"selected":""}>115</option> 
									<option value="BN_119" ${param.busNum eq "BN_119"?"selected":""}>119</option>   
									<option value="BN_201" ${param.busNum eq "BN_201"?"selected":""}>201</option> 
									<option value="BN_202" ${param.busNum eq "BN_202"?"selected":""}>202</option>   
									<option value="BN_203" ${param.busNum eq "BN_203"?"selected":""}>203</option>
									<option value="BN_211" ${param.busNum eq "BN_211"?"selected":""}>211</option>   
									<option value="BN_216" ${param.busNum eq "BN_216"?"selected":""}>216</option> 
									<option value="BN_301" ${param.busNum eq "BN_301"?"selected":""}>301</option>   
									<option value="BN_311" ${param.busNum eq "BN_311"?"selected":""}>311</option> 
									<option value="BN_312" ${param.busNum eq "BN_312"?"selected":""}>312</option>   
									<option value="BN_313" ${param.busNum eq "BN_313"?"selected":""}>313</option>  
									<option value="BN_314" ${param.busNum eq "BN_314"?"selected":""}>314</option> 
									<option value="BN_315" ${param.busNum eq "BN_315"?"selected":""}>315</option>   
									<option value="BN_316" ${param.busNum eq "BN_316"?"selected":""}>316</option> 
									<option value="BN_318" ${param.busNum eq "BN_318"?"selected":""}>318</option>   
									<option value="BN_501" ${param.busNum eq "BN_501"?"selected":""}>501</option> 
									<option value="BN_511" ${param.busNum eq "BN_511"?"selected":""}>511</option>   
									<option value="BN_512" ${param.busNum eq "BN_512"?"selected":""}>512</option> 
									<option value="BN_513" ${param.busNum eq "BN_513"?"selected":""}>513</option>   
									<option value="BN_514" ${param.busNum eq "BN_514"?"selected":""}>514</option> 
									<option value="BN_601" ${param.busNum eq "BN_601"?"selected":""}>601</option>   
									<option value="BN_602" ${param.busNum eq "BN_602"?"selected":""}>602</option> 
									<option value="BN_603" ${param.busNum eq "BN_603"?"selected":""}>603</option>   
									<option value="BN_604" ${param.busNum eq "BN_604"?"selected":""}>604</option> 
									<option value="BN_605" ${param.busNum eq "BN_605"?"selected":""}>605</option>   
									<option value="BN_607" ${param.busNum eq "BN_607"?"selected":""}>607</option>
									<option value="BN_608" ${param.busNum eq "BN_608"?"selected":""}>608</option>   
									<option value="BN_611" ${param.busNum eq "BN_611"?"selected":""}>611</option> 
									<option value="BN_613" ${param.busNum eq "BN_613"?"selected":""}>613</option>   
									<option value="BN_615" ${param.busNum eq "BN_615"?"selected":""}>615</option> 
									<option value="BN_616" ${param.busNum eq "BN_616"?"selected":""}>616</option>   
									<option value="BN_617" ${param.busNum eq "BN_617"?"selected":""}>617</option>  
									<option value="BN_618" ${param.busNum eq "BN_618"?"selected":""}>618</option> 
									<option value="BN_619" ${param.busNum eq "BN_619"?"selected":""}>619</option>   
									<option value="BN_701" ${param.busNum eq "BN_701"?"selected":""}>701</option> 
									<option value="BN_703" ${param.busNum eq "BN_703"?"selected":""}>703</option>   
									<option value="BN_704" ${param.busNum eq "BN_704"?"selected":""}>704</option> 
									<option value="BN_705" ${param.busNum eq "BN_705"?"selected":""}>705</option>   
									<option value="BN_706" ${param.busNum eq "BN_706"?"selected":""}>706</option> 
									<option value="BN_711" ${param.busNum eq "BN_711"?"selected":""}>711</option>   
									<option value="BN_802" ${param.busNum eq "BN_802"?"selected":""}>802</option>
								</optgroup> 
								<optgroup label="지선">
									<option value="BN_116" ${param.busNum eq "BN_116"?"selected":""}>116</option>   
									<option value="BN_117" ${param.busNum eq "BN_117"?"selected":""}>117</option> 
									<option value="BN_121" ${param.busNum eq "BN_121"?"selected":""}>121</option>   
									<option value="BN_212" ${param.busNum eq "BN_212"?"selected":""}>212</option>  
									<option value="BN_317" ${param.busNum eq "BN_317"?"selected":""}>317</option> 
									<option value="BN_606" ${param.busNum eq "BN_606"?"selected":""}>606</option>   
									<option value="BN_612" ${param.busNum eq "BN_612"?"selected":""}>612</option> 
									<option value="BN_614" ${param.busNum eq "BN_614"?"selected":""}>614</option>   
									<option value="BN_620" ${param.busNum eq "BN_620"?"selected":""}>620</option> 
									<option value="BN_622" ${param.busNum eq "BN_622"?"selected":""}>622</option>   
									<option value="BN_712" ${param.busNum eq "BN_712"?"selected":""}>712</option> 
									<option value="BN_911" ${param.busNum eq "BN_911"?"selected":""}>911</option>   
									<option value="BN_912" ${param.busNum eq "BN_912"?"selected":""}>912</option>
									<option value="BN_916" ${param.busNum eq "BN_916"?"selected":""}>916</option>   
									<option value="BN_918" ${param.busNum eq "BN_918"?"selected":""}>918</option> 
								</optgroup>
								<optgroup label="유성구">
									<option value="BN_11" ${param.busNum eq "BN_11"?"selected":""}>11</option>   
									<option value="BN_17" ${param.busNum eq "BN_17"?"selected":""}>17</option> 
									<option value="BN_41" ${param.busNum eq "BN_41"?"selected":""}>41</option>   
									<option value="BN_42" ${param.busNum eq "BN_42"?"selected":""}>42</option>  
									<option value="BN_46" ${param.busNum eq "BN_46"?"selected":""}>46</option>
								</optgroup>
								<optgroup label="서구"> 
									<option value="BN_20" ${param.busNum eq "BN_20"?"selected":""}>20</option>   
									<option value="BN_21" ${param.busNum eq "BN_21"?"selected":""}>21</option> 
									<option value="BN_22" ${param.busNum eq "BN_22"?"selected":""}>22</option>   
									<option value="BN_23" ${param.busNum eq "BN_23"?"selected":""}>23</option> 
									<option value="BN_24" ${param.busNum eq "BN_24"?"selected":""}>24</option>   
									<option value="BN_25" ${param.busNum eq "BN_25"?"selected":""}>25</option> 
									<option value="BN_26" ${param.busNum eq "BN_26"?"selected":""}>26</option>   
									<option value="BN_27" ${param.busNum eq "BN_27"?"selected":""}>27</option>
								</optgroup>
								<optgroup label="중구">
									<option value="BN_30" ${param.busNum eq "BN_30"?"selected":""}>30</option>   
									<option value="BN_31" ${param.busNum eq "BN_31"?"selected":""}>31</option> 
									<option value="BN_32" ${param.busNum eq "BN_32"?"selected":""}>32</option> 
									<option value="BN_33" ${param.busNum eq "BN_33"?"selected":""}>33</option>   
									<option value="BN_34" ${param.busNum eq "BN_34"?"selected":""}>34</option> 
								</optgroup>
								<optgroup label="동구">
									<option value="BN_52" ${param.busNum eq "BN_52"?"selected":""}>52</option>   
									<option value="BN_60" ${param.busNum eq "BN_60"?"selected":""}>60</option> 
									<option value="BN_61" ${param.busNum eq "BN_61"?"selected":""}>61</option>   
									<option value="BN_62" ${param.busNum eq "BN_62"?"selected":""}>62</option>
									<option value="BN_63" ${param.busNum eq "BN_63"?"selected":""}>63</option> 
									<option value="BN_66" ${param.busNum eq "BN_66"?"selected":""}>66</option> 
								</optgroup>	
								<optgroup label="대덕구">
									<option value="BN_71" ${param.busNum eq "BN_71"?"selected":""}>71</option>   
									<option value="BN_72" ${param.busNum eq "BN_72"?"selected":""}>72</option> 
									<option value="BN_73" ${param.busNum eq "BN_73"?"selected":""}>73</option>   
									<option value="BN_74" ${param.busNum eq "BN_74"?"selected":""}>74</option>
									<option value="BN_75" ${param.busNum eq "BN_75"?"selected":""}>75</option> 
								</optgroup>								
								<optgroup label="맞춤">
									<option value="CE_1" ${param.busNum eq "CE_1"?"selected":""}>첨단1</option> 
								</optgroup>
								<optgroup label="마을">
									<option value="town_1" ${param.busNum eq "town_1"?"selected":""}>마을1</option>   
									<option value="town_2" ${param.busNum eq "town_2"?"selected":""}>마을2</option> 
									<option value="town_3" ${param.busNum eq "town_3"?"selected":""}>마을3</option>   
								</optgroup>	
						</select>
					</form>
				</div>
				
				<table class = "announcement_list">
					<thead>
						<tr class = "announcement_menu">
							<!-- 
							<th><input id="allCheck" type="checkbox"/></th>
							 -->
							<th>번호</th>
							<th>제목</th>							
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="list">
							<tr>
							<!-- 
								<td class = "announcement_article"><input id="Rowcheck" name="checkRow" class="chBox" type="checkbox" value="${list.idx}"/></td>
							 -->
							 	<td class = "announcement_article">${list.idx}</td>
								<td class = "announcement_article announcement_title">
									<form action="/DeaJeon/view" method="POST">
										<a href="javascript:;" onclick = "parentNode.submit();">${list.title}</a>
										<input type="hidden" name="busNum" value="${param.busNum}" />
										<input type="hidden" name="idx" value="${list.idx}" />
										<input type="hidden" name="busName" value="${param.busName}" />
									</form>
								</td>														
								<td class = "announcement_article">${list.writer}</td>
								<td class = "announcement_article">
									<fmt:formatDate value="${list.regDate}" pattern="yyyy.MM.dd"/>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="btn_box2">
					<button class="btn" type="button" id="list_btn">목록</button>
					<script>	
						$("#list_btn").click(function(){
							self.location = "/DeaJeon/main";
						});
					</script>
				</div>
			</div>
		</div>
		
		<!-- Footer -->	
	    <footer class="footer" id="footer">
		    <%@include file="../include/footer.jsp" %>
		</footer>
		
		<script type="text/javascript" src="/resources/jquery/jstyle.js"></script>
	</body>
</html>