<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>
    <title>Music Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="menu-bar">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Runtime Mechanics</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin">Admin Panel</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="/shoppingcart">Cart</a>
                        </li>
                        <li class="nav-item">
                            <p>${userList.username}</p>

                        </li>
                    </ul>
                    <form method="get" action="search" class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="text" name="keyword" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Search">Search</button>
                    </form>
                    <form:form action="logout" method="post">
                        <input type="submit" class="btn btn-secondary" value="Logout" />
                    </form:form>
                </div>
            </nav>

    </div>
    </div>
    
<div id="mySidebar" class="sidebar">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <!-- NAV BAR -->
    <table class="table table-striped table-light">
        <thead>
        <tr>
            <th scope="col">Product Name</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${sh}" var="userList">
            <tr>
                <td>${music.id}</td>


                <td><a href="/edit/${userList.id}">Edit</a></td>
                <td><a href="/deleteuser/${userList.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>

    </table>


 <h5>(insert shopping cart table code here</h5>
</div>

<div id="main">
  <button class="openbtn" onclick="openNav()"><i class="bi bi-cart2"></i></button>  
</div>

<script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
    

    <div class="container banner text-center">
        <div class="row">
            <c:forEach items="${musics}" var="music">

                <div class="col-lg-3 col-md-4 col-sm-6" style="margin: 10px;">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">${music.songName}</h5>
                            <h6 class="card-subtitle mb-2 text-muted">${music.artist}</h6>
                            <p class="card-text">${music.description}</p>

                            <a class="card-link" href="/edit/${music.id}">Edit</a>
                            <a class="card-link btn btn-danger" href="/delete/${music.id}">Delete</a>

                            <a class="card-link btn btn-primary" href="/shoppingcart">Buy</a>
                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>
    </div>


</body>
<footer>
    <p>Copyright Runtime Mechanics</p>
</footer>

</html>
