<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<title>List</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:url value="/" var="contextPath" />
<c:url value="/list/create" var="createListContextPath" />

<link rel="stylesheet" href="${contextPath}resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${contextPath}resources/css/bootstrap-theme.min.css">

</head>

<body>

	<div class="container">
		<h1>
			Your Lists<br />
		</h1>

		<ul class="list-group">
			<c:forEach var="list" items="${lists }">
				<a href="#" class="list-group-item list-group-item-action">${list.getTitle() }</a>
			</c:forEach>
		</ul>

		<form action="${createListContextPath}" method="POST">
			<button type="submit" class="btn btn-primary">Create List</button>
		</form>

	</div>

</body>
</html>