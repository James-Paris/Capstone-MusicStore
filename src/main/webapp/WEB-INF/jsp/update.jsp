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
						<option value="rock">Rock</option>
						<option value="pop">Pop</option>
						<option value="hiphop">Hip Hop</option>
						<option value="jazz">Jazz</option>
						<option value="country">Country</option>
					</select>
				</div>
				<label for="songName" class="mb-1">Song title:</label>
				<div class="input-group mb-3">
					<input type="text" id="songName" name="songName"
						value="${music.songName}" class="form-control">
				</div>
				
				<label for="artist" class="mb-1">Artist Name:</label>
				<div class="input-group mb-3">
					<input type="text" id="artist" name="artist"
						value="${music.artist }" class="form-control">
				</div>
				
				<label for="album" class="mb-1">Album Name:</label>
				<div class="input-group mb-3">
					<input type="text" id="album" name="album"
						value="${music.album }" class="form-control">
				</div>
				
				<label for="description" class="mb-1">Description:</label>
				<div class="input-group mb-3">
					<textarea id="description" name="description" rows="5" cols="40"
						value="${music.description }" class="form-control"></textarea>
				</div>
				
				<label for="releaseDate" class="mb-1">Release Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="releaseDate" name="releaseDate"
						class="form-control">
				</div>
				
				<label for="price" class="mb-1">Song Price:</label>
				<div class="input-group mb-3">

					<input type="number" id="price" name="price"
						value="${music.price }" class="form-control">

				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
		</div>
</body>
</html>