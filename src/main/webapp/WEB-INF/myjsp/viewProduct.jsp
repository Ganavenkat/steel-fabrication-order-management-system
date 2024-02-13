<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table with Buttons</title>
<style>
    footer {
        position: fixed;
        bottom: 0;
        width: 100%;
        background-color: #333;
        color: white;
        padding: 10px 0;
        text-align: center;
      }

  table {
    width: 70%;
    margin: 0 auto;
    border-collapse: collapse;
  }


  th {
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    text-align: left;
  }


  td {
    padding: 8px;
    border: 1px solid #ddd;
  }


  td:first-child {
    font-weight: bold;
  }


  tr:nth-child(even) {
    background-color: #f2f2f2;
  }


  .button-container {
    text-align: center;
    margin-top: 20px;
  }


  button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    border-radius: 4px;
    margin-right: 10px;
  }

  /
  button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>

<h2>Product Info</h2>

<table>
  <tbody>
    <tr>
      <td><b>Product Id</b></td>
      <td>${MyProductInfo.id}</td>
    </tr>
    <tr>
      <td><b>Product Name</b></td>
      <td>${MyProductInfo.name}</td>
    </tr>
    <tr>
      <td><b>Price</b></td>
      <td>${MyProductInfo.price}</td>
    </tr>
    <tr>
      <td><b>Description</b></td>
      <td>${MyProductInfo.details}</td>
    </tr>
    <tr>
      <td><b>Items Left</b></td>
      <td>${MyProductInfo.qty}</td>
    </tr>
    <tr>
      <td><b>Reviews</b></td>
      <td>
        ${MyProductInfo.reviews}
      </td>
    </tr>



    <!-- Add more rows as needed -->
  </tbody>
</table>

<div class="button-container">
  <form action="addToCart" method="get">
    <input type="hidden" name="id" value="${MyProductInfo.id }" />
    <button type="submit"/>Add to My Cart</button>
    <!-- <button type="submit">Add To Cart</button> -->
  </form>
  </br>
  <form action="continueshopping" method="post">
      <button type="submit">Continue Shopping</button>
  </form>
</div>
<footer>
  <div class="copyright-text">
    &#169; 2024 Ganavenkat
  </div>
</footer>
</body>
</html>
