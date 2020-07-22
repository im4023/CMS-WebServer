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
			
			<title>버스광고시스템</title>
			
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
					<span class = title_span><strong>버스 광고 서비스</strong></span>
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
				<form name="ex_1" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="ex_1" />
					<input type="hidden" name= busName value ="급행1"/>
				</form>
				<form name="ex_2" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="ex_2" />
					<input type="hidden" name= busName value ="급행2"/>
				</form>
				<form name="ex_3" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="ex_3" />
					<input type="hidden" name= busName value ="급행3"/>
				</form>
				<form name="BN_1001" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_1001" />
					<input type="hidden" name= busName value ="1001"/>
				</form>
				<form name="BN_1002" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_1002" />
					<input type="hidden" name= busName value ="1002"/>
				</form>
				<form name="BN_101" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_101" />
					<input type="hidden" name= busName value ="101"/>
				</form>
				<form name="BN_102" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_102" />
					<input type="hidden" name= busName value ="102"/>
				</form>
				<form name="BN_103" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_103" />
					<input type="hidden" name= busName value ="103"/>
				</form>
				<form name="BN_104" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_104" />
					<input type="hidden" name= busName value ="104"/>
				</form>
				<form name="BN_105" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_105" />
					<input type="hidden" name= busName value ="105"/>
				</form>
				<form name="BN_106" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_106" />
					<input type="hidden" name= busName value ="106"/>
				</form>
				<form name="BN_107" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_107" />
					<input type="hidden" name= busName value ="107"/>
				</form>
				<form name="BN_108" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_108" />
					<input type="hidden" name= busName value ="108"/>
				</form>
				<form name="BN_113" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_113" />
					<input type="hidden" name= busName value ="113"/>
				</form>
				<form name="BN_114" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_114" />
					<input type="hidden" name= busName value ="114"/>
				</form>
				<form name="BN_115" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_115" />
					<input type="hidden" name= busName value ="115"/>
				</form>
				<form name="BN_119" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_119" />
					<input type="hidden" name= busName value ="119"/>
				</form>
				<form name="BN_201" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_201" />
					<input type="hidden" name= busName value ="201"/>
				</form>
				<form name="BN_202" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_202" />
					<input type="hidden" name= busName value ="202"/>
				</form>
				<form name="BN_203" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_203" />
					<input type="hidden" name= busName value ="203"/>
				</form>
				<form name="BN_211" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_211" />
					<input type="hidden" name= busName value ="211"/>
				</form>
				<form name="BN_216" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_216" />
					<input type="hidden" name= busName value ="216"/>
				</form>
				<form name="BN_301" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_301" />
					<input type="hidden" name= busName value ="301"/>
				</form>
				<form name="BN_311" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_311" />
					<input type="hidden" name= busName value ="311"/>
				</form>
				<form name="BN_311" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_312" />
					<input type="hidden" name= busName value ="312"/>
				</form>
				<form name="BN_313" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_313" />
					<input type="hidden" name= busName value ="313"/>
				</form>
				<form name="BN_314" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_314" />
					<input type="hidden" name= busName value ="314"/>
				</form>
				<form name="BN_315" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_315" />
					<input type="hidden" name= busName value ="315"/>
				</form>
				<form name="BN_316" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_316" />
					<input type="hidden" name= busName value ="316"/>
				</form>
				<form name="BN_318" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_318" />
					<input type="hidden" name= busName value ="318"/>
				</form>
				<form name="BN_501" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_501" />
					<input type="hidden" name= busName value ="501"/>
				</form>
				<form name="BN_511" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_511" />
					<input type="hidden" name= busName value ="511"/>
				</form>
				<form name="BN_512" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_512" />
					<input type="hidden" name= busName value ="512"/>
				</form>
				<form name="BN_513" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_513" />
					<input type="hidden" name= busName value ="513"/>
				</form>
				<form name="BN_514" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_514" />
					<input type="hidden" name= busName value ="514"/>
				</form>
				<form name="BN_601" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_601" />
					<input type="hidden" name= busName value ="601"/>
				</form>
				<form name="BN_602" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_602" />
					<input type="hidden" name= busName value ="602"/>
				</form>
				<form name="BN_603" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_603" />
					<input type="hidden" name= busName value ="603"/>
				</form>
				<form name="BN_604" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_604" />
					<input type="hidden" name= busName value ="604"/>
				</form>
				<form name="BN_605" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_605" />
					<input type="hidden" name= busName value ="605"/>
				</form>
				<form name="BN_607" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_607" />
					<input type="hidden" name= busName value ="607"/>
				</form>
				<form name="BN_608" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_608" />
					<input type="hidden" name= busName value ="608"/>
				</form>
				<form name="BN_611" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_611" />
					<input type="hidden" name= busName value ="611"/>
				</form>
				<form name="BN_613" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_613" />
					<input type="hidden" name= busName value ="613"/>
				</form>
				<form name="BN_615" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_615" />
					<input type="hidden" name= busName value ="615"/>
				</form>
				<form name="BN_616" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_616" />
					<input type="hidden" name= busName value ="616"/>
				</form>
				<form name="BN_617" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_617" />
					<input type="hidden" name= busName value ="617"/>
				</form>
				<form name="BN_618" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_618" />
					<input type="hidden" name= busName value ="618"/>
				</form>
				<form name="BN_619" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_619" />
					<input type="hidden" name= busName value ="619"/>
				</form>
				<form name="BN_701" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_701" />
					<input type="hidden" name= busName value ="701"/>
				</form>
				<form name="BN_703" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_703" />
					<input type="hidden" name= busName value ="703"/>
				</form>
				<form name="BN_704" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_704" />
					<input type="hidden" name= busName value ="704"/>
				</form>
				<form name="BN_705" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_705" />
					<input type="hidden" name= busName value ="705"/>
				</form>
				<form name="BN_706" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_706" />
					<input type="hidden" name= busName value ="706"/>
				</form>
				<form name="BN_711" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_711" />
					<input type="hidden" name= busName value ="711"/>
				</form>
				<form name="BN_802" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_802" />
					<input type="hidden" name= busName value ="802"/>
				</form>
				<form name="BN_116" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_116" />
					<input type="hidden" name= busName value ="116"/>
				</form>
				<form name="BN_117" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_117" />
					<input type="hidden" name= busName value ="117"/>
				</form>
				<form name="BN_121" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_121" />
					<input type="hidden" name= busName value ="121"/>
				</form>
				<form name="BN_212" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_212" />
					<input type="hidden" name= busName value ="212"/>
				</form>
				<form name="BN_317" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_317" />
					<input type="hidden" name= busName value ="317"/>
				</form>
				<form name="BN_606" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_606" />
					<input type="hidden" name= busName value ="606"/>
				</form>
				<form name="BN_612" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_612" />
					<input type="hidden" name= busName value ="612"/>
				</form>
				<form name="BN_614" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_614" />
					<input type="hidden" name= busName value ="614"/>
				</form>
				<form name="BN_620" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_620" />
					<input type="hidden" name= busName value ="620"/>
				</form>
				<form name="BN_622" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_622" />
					<input type="hidden" name= busName value ="622"/>
				</form>
				<form name="BN_712" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_712" />
					<input type="hidden" name= busName value ="712"/>
				</form>
				<form name="BN_911" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_911" />
					<input type="hidden" name= busName value ="911"/>
				</form>
				<form name="BN_912" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_912" />
					<input type="hidden" name= busName value ="912"/>
				</form>
				<form name="BN_916" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_916" />
					<input type="hidden" name= busName value ="916"/>
				</form>
				<form name="BN_918" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_918" />
					<input type="hidden" name= busName value ="918"/>
				</form>
				<form name="BN_11" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_11" />
					<input type="hidden" name= busName value ="11"/>
				</form>
				<form name="BN_17" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_17" />
					<input type="hidden" name= busName value ="17"/>
				</form>
				<form name="BN_41" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_41" />
					<input type="hidden" name= busName value ="41"/>
				</form>
				<form name="BN_42" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_42" />
					<input type="hidden" name= busName value ="42"/>
				</form>
				<form name="BN_46" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_46" />
					<input type="hidden" name= busName value ="46"/>
				</form>
				<form name="BN_20" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_20" />
					<input type="hidden" name= busName value ="20"/>
				</form>
				<form name="BN_21" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_21" />
					<input type="hidden" name= busName value ="21"/>
				</form>
				<form name="BN_22" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_22" />
					<input type="hidden" name= busName value ="22"/>
				</form>
				<form name="BN_23" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_23" />
					<input type="hidden" name= busName value ="23"/>
				</form>
				<form name="BN_24" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_24" />
					<input type="hidden" name= busName value ="24"/>
				</form>
				<form name="BN_25" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_25" />
					<input type="hidden" name= busName value ="25"/>
				</form>
				<form name="BN_26" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_26" />
					<input type="hidden" name= busName value ="26"/>
				</form>
				<form name="BN_27" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_27" />
					<input type="hidden" name= busName value ="27"/>
				</form>
				<form name="BN_30" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_30" />
					<input type="hidden" name= busName value ="30"/>
				</form>
				<form name="BN_31" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_31" />
					<input type="hidden" name= busName value ="31"/>
				</form>
				<form name="BN_32" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_32" />
					<input type="hidden" name= busName value ="32"/>
				</form>
				<form name="BN_33" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_33" />
					<input type="hidden" name= busName value ="33"/>
				</form>
				<form name="BN_34" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_34" />
					<input type="hidden" name= busName value ="34"/>
				</form>
				<form name="BN_52" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_52" />
					<input type="hidden" name= busName value ="52"/>
				</form>
				<form name="BN_60" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_60" />
					<input type="hidden" name= busName value ="60"/>
				</form>
				<form name="BN_61" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_61" />
					<input type="hidden" name= busName value ="61"/>
				</form>
				<form name="BN_62" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_62" />
					<input type="hidden" name= busName value ="62"/>
				</form>
				<form name="BN_63" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_63" />
					<input type="hidden" name= busName value ="63"/>
				</form>
				<form name="BN_66" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_66" />
					<input type="hidden" name= busName value ="66"/>
				</form>
				<form name="BN_71" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_71" />
					<input type="hidden" name= busName value ="71"/>
				</form>
				<form name="BN_72" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_72" />
					<input type="hidden" name= busName value ="72"/>
				</form>
				<form name="BN_73" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_73" />
					<input type="hidden" name= busName value ="73"/>
				</form>
				<form name="BN_74" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_74" />
					<input type="hidden" name= busName value ="74"/>
				</form>
				<form name="BN_75" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="BN_75" />
					<input type="hidden" name= busName value ="75"/>
				</form>
				<form name="CE_1" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="CE_1" />
					<input type="hidden" name= busName value ="첨단1"/>
					</form>
				<form name="town_1" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="town_1" />
					<input type="hidden" name= busName value ="마을1"/>
				</form>
				<form name="town_2" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="town_2" />
					<input type="hidden" name= busName value ="마을2"/>
				</form>
				<form name="town_3" action="/DeaJeon/list" method="POST">
					<input type="hidden" name="busNum" value="town_3" />
					<input type="hidden" name= busName value ="마을3"/>
				</form>
				
				<table class = "bus_list">
					<tbody>
						<tr>
							<td colspan ="6"> <strong><a>대전광역시 시내버스</a></strong></td>
						</tr>
						<tr  class ="bus_title1">
							<td colspan ="6"> <strong><a class = "white_txt">급행버스</a></strong></td>
						</tr>
						<tr>
							
							<td colspan ="2"><a class = "red_txt" href="#" onclick="javascript:document.ex_1.submit();">급행1</a></td>
							<td colspan ="2"><a class = "red_txt" href="#" onclick="javascript:document.ex_2.submit();">급행2</a></td>
							<td colspan ="2"><a class = "red_txt" href="#" onclick="javascript:document.ex_3.submit();">급행3</a></td>
						</tr>
						<tr class ="bus_title1">
							<td colspan ="6"> <strong><a class = "white_txt">광역버스</a></strong></td>
						</tr>
						<tr>
							<td colspan ="3"><a class = "red_txt" href="#" onclick="javascript:document.BN_1001.submit();">1001</a></td>
							<td colspan ="3"><a class = "red_txt" href="#" onclick="javascript:document.BN_1002.submit();">1002</a></td>
						</tr>
						<tr  class ="bus_title2">
							<td colspan ="6"><strong><a class = "white_txt">간선버스</a></strong></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_101.submit();">101</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_102.submit();">102</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_103.submit();">103</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_104.submit();">104</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_105.submit();">105</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_106.submit();">106</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_107.submit();">107</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_108.submit();">108</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_113.submit();">113</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_114.submit();">114</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_115.submit();">115</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_119.submit();">119</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_201.submit();">201</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_202.submit();">202</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_203.submit();">203</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_211.submit();">211</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_216.submit();">216</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_301.submit();">301</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_311.submit();">311</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_312.submit();">312</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_313.submit();">313</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_314.submit();">314</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_315.submit();">315</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_316.submit();">316</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_318.submit();">318</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_501.submit();">501</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_511.submit();">511</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_512.submit();">512</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_513.submit();">513</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_514.submit();">514</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_601.submit();">601</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_602.submit();">602</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_603.submit();">603</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_604.submit();">604</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_605.submit();">605</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_607.submit();">607</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_608.submit();">608</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_611.submit();">611</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_613.submit();">613</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_615.submit();">615</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_616.submit();">616</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_617.submit();">617</a></td>
						</tr>
						<tr>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_618.submit();">618</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_619.submit();">619</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_701.submit();">701</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_703.submit();">703</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_704.submit();">704</a></td>
							<td><a class = "blue_txt" href="#" onclick="javascript:document.BN_705.submit();">705</a></td>
						</tr>
						<tr>
							<td colspan ="2"><a class = "blue_txt" href="#" onclick="javascript:document.BN_706.submit();">706</a></td>
							<td colspan ="2"><a class = "blue_txt" href="#" onclick="javascript:document.BN_711.submit();">711</a></td>
							<td colspan ="2"><a class = "blue_txt" href="#" onclick="javascript:document.BN_802.submit();">802</a></td>
						</tr>
						<tr  class ="bus_title3">
							<td colspan ="6"><strong><a class = "white_txt">지선버스</a></strong></td>
						</tr>
						<tr>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_116.submit();">116</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_117.submit();">117</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_121.submit();">121</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_212.submit();">212</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_317.submit();">317</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_606.submit();">606</a></td>
						</tr>
						<tr>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_612.submit();">612</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_614.submit();">614</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_620.submit();">620</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_622.submit();">622</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_712.submit();">712</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_911.submit();">911</a></td>
						</tr>
						<tr>
							<td colspan ="2"><a class = "green_txt" href="#" onclick="javascript:document.BN_912.submit();">912</a></td>
							<td colspan ="2"><a class = "green_txt" href="#" onclick="javascript:document.BN_916.submit();">916</a></td>
							<td colspan ="2"><a class = "green_txt" href="#" onclick="javascript:document.BN_918.submit();">918</a></td>
						</tr>
						<tr  class ="bus_title3">
							<td colspan ="6"><strong><a class = "white_txt">외곽버스</a></strong></td>
						</tr>
						<tr>
							<td class= "bus_title3"><a class = "white_txt">유성구</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_11.submit();">11</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_17.submit();">17</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_41.submit();">41</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_42.submit();">42</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_46.submit();">46</a></td>
						</tr>
						<tr>
							<td rowspan="2" class= "bus_title3"><a class = "white_txt">서구</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_20.submit();">20</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_21.submit();">21</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_22.submit();">22</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_23.submit();">23</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_24.submit();">24</a></td>
							
						</tr>
						<tr>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_25.submit();">25</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_26.submit();">26</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_27.submit();">27</a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
						</tr>
						<tr>
							<td class= "bus_title3"><a class = "white_txt">중구</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_30.submit();">30</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_31.submit();">31</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_32.submit();">32</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_33.submit();">33</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_34.submit();">34</a></td>
						</tr>
						<tr>
							<td rowspan="2" class= "bus_title3"><a class = "white_txt">동구</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_52.submit();">52</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_60.submit();">60</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_61.submit();">61</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_62.submit();">62</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_63.submit();">63</a></td>
							
						</tr>
						<tr>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_607.submit();">66</a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
						</tr>
						<tr>
							<td class= "bus_title3"><a class = "white_txt">대덕구</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_71.submit();">71</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_72.submit();">72</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_73.submit();">73</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_74.submit();">74</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.BN_75.submit();">75</a></td>
						</tr>
						<tr>
							<td class= "bus_title3"><a class = "white_txt">맞춤</a></td>
							<td><a class = "green_txt" href="#" onclick="javascript:document.CE1.submit();">첨단1</a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
							<td><a class = "green_txt"></a></td>
						</tr>
						<tr  class ="bus_title2">
							<td colspan ="6"><strong><a class = "white_txt">마을버스</a></strong></td>
						</tr>
						<tr>
							<td colspan ="2"><a class = "blue_txt" href="#" onclick="javascript:document.town1.submit();">마을1</a></td>
							<td colspan ="2"><a class = "blue_txt" href="#" onclick="javascript:document.town2.submit();">마을2</a></td>
							<td colspan ="2"><a class = "blue_txt" href="#" onclick="javascript:document.town3.submit();">마을3</a></td>
						</tr>								
					</tbody>
				</table>
			</div>
		</div>

		<!-- Footer -->	
	    <footer class="footer" id="footer">
		    <%@include file="../include/footer.jsp" %>
		</footer>
		
		<script type="text/javascript" src="/resources/jquery/jstyle.js"></script>
	</body>
</html>