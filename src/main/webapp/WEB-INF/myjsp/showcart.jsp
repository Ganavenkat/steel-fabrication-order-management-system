<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Products Page</title>
    <style>
    header {
        position: fixed;
        top: 0;
        width: 100%;
        background-color: #333;
        color: white;
        padding: 20px;
        text-align: center;
    }
    .message{
        justify-content:center;
        text-align:center;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        padding : 20px;
    }

    .rect {
        margin-top: 80px;
        width: 100%;
        background-color: #f2f2f2;
        padding: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .header-text {
        font-size: 24px;
    }

    .button {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        border-radius: 4px;
        margin: 0 10px;
        text-decoration: none;
    }
    .btn-red {
            background-color: #dc3545;
            color: white;
        }

    .button:hover {
        background-color: #0056b3;
    }

    footer {
        position: fixed;
        bottom: 0;
        width: 100%;
        background-color: #333;
        color: white;
        padding: 5px 0;
        text-align: center;
    }

    .heading {
        color: white;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #f2f2f2;
    }

    </style>
    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <div class="header-text">
            Steel Fabrication, Welcome
        </div>
    </header>

    <div class="rect">
       <a href="/products/showRatingForm" class="button">Add Rating</a>
       <a href="/customers/showMyOrdersList" class="button">Show My Orders</a>
       <a href="/customers/showMyRatings" class="button">Show My Ratings</a>
       <a href="/login" class="button btn-red">Sign Out</a>
    </div>

    	<div class="container">
    		<table class="table table-striped table-bordered table-light myfont">
    			<thead class="bg-info">
    				<tr>
    					<th>Product ID</th>
    					<th>Product Name</th>
    					<th>Price</th>
    					<th>Items Left</th>
    					<th><form action="continueshopping" method="post">
                                  <button type="submit" class="button">Continue Shopping</button>
                              </form></th>
    				</tr>
    			</thead>
    			<tbody>
    				<tr>
    					<td colspan="6" align="center">${CartEmptyMSG}</td>
    				</tr>
    				<c:forEach var="product" items="${MyCartItems}">
    					<tr>
    						<td>${product.id }</td>
    						<td>${product.name }</td>
    						<td>${product.price }</td>
    						<td>${product.qty }</td>
    						<td><form:form action="removeFromCart" method="post">
    								<input type="hidden" name="id" value="${product.id }" />
    								<input class="button" type="submit"
    									value=" Remove from My Cart " />
    							</form:form></td>
    					</tr>
    				</c:forEach>
    			</tbody>
    		</table>
    		<div class = "message">
              <form:form action="placeOrder" method="get" >
             <input class="button btn-red" type="submit"
                   value=" Place My Order " />
            </form:form></td>
            </div>
    	</div>
    <footer>
        <div class="copyright-text">
            &#169; 2024 Ganavenkat
        </div>
    </footer>
</body>
</html>