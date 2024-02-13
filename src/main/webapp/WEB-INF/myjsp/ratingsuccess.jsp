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

        button {
                background-color: #007bff;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                border-radius: 4px;
                margin: 0 10px;
                text-decoration: none;
            }
            btn-red {
                    background-color: #dc3545;
                    color: white;
                }

            button:hover {
                background-color: #0056b3;
            }

        .login-link:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="message">
        <h2>You have been successfully registered</h2>
       <form action="continueshopping" method="post">
             <button type="submit">Continue Shopping</button>
         </form>
    </div>
    <div class = "footer">
    	<span >&copy; 2024 ganavenkat</span>
    	</div>
</body>
</html>