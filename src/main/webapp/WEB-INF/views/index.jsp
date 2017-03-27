<%@ page import="org.springframework.stereotype.Controller"%>
<%@ page import="org.eclipse.jdt.internal.compiler.ast.ThisReference"%>
<%@ page import="pl.baadamczyk.cinemaseatbooking.dao.SeatArrayFactory" %>
<%@ page import="pl.baadamczyk.cinemaseatbooking.helper.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%! IndexHelper helper = new IndexHelper();  %>
		

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>YourCinema booking engine</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.js"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/reserveLocally.js" />"></script>
</head>
<body>


	<h1>Start page of YourCinema seat booking</h1>
	<form method="post" action="">		
	<input type="submit" value="Reserve"/>
	
	<input type="hidden" name="seatsSelected" value="0"/>
	<input type="hidden" name="selectedIds" value="0"/>
	
	<%
		out.print(helper.generateSeatLayout());
	%>	
	</form>
</body>
</html>