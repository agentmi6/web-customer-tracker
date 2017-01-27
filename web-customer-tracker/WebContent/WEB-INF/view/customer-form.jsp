<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css"
	  rel="stylesheet"
	  href="${pageContext.request.contextPath}/resources/css/style.css" />
	  
	  <link type="text/css"
	  rel="stylesheet"
	  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer"  method="POST">
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>						
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>						
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>						
					</tr>
					<tr>
						<td><label>Customer Type:</label></td>
						<td>
							<form:select path="${customerType.customerTypeId}">
								<option value="-1">Select Customer Type</option>
								<c:forEach var="cType" items="${customerTypes}">
									<form:option value="${cType.customerTypeId}">
										${cType.customerTypeName}
									</form:option>
								</c:forEach>
							</form:select>	
						</td>
					</tr>
					<tr>
						<td><label>Published on:</label></td>
						<td><form:input type="text" path="publishedOn" class="datepicker"/></td>						
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"></td>						
					</tr>
				</tbody>
			</table>		
		</form:form>
		
		<div style="clear; both;"></div>
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
				
		
	</div>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".datepicker").datepicker({
				dateFormat : "dd-mm-yy",
				changeMonth : true,
				changeYear : true,
				showButtonPanel : true
			});
		});
	</script>
</body>
</html>