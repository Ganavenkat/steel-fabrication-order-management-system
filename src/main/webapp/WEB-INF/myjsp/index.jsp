<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>STEEl FABRICATION</title>
<style>
       .container {
           text-align: center;
           display: flex;
           flex-direction: column;
           justify-content: center;
           align-items: center;
           min-height: 100vh;

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
		<c:import url="myheader.jsp" />
	</div>
	<div class="container">
	<h2>
    	<a href="categories">Display All Books</a>
    </h2>
	<div class = "footer">
	<c:import url="myfooter.jsp" />
	</div>
</body>
</html>