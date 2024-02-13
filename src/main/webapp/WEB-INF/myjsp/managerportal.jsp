<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Products Page</title>
    <style>
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
    .box{
        padding:40px;
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

    .heading {
        color: white;
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
	<div class="box">
        <th><h1>Manager Portal</h1></th>
        <td><a href="index" class="button btn-red"> Sign out </a></td>
    </div>

    <div class="buttons-container">
        <a href="admin" class="button"> View Customers </a>
        <a href="admin" class="button"> View Staff </a>
        <a href="admin" class="button"> add Staff </a>
        <a href="admin" class="button"> View Customers </a>
        <a href="admin" class="button"> View Staff </a>
        <a href="admin" class="button"> add Staff </a>
        <a href="admin" class="button"> add Staff </a>

    </div>
	<footer>
                <div class="copyright-text">
                    &#169; 2024 Ganavenkat
            </div>
        </footer>
</body>
</html>