<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Music Entry</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>
			<div class="d-flex justify-content-center">
			<form:form id="form" class="border border-3 rounded p-4 m-3">
				<h1 class="text-center">Update Music Entry:</h1>
				<p>Please enter the details of your song:</p>
				<label for="genre" class="mb-1">Genre:</label>
				<div class="input-group mb-2">
					<select name="genre" id="genre" class="form-control">
						<option value="Rock"
							<c:if test="${task.genre == 'Rock'}">selected</c:if>>Rock</option>
						<option value="Pop"
							<c:if test="${task.genre == 'Pop'}">selected</c:if>>Pop</option>
						<option value="Hip Hop"
							<c:if test="${task.genre == 'Hip Hop'}">selected</c:if>>Hip Hop</option>
						<option value="Jazz"
							<c:if test="${task.genre == 'Jazz'}">selected</c:if>>Jazz</option>
						<option value="Country"
							<c:if test="${task.genre == 'Country'}">selected</c:if>>Country</option>
					</select>
				</div>
				<label for="songName" class="mb-1">Song title:</label>
				<div class="input-group mb-3">
					<input type="text" id="songName" name="songName"
						value="${task.songName}" class="form-control">
				</div>
				
				<label for="artist" class="mb-1">Artist Name:</label>
				<div class="input-group mb-3">
					<input type="text" id="artist" name="artist"
						value="${task.artist }" class="form-control">
				</div>
				
				<label for="album" class="mb-1">Album Name:</label>
				<div class="input-group mb-3">
					<input type="text" id="album" name="album"
						value="${task.album }" class="form-control">
				</div>
				
				<label for="description" class="mb-1">Description:</label>
				<div class="input-group mb-3">
					<textarea id="description" name="description" rows="5" cols="40"
					  class="form-control">${task.description }</textarea>
				</div>
				
				<label for="releaseDate" class="mb-1">Release Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="releaseDate" name="releaseDate" class="form-control"
						value=<fmt:formatDate pattern = "yyyy-MM-dd" value="${task.releaseDate}" />>
				</div>
				
				<label for="price" class="mb-1">Song Price:</label>
				<div class="input-group mb-3">

					<input type="number" step="0.01" min="0" id="price" name="price"
						value="${task.price }" class="form-control">

				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
		</div>
</body>
</html>