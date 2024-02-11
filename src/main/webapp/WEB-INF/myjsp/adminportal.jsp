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
       .admin{
                   text-align: center;
                   justify-content: center;
                   align-items: center;
       }
       .buttons-container {
                   padding-top:10px;
                   text-align: center;
                   justify-content: center;
                   align-items: center;

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
	<div style="display: flex; flex-direction: column; min-height: 100vh;">
	<div class="admin">
        <th><h1>Admin Portal</h1></th>
        <td><a href="index" class="btn btn-danger"> Sign out </a></td>
    </div>
    <div class="buttons-container" align="center" style="flex-grow: 1">
        <a href="admin" class="btn btn-primary"> View Customers </a>
        <a href="admin" class="btn btn-primary"> View Staff </a>
        <a href="admin" class="btn btn-primary"> add Staff </a>
    </div>
    </div>
	<div class = "footer">
	<c:import url="myfooter.jsp" />
	</div>
</body>
</html>