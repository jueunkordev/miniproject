<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>금주 분양 매물 정보</title>
<link rel="stylesheet" type="text/css" href="./css/index.css?v=12">
<link rel="stylesheet" type="text/css" href="./css/week_tails.css?v=3">
</head>
<body>
	<!--최상단-->
	<cr:import url="./top.jsp"></cr:import>
	<!--메뉴끝-->
	<!-- 분양 상세정보 -->
	<cr:import url="./week_tails_view.jsp"></cr:import>
	<!-- 분양 상세정보 끝 -->
	<!-- 카피라이터 -->
	<footer>
		<cr:import url="./copyright.do"></cr:import>
	</footer>
</body>
</html>