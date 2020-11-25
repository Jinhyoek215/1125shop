<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class ="dao.ProductRepository" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<!--  https://getbootstrap.com/docs/4.3/getting-started/introduction/ -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div Class ="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>
	
	<div class="container">
		<div class ="row" align="center">
			<%
			 	for(int i=0; i<listOfProducts.size();i++){
				 	Product product = listOfProducts.get(i);
			%>
				<div class="col-md-4">
					<h3><%=product.getPname() %></h3>
					<p><%=product.getDescription() %>
					<p><%=product.getUnitPrice() %>
				</div>
			<%
			 	}
			%>	
		
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>