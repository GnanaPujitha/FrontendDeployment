<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Travel Connect - Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-image: url('../img/login.jpg'); /* Update the path if necessary */
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: white;
        }
        .login-section {
            margin: 100px auto; /* Adjust margin for positioning */
            width: 300px;
            padding: 20px;
            border: 1px solid rgba(255, 255, 255, 0.5); /* Optional: Add a semi-transparent border */
            border-radius: 10px; /* Rounded corners */
            background-color: transparent; /* Fully transparent */
        }
        .login-section h2 {
            margin-bottom: 20px;
            color: white; /* Change the color to white */
        }
        .login-section input {
            width: 80%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.8); /* Optional: Semi-transparent input fields */
        }
        .login-section button {
            width: 50%;
            padding: 10px;
            margin-top: 30px; /* Add margin-top to move the button down */
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold; /* Bold text */
        }
        .login-section button:hover {
            background-color: #0056b3;
        }
        p {
            margin-top: 20px;
            color: white; /* Changed color to black */
        }
        a {
            color: #007BFF; /* Link color */
            text-decoration: none; /* No underline */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>

    <main>
        <h1>Welcome to Travel Connect</h1>
        <div class="login-section">
            <h2>Login</h2>
            <form action="index.jsp" method="POST"> <!-- Changed to redirect to index.jsp -->
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit">Login</button>
            </form>
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </main>

</body>
</html>
