<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<body class="bg-light">

    <div class="container">
      <div class="py-5 text-center">
        <h2>Task manager</h2>
      </div>

      <div class="row">
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Task info</h4>
          <form:form class="needs-validation"  method="POST" action="save-task" modelAttribute="task">
          
	          <input type="hidden" name="id" value="${task.id}"/>
	          
	          <div class="mb-3">
	              <form:label path="name">Name</form:label>
	              <form:input type="text" class="form-control" path="name" placeholder="name"/>
	              <div class="invalid-feedback">
	                Please enter your task name.
	              </div>
	          </div>
	          
	          <div class="mb-3">
	              <form:label path="description">Description</form:label>
	              <form:input type="text" class="form-control" path="description" placeholder="description"/>
	              <div class="invalid-feedback">
	                Please enter your task description.
	              </div>
	          </div>
	          
	           <h4 class="mb-3">Task status</h4>
				<div class="form-check">
				  <form:radiobutton class="form-check-input" type="radio" path="sFinished" id="finished1" value="true"/>
				  <label class="form-check-label" for="finished1">
				    Yes
				  </label>
				</div>
				<div class="form-check">
				  <form:radiobutton class="form-check-input" type="radio" path="sFinished" id="finished2" value="false"/>
				  <label class="form-check-label" for="finished2">
				    No
				  </label>
				</div>
	            
	            <hr class="mb-4">
	            <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
          </form:form>
        </div>
      </div>
</div>
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="js/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
</body>
</html>