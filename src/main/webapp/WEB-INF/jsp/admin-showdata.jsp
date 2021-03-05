<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<style>
	h1 {
		padding: 20px;
	}

</style>

<script type="text/javascript">
	window.setTimeout(function() {
		document.getElementById('alert').style.display = 'none';
	}, 2500);
</script>

</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
  
	<h1>Admin Control Panel</h1>


	<div class="accordion" id="accordionExample">
	  <div class="card">
	    <div class="card-header" id="headingOne">
	      <h2 class="mb-0">
	        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	         	Music Entry Management
	        </button>
	      </h2>
	    </div>
	
	    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
	      <div class="card-body">
	        
	        <!-- Begin Card body -->
	        <h3>Our Inventory:</h3>
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
	
						<td><a href="/edit/${music.id}">Edit</a></td>
						<td><a href="/delete/${music.id}">Delete</a></td>
							
					</tr>
				</c:forEach>
			</tbody>
		</table>
	             
	        <!-- End Card Body -->
	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <div class="card-header" id="headingTwo">
	      <h2 class="mb-0">
	        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	          	User access management
	        </button>
	      </h2>
	    </div>
	    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
	      <div class="card-body">
			<!-- Begin Card body -->
	        
	        <h3>Registered Users:</h3>
	        <table class="table table-striped table-light">
	        	<thead>
					<tr>
						<th scope="col">UID</th>
						<th scope="col">Username</th>
						<th scope="col">Email</th>
						<th scope="col">Password</th>
						<th scope="col"></th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${userList}" var="userList">
						<tr>
							<td>${userList.id}</td>
							<td>${userList.username}</td>
							<td>${userList.email}</td>
							<td>${userList.password}</td>
							
							<td><a href="/edit/${userList.id}">Edit</a></td>
							<td><a href="/deleteuser/${userList.id}">Delete</a></td>
						</tr>
					</c:forEach>
			</tbody>
	        
	        </table>
	        <!-- End Card Body -->

	      </div>
	    </div>
	  </div>
	  <div class="card">
	    <div class="card-header" id="headingThree">
	      <h2 class="mb-0">
	        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
	          Order Management
	        </button>
	      </h2>
	    </div>
	    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
	      <div class="card-body">
	       	<!-- Start card body -->
	       	<h3>Order Management:</h3>
	       	<table class="table table-striped table-light">
	        	<thead>
					<tr>
						<th scope="col">Order Id</th>
						<th scope="col">User Making Purchase</th>
						<th scope="col">Order Details</th>
						<th scope="col">Total Amount Paid</th>
						<th scope="col">Order Status</th>
						<th scope="col"></th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderList}" var="orderList">
						<tr>
							<td>${orderList.id}</td>
							<td>${orderList.user}</td>
							<td>${orderList.orderDetails}</td>
							<td>${orderList.orderTotal}</td>
							<td>${orderList.orderStatus }</td>
							
							<td><a href="/deleteorder/${userList.id}">Delete Order</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	       	<!-- End card body -->
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>