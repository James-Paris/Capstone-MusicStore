<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Store</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f8ebbde80f.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	window.setTimeout(function() {
		document.getElementById('alert').style.display = 'none';
	}, 2500);
</script>
</head>
<body class="p-2">

	<c:if test="${param.deleted != null}">
		<div id="alert" class="alert alert-success" role="alert">Music
			deleted!</div>
	</c:if>

	<div class="d-flex justify-content-between p-2">
		<h1>Welcome to the Runtime Mechanics Music Store</h1>
		<form:form action="logout" method="post">
			<input type="submit" class="btn btn-light" value="Logout" />
		</form:form>
	</div>
	<div class="p-2 mb-2">
		<a href="/create">Add Music Entry</a>
	</div>
	 <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" value="Search" />
    </form>
	
	<table class="table table-striped table-light">
		<thead>
			<tr>
				<th scope="col">Genre</th>
				<th scope="col">Song Name</th>
				<th scope="col">Artist</th>
				<th scope="col">Description</th>
				<th scope="col">Release Date</th>
				<th scope="col">Price</th>
				<th scope="col"></th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${musics}" var="music">
				<tr>
					<td>${music.genre}</td>
					<td>${music.songName}</td>
					<td>${music.artist}</td>
					<td>${music.description}</td>
					<td><fmt:formatDate type="date" value="${music.releaseDate}" /></td>
					<td>${music.price}</td>

					<c:choose>
						<c:when test="${task.user.id == user.id}">
							<td><a href="/edit/${task.id}">Edit</a></td>
							<td><a href="/delete/${task.id}">Delete</a></td>
						</c:when>
						<c:otherwise>
							<td></td>
							<td></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>