<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Steel Fabrication</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
    rel="stylesheet">
<link href="mycss/bookstore.css" rel="stylesheet">
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

     .header-text {
             font-size: 24px;
         }

     .container {
         text-align: center;
         justify-content: center;
         align-items: center;
         padding: 100px;

     }

     table {
         width: 100%;
         border-collapse: collapse;
         margin-bottom: 20px; /* Add some bottom margin to the table */
     }

     th, td {
         border: 1px solid #dddddd;
         text-align: left;
         padding: 8px;
     }

     th {
         background-color: #007bff;
         color: white;
     }

     tr:nth-child(even) {
         background-color: #f2f2f2;
     }

     tr:nth-child(odd) {
         background-color: #ffffff;
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

     footer {
         position: fixed;
         bottom: 0;
         width: 100%;
         background-color: #333;
         color: white;
         padding: 5px 0;
         text-align: center;
     }

    </style>
</head>
<body>
   <header>
            <div class="header-text">
                Steel Fabrication, Welcome
            </div>
        </header>
<body>
  <div class="container">
     <table class="table table-striped table-bordered table-light myfont">
        <thead class="bg-info">
           <tr>
              <th>Order Id</th>
              <th>Order Date and Time</th>
              <th>Status</th>
              <th>Total Qty</th>
              <th>Product Name</th>
              <th>Product Price</th>

           </tr>
        </thead>
        <tbody>
           <c:forEach var="order" items="${MyOrderList}">
              <tr>
                <td>${order.oId}</td>
                 <td>${order.oDate }</td>
                 <td>${order.status }</td>
                 <td>${order.qty }</td>
                 <td>${order.product.name}</td>
                 <td>${order.product.price}</td>

              </tr>
           </c:forEach>
        </tbody>
     </table>

     <div class="message">
        <form:form action="continueshopping" method="post" >
            <input class="button" type="submit" value=" Continue Shopping " />
        </form:form>
     </div>
  </div>

   <footer>
      <div class="copyright-text">
          &#169; 2024 Ganavenkat
      </div>
  </footer>
</body>
</html>
