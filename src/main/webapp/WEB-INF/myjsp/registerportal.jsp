<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-form {
            text-align: center;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }

        .signup-form input[type="text"],
        .signup-form input[type="password"],
        .signup-form input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border-radius: 3px;
            border: 1px solid #ccc;
        }

        .signup-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="signup-form">
        <h2>Sign Up</h2>
        <form action="customers/signup" method="post">
            <label for="firstName">First Name:</label><br>
            <input type="text" id="firstName" name="firstName" required><br>
            <label for="lastName">Last Name:</label><br>
            <input type="text" id="lastName" name="lastName" required><br>
            <label for="state">State:</label><br>
            <input type="text" id="state" name="state" required><br>
            <label for="city">City:</label><br>
            <input type="text" id="city" name="city" required><br>
            <label for="landmark">Landmark:</label><br>
            <input type="text" id="landmark" name="landmark" ><br>
            <label for="pin">Pin:</label><br>
            <input type="text" id="pin" name="pin" required><br>
            <label for="phone">Phone:</label><br>
            <input type="text" id="phone" name="phone" required><br>
            <label for="email">Email:</label><br>
            <input type="text" id="email" name="email" required><br>
            <label for="dob">Date of Birth:</label><br>
            <input type="date" id="dob" name="dob" required><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" required><br><br>
            <input type="submit" value="Sign Up">
        </form>
    </div>
</body>
</html>
