<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>STEEL FABRICATION</title>
 <style>
        .container {
            text-align: center;
            justify-content: center;
            align-items: center;
        }
        .footer{
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
    </style>

<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="mycss/steel.css" rel="stylesheet">
</head>
<body>
<div style="display: flex; flex-direction: column; min-height: 100vh;">
<div class="container" align="center" style="flex-grow: 1">
		<h1 class="text-center">
			<h2>Login Page</h2>
            <form action="loginServlet" method="post">
                <a href="alogin" class="btn btn-danger"> Admin Login </a>
                <a href="mlogin" class="btn btn-danger"> Manager Login </a>
                <a href="clogin" class="btn btn-danger"> Customer Login </a>
            </form>
		</h1>
	</div>
	<div class="footer" style="text-align: center; padding: 10px;">
    <c:import url="myfooter.jsp" />
    </div>
 </div>
</body>
</html>