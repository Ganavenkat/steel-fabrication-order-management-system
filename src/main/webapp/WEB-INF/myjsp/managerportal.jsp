<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>STEEl FABRICATION</title>
<style>

       .card {
                   display: flex;
                   justify-content: space-between;
                   padding: 10px;
                   background-color: #000000;
               }
       .buttons-container {
                   display: flex;

                   align-items: center;
                   margin-top: 20px;
               }


       .footer {
           width: 100%;
           bottom:0;
           text-align: center;
           padding: 10px 0;
           position: fixed;
       }
    </style>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="mycss/steel.css" rel="stylesheet">
</head>
<body>
	<div class="card">
		<h4>
        	<a href="index" class="navbar-brand"> Steel Fabrication,Welcome </a>
        </h4>
	</div>
	<div class="admin">
        <th><h1>Manager Portal</h1></th>
        <td><a href="index" class="btn btn-danger"> Sign out </a></td>
    </div>

    <div class="buttons-container">
        <a href="admin" class="btn btn-primary"> View Customers </a>
        <a href="admin" class="btn btn-primary"> View Staff </a>
        <a href="admin" class="btn btn-primary"> add Staff </a>
        <a href="admin" class="btn btn-primary"> View Customers </a>
        <a href="admin" class="btn btn-primary"> View Staff </a>
        <a href="admin" class="btn btn-primary"> add Staff </a>
        <a href="admin" class="btn btn-primary"> add Staff </a>

    </div>
	<div class = "footer">
	<c:import url="myfooter.jsp" />
	</div>
</body>
</html>