<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
			<div class="col-md-10" style="margin: 20px 0 15px 0;">
				<h3>Add Customer Types</h3>
			</div>
					
					
			<div class="col-md-10" style="margin: 20px 0 15px 0;">
				<input type="button" 
					   value="Add Customer Type"
					   onclick="window.location.href='addCustomerTypesForm'; return false;"
					   class="btn btn-primary"
				/>
			</div>
			
			
			
			<div class="col-md-10">			
				<table class="table table-bordered">
					<thead>
						<tr>							
							<th>Customer Type Name</th>							
						</tr>
					</thead>					
					<tbody>
						<c:forEach var="customerType" items="${customerTypes}"> 
							<tr>
								<td>${customerType.customerTypeName}</td>
							</tr>
						</c:forEach>
					</tbody>									
				</table>				
			</div>
			
		</div>	
	</div>


</body>
</html>