<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Book Your Stay | Travel Connect</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .booking-container {
            background-color: #ffffff;
            width: 400px;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            text-align: center;
            position: relative;
        }

        .booking-container h1 {
            font-size: 2em;
            margin-bottom: 15px;
            color: #007BFF;
        }

        .hotel-name {
            font-size: 1.5em;
            font-weight: 500;
            color: #555;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        input[type="text"], input[type="email"], input[type="date"], select {
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1.1em;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="date"]:focus, select:focus {
            border-color: #007BFF;
            outline: none;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .back-link {
            margin-top: 20px;
            font-size: 1em;
        }

        .back-link a {
            color: #007BFF;
            text-decoration: none;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

        .icon-home {
            position: absolute;
            top: 15px;
            left: 15px;
            font-size: 1.5em;
            color: #007BFF;
            cursor: pointer;
        }

        .icon-home:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="booking-container">
        <!-- Home Icon -->
        <a href="home.jsp" class="icon-home">&#8962;</a>

        <!-- Title -->
        <h1>Book Your Stay</h1>

        <!-- Display the selected hotel -->
        <div class="hotel-name">Hotel: <%= request.getParameter("hotel") %></div>

        <!-- Booking Form -->
        <form action="confirmBooking.jsp" method="post">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="date" name="checkin" placeholder="Check-In Date" required>
            <input type="date" name="checkout" placeholder="Check-Out Date" required>

            <select name="room" required>
                <option value="" disabled selected>Select Room Type</option>
                <option value="single">Single Room</option>
                <option value="double">Double Room</option>
                <option value="suite">Suite</option>
            </select>

            <input type="text" name="guests" placeholder="Number of Guests" required>

            <input type="submit" value="Confirm Booking">
        </form>

        <!-- Back Link -->
        <div class="back-link">
            <a href="<%=request.getContextPath()%>/views/explore.jsp">Back to Explore</a>
        </div>
    </div>

</body>
</html>
