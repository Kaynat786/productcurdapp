<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp" %>
</head>
<body>
	
	<div class="container">
	
		<div class="row">
		
			<div class="col-md-6 offset-md-6">
			
				<h1 class="text-center mb-3">Change product details</h1>
				
					<form action="${pageContext.request.contextPath }/handle-product" method="post">
					
						<input type="hidden" id="id" name="id" value="${product.id}"> 
						<div class="form-group">
						
							<label for="name">Product Name</label> 
							<input type="text" class="form-control" id="name" aria-describedby="emailhelp"
							name="name" placeholder="Enter the product name here"
							value="${product.name }">
						
						</div>
						
						<div class="form-group">
						
							<label for="description">Product Description</label>
							<textarea rows="5" class="form-control" name="description"
							id="description" placeholder="Enter the product description"
							> ${product.description } </textarea>
						
						</div>
						
						<div class="form-group">
						
							<label for="price">Product Price</label>
							<input type="text" name="price" placeholder="Enter product price"
							class="form-control" id="price"
							value="${product.price }">
							
						</div>
						
						<div class="container text-center">
							<a href="${pageContext.request.contextPath}/" 
							class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-warning">Update</button>
						</div>
				
					</form>
			
			</div>
		
		</div>
	
	</div>
	
</body>
</html>