<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>STEEL FABRICATION</title>
 <style>
        .container {
            text-align: center;
            justify-content: center;
            align-items: center;
            padding: 100px;
        }
        .footer{
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
        header {
                position: fixed;
                top: 0;
                width: 100%;
                background-color: #333;
                color: white;
                padding: 20px;
                text-align: center;
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

    </style>


</head>
<body>
    <header>
            <div class="header-text">
                Steel Fabrication, Welcome
            </div>
        </header>
<div style="display: flex; flex-direction: column; min-height: 100vh;">
<div class="container" align="center" style="flex-grow: 1">
		<h1 class="text-center">
			<h2>Login Page</h2>
            <form action="loginServlet" method="post">
                <a href="alogin" class="button"> Admin Login </a>
                <a href="mlogin" class="button"> Manager Login </a>
                <a href="clogin" class="button"> Customer Login </a>
            </form>
		</h1>
	</div>

    <footer>
        <div class="copyright-text">
            &#169; 2024 Ganavenkat
        </div>
    </footer>

 </div>
</body>
</html>