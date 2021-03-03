<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Music Entry</title>
</head>
<body>
			<form:form id="form">
				<h1 class="text-center">Create Music Entry:</h1>
				<p>Please enter the details of your song:</p>
				<label for="name" class="mb-1">Song Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="name" name="name"
						placeholder="Enter a task name" class="form-control">

				</div>
				<label for="startDate" class="mb-1">Release Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="startDate" name="startDate"
						class="form-control">
				</div>
				<label for="description" class="mb-1">Description:</label>
				<div class="input-group mb-3">

					<textarea id="description" name="description" rows="5" cols="40"
						placeholder="Enter description here..." class="form-control"></textarea>

				</div>
				<label for="email" class="mb-1">Artist Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="email" name="email"
						placeholder="Enter an email" class="form-control">

				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
</body>
</html>