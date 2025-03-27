<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="cr" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/index.css?v=7">
<link rel="stylesheet" type="text/css" href="./css/member_join.css?v=3">
<style>
.box {
	width: 800px;
	height: 300px;
	border: 1px solid black;
	overflow: auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<!--최상단-->
	<cr:import url="./top.jsp"></cr:import>
	<!--메뉴끝-->
	<!-- 회원가입 -->
	<cr:import url="./member_join_view.jsp"></cr:import>
	<!-- 회원가입 끝 -->
	<!-- 카피라이터 -->
	<footer>
		<cr:import url="./copyright.do"></cr:import>
	</footer>
</body>
</html>