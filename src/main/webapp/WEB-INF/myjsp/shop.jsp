<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Products Page</title>
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
    	rel="stylesheet">
    <link href="mycss/steel.css" rel="stylesheet">
    <style>

        .top-bar {
            background-color: #333;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }





        .show-products-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }


        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 20px;
            margin-top: 20px;
        }


        .product-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            text-align: center;
        }


        .product-name {
            font-weight: bold;
            margin-bottom: 5px;
        }


        .product-image {
            max-width: 100%;
            height: auto;
            margin-bottom: 5px;
        }


        .product-price {
            font-size: 14px;
            color: #888;
            margin-bottom: 5px;
        }


        .view-product-button {
            background-color: #4CAF50;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
	<div class="card">
		<c:import url="myheader1.jsp" />
	</div>
	<div class="container">
		<form action="/products">
			<table class="table table-striped table-bordered table-light myfont">
				<tr>
					<td><select name="category" class="form-control mytext">
							<c:forEach var="catName" items="${MyCatList}">
								<option value="${catName.name}">
									<c:out value="${catName.name}" />
								</option>
							</c:forEach>
					</select></td>
					<td><input class="btn btn-primary" type="submit"
						value="Show Products " /></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="container">
    		<table class="table table-striped table-bordered table-light myfont">
    			<thead class="bg-info">
    				<tr>
    					<th>Product ID</th>
    					<th>Product Name</th>
    					<th>Price</th>
    					<th>Items Left</th>
    					<th col span="2" align="center"><a href="showMyCart"
    						class="btn btn-danger"> Show My Cart </a></th>
    				</tr>
    			</thead>
    			<tbody>
    				<c:forEach var="product" items="${MyProductList}">
    					<tr>
    						<td>${product.id }</td>
    						<td>${product.name }</td>
    						<td>${product.price }</td>
    						<td>${product.qty }</td>
    						<td><form:form action="addToCart">
    								<input type="hidden" name="bookId" value="${product.id }" />
    								<input class="btn btn-primary" type="submit"
    									value=" Add to My Cart " />
    							</form:form></td>
    						<td><form:form action="showBookInfo" method="get">
    								<input type="hidden" name="bookId" value="${product.id }" />
    								<input class="btn btn-primary" type="submit" value=" More Info " />
    							</form:form></td>
    					</tr>
    				</c:forEach>
    			</tbody>
    		</table>
    	</div>
	<c:import url="myfooter.jsp" />
</body>
</html>