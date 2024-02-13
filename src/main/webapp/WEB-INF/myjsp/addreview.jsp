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
            background-color: #f8f9fa; /* Light gray background */
        }

        .signup-form {
            text-align: center;
            border: 1px solid #ced4da; /* Gray border */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
            background-color: #f5f5f5; /* Light gray background */
            max-width: 400px; /* Limit form width */
            width: 100%; /* Ensure full width on smaller screens */
        }

        .signup-form h2 {
            margin-bottom: 20px;
            color: #007bff; /* Blue heading */
        }

        .signup-form input[type="text"],
        .signup-form input[type="password"],
        .signup-form input[type="date"] {
            width: calc(100% - 22px); /* Adjust input width for padding */
            padding: 10px;
            margin: 10px 0; /* Increase vertical spacing */
            border-radius: 5px;
            border: 1px solid #007bff; /* Blue border */
            box-sizing: border-box; /* Ensure padding is included in width */
        }

        .signup-form input[type="submit"] {
            background-color: #007bff; /* Blue button */
            color: white;
            padding: 14px 20px;
            margin: 20px 0 10px; /* Increase bottom margin and reduce top margin */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s; /* Smooth transition */
        }

        .signup-form input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="signup-form">
        <h2 style="color: #ff5722;">Provide Your Rating</h2> <!-- Orange heading -->
        <form action="addreview" method="post">
            <label for="pId" style="color: #4caf50;">Product ID:</label><br> <!-- Green label -->
            <input type="text" id="pId" name="pId" required><br>
            <label for="star" style="color: #e91e63;">Stars:</label><br> <!-- Pink label -->
            <input type="text" id="star" name="star" required><br>
            <label for="description" style="color: #9c27b0;">Review:</label><br> <!-- Purple label -->
            <input type="text" id="description" name="description" required><br>

            <input type="submit" value="Add Your Rating" style="background-color: #ff5722;"> <!-- Orange button -->
        </form>
    </div>
</body>
</html>
