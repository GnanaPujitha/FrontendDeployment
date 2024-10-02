<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
    // Assume you have a method to connect to the database and insert user data
    String fullname = request.getParameter("fullname");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");

    // Code to insert the user into the database
    // ...

    // If registration is successful
    boolean registrationSuccess = true; // Change this based on your database operation

    if (registrationSuccess) {
        // Set the success message in the session
        request.getSession().setAttribute("successMessage", "You are successfully registered!");
        response.sendRedirect("login.jsp");
    } else {
        // Handle the case where registration fails
        request.setAttribute("errorMessage", "Registration failed. Please try again.");
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        dispatcher.forward(request, response);
    }
%>
