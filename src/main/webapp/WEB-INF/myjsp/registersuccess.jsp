<html>
<head>
    <title>Registration Success</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .footer {
                   background-color: black;
                   color: white;
                   width: 100%;
                   bottom:0;
                   text-align: center;
                   padding: 10px 0;
                   position: fixed;
               }

        .message {
            text-align: center;
        }

        .login-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .login-link:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="message">
        <h2>You have been successfully registered</h2>
        <a href="continueLogin" class="login-link">Go to login page</a>
        <a href="shop" class="login-link">Continue Shopping</a>
    </div>
    <div class = "footer">
    	<span >&copy; 2024 ganavenkat</span>
    	</div>
</body>
</html>