<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Search Result</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	
<hgroup class="mb20">
		<h1>Search Results</h1>
		<h2 class="lead">
			<strong class="text-danger"></strong> results were found for the
			search <strong class="text-danger"></strong>
		</h2>
		</hgroup>
<c:forEach items="${result}" var="music">
	<div class="container">

		
		
			<section class="col-xs-12 col-sm-6 col-md-12"> <article
				class="search-result row">

			<div class="col-xs-12 col-sm-12 col-md-3">

				<a href="#" title="${music.songName}" class="thumbnail"><img
					src="https://cdn2.iconfinder.com/data/icons/music-player-icons-line/54/Big_Note-512.png" alt="Lorem ipsum" /></a>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-2">
				<ul class="meta-search">
					<li><i class="glyphicon glyphicon-calendar"></i> <span>${music.releaseDate}</span></li>
					<li><i class="glyphicon glyphicon-user"></i> <span>${music.artist}</span></li>
					<li><i class="glyphicon glyphicon-tags"></i> <span>${music.price}</span></li>
					<li><i class="glyphicon glyphicon-music"></i> <span>${music.genre}</span></li>
				</ul>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-7 excerpet">
				<h3>
					<a href="#" title="">${music.songName}</a>
				</h3>
				<p>${music.description}</p>
				<span class="plus"><a href="#" title="Lorem ipsum"><i
						class="glyphicon glyphicon-plus"></i></a></span>
			</div>
			<span class="clearfix borda"></span> </article> </section>
	</div>
	</c:forEach>
</body>
</html>