<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
    // Get session email
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("../login.jsp?msg=Please+login+first");
        return;
    }

    String fullName = "";
    try {
        // DB connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb", "root", "Mysql@07");

        // Fetch student details
        PreparedStatement ps = con.prepareStatement("SELECT name FROM register WHERE email=?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            fullName = rs.getString("name");
        }

        rs.close();
        ps.close();
        con.close();
    } catch (Exception e) {
        out.println("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile - StudySphere</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Raleway', sans-serif;
        background: #f4f6f9;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }
    .profile-card {
        max-width: 450px;
        width: 100%;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 0.5rem 1.5rem rgba(0,0,0,0.15);
        background: #fff;
        margin: 3rem auto;
    }
    .profile-card h2 {
        font-weight: 700;
    }
    .list-group-item {
        border: none;
        padding: .5rem 0;
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand fw-bold" href="StudentHome.jsp">StudySphere</a>
    <div class="ms-auto text-white d-flex align-items-center">
      <i class="bi bi-person-circle me-1"></i> Welcome, <%= fullName %>
      <a href="Logout.jsp" class="btn btn-sm btn-light ms-3">Logout</a>
    </div>
  </div>
</nav>

<!-- Profile Card -->
<div class="profile-card">
    <h2 class="text-center text-primary mb-4">
        <i class="bi bi-person-badge-fill me-2"></i>My Profile
    </h2>

    <ul class="list-group small mb-4">
        <li class="list-group-item"><b>Full Name:</b> <%= fullName %></li>
        <li class="list-group-item"><b>Email:</b> <%= email %></li>
    </ul>

    <div class="d-grid gap-2">
        <a href="UpdateProfile.jsp?email=<%=email%>" class="btn btn-primary btn-sm">
            <i class="bi bi-pencil-square me-1"></i> Edit Profile
        </a>
        <a href="../ForgetPass.jsp?email=<%=email%>" class="btn btn-outline-primary btn-sm">
            <i class="bi bi-key-fill me-1"></i> Change Password
        </a>
        <a href="StudentHome.jsp" class="btn btn-secondary btn-sm mt-2">
            <i class="bi bi-house-door-fill me-1"></i> Back to Dashboard
        </a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
