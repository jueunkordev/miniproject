<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>온라인 부동산 중개</title>
<link rel="stylesheet" type="text/css" href="./css/index.css?v=7">
</head>
<body>
	<!--최상단-->
	<cr:import url="./top.jsp"></cr:import>
	<!--메뉴끝-->
	<main>
		<!--카테고리 및 배너-->
		<section>
			<cr:import url="./banner.jsp"></cr:import>
		</section>
		<!-- 퀵 메뉴 -->
		<section>
			<cr:import url="./quickmenu.jsp"></cr:import>
		</section>
		<!--금주 분양 매물 정보 시작-->
		<section>
			<cr:import url="./webinfo.jsp"></cr:import>
		</section>
		<!--금주 분양 매물 정보 끝-->
		<!--추천 분양 정보-->
		<section>
			<cr:import url="./mdchoice.jsp"></cr:import>
		</section>
		<!--추천 분양 정보 끝-->
	</main>
	<!-- 카피라이터 -->
	<footer>
		<cr:import url="./copyright.do"></cr:import>
	</footer>
</body>
</html>