<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
		crossorigin="anonymous">
</script>
<link type="text/css" 
		rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="row">

			<div class="col-md-10" style="margin:30px 0px 50px 0px;">
				<h3>Add Customer Type</h3>
			</div>
			
		
			<div class="col-md-10">
				<form:form action="saveCustomerType" modelAttribute="customerType" method="POST">
		
					<div class="form-group col-md-8">
						<label for="customerTypeName1">Customer Type Name:</label> 
						<form:input type="text" path="customerTypeName" id="customerTypeName1" class="form-control"  placeholder="Enter customer type name "/> 
					</div>			
						
					<button type="submit" class="btn btn-primary" style="margin-top:10px;">Save</button>						
				</form:form>
			</div>
			
			<div class="col-md-10" style="margin-top:50px;">
				<p>
					<a href="${pageContext.request.contextPath}/customerType/list">Back to List</a>
				</p>
			</div>
		
		
		</div>
		
		
	</div>

</body>
</html>