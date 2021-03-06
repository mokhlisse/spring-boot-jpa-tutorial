<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>

	 <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">All Task<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Manage Tasks</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <main role="main" class="container invisible-at-first" id="homeDiv">
      <div class="jumbotron text-center">
      	<h1>Welcome to Task Manager</h1>
      </div>
      <div class="container text-center" id="tasksDiv">
      	<h3>My Tasks</h3>
      	<hr>
      	<div class="table-responsive">
      		<table class="table table-striped table-bordered text-left">
      			<thead>
      				<tr>
      					<th>id</th>
      					<th>name</th>
      					<th>description</th>
      					<th>finished</th>
      					<th></th>
      					<th></th>
      				</tr>
      			</thead>
      			<tbody>
      					<tr th:each="task: ${task}">
      						<td th:utext="${task.id}"/>
      						<td th:utext="${task.name}"/>
      						<td th:utext="${task.description}"/>
      						<td th:utext="${task.finished}"></td>
      						<td><a href="update-task?id=${task.id}"><span class="fa fa-pencil"></span></a></td>
      						<td><a href="update-delete?id=${task.id}"><span class="fa fa-trash"></span></a></td>
      					</tr>
      			</tbody>
      		</table>      		
      	</div>
      </div>
    </main><!-- /.container -->
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="js/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
</body>
</html>