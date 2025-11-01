<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    // Check session
    HttpSession sess = request.getSession(false);
    if(sess == null || sess.getAttribute("email") == null){
        response.sendRedirect("../login.jsp?msg=Please+login+first");
        return;
    }
    String email = (String) sess.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home - StudySphere</title>
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
    .dashboard-card {
        border-radius: 0.5rem;
        box-shadow: 0 0.2rem 0.6rem rgba(0,0,0,0.12);
        background: #fff;
        padding: 0.8rem;
        margin-bottom: 1rem;
        transition: transform 0.2s;
    }
    .dashboard-card:hover {
        transform: translateY(-3px);
    }
    .dashboard-card h5 {
        font-size: 0.95rem;
        margin-top: 0.5rem;
    }
    .dashboard-card p {
        font-size: 0.75rem;
        margin-bottom: 0.5rem;
    }
    .dashboard-card i {
        font-size: 1.7rem;
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand fw-bold" href="../home.jsp">StudySphere</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto align-items-center">
        <li class="nav-item">
          <a class="nav-link text-white" href="../home.jsp">
            <i class="bi bi-house-door-fill me-1"></i> Home
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="../courses.jsp?email=<%=email%>">
            <i class="bi bi-journal-bookmark-fill me-1"></i> Courses
          </a>
        </li>
        <li class="nav-item">
          <span class="nav-link text-white">
            <i class="bi bi-person-circle me-1"></i> Welcome, <%= email %>
          </span>
        </li>
        <li class="nav-item">
          <a href="../logout.jsp" class="btn btn-sm btn-light ms-2">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container my-4">
  <div class="row g-4">

    <!-- Profile -->
    <div class="col-md-4">
      <div class="dashboard-card text-center">
        <i class="bi bi-person-lines-fill display-5 text-primary"></i>
        <h5 class="mt-1">My Profile</h5>
        <p class="text-muted">View and update your profile details.</p>
        <a href="Profile.jsp?email=<%=email%>" class="btn btn-outline-primary btn-sm">Go</a>
      </div>
    </div>

    <!-- My Courses -->
    <div class="col-md-4">
      <div class="dashboard-card text-center">
        <i class="bi bi-journal-bookmark-fill display-5 text-success"></i>
        <h5 class="mt-1">My Courses</h5>
        <p class="text-muted">Access your enrolled courses and materials.</p>
        <a href="MyCourse.jsp?email=<%=email%>" class="btn btn-outline-success btn-sm">Go</a>
      </div>
    </div>

    <!-- Assignments -->
    <div class="col-md-4">
      <div class="dashboard-card text-center">
        <i class="bi bi-pencil-square display-5 text-warning"></i>
        <h5 class="mt-1">Assignments</h5>
        <p class="text-muted">Check your assignments and submissions.</p>
        <a href="Assignment.jsp?email=<%=email%>" class="btn btn-outline-warning btn-sm">Go</a>
      </div>
    </div>

    <!-- Results -->
    <div class="col-md-4">
      <div class="dashboard-card text-center">
        <i class="bi bi-clipboard2-check-fill display-5 text-danger"></i>
        <h5 class="mt-1">Results</h5>
        <p class="text-muted">View your test and exam results.</p>
        <a href="Result.jsp?email=<%=email%>" class="btn btn-outline-danger btn-sm">Go</a>
      </div>
    </div>

    <!-- Messages -->
    <div class="col-md-4">
      <div class="dashboard-card text-center">
        <i class="bi bi-chat-dots-fill display-5 text-info"></i>
        <h5 class="mt-1">Messages</h5>
        <p class="text-muted">Read messages from faculty & admin.</p>
        <a href="Message.jsp?email=<%=email%>" class="btn btn-outline-info btn-sm">Go</a>
      </div>
    </div>

    <!-- Comments -->
    <div class="col-md-4">
      <div class="dashboard-card text-center">
        <i class="bi bi-pencil-square display-5 text-info"></i>
        <h5 class="mt-1">Comments</h5>
        <p class="text-muted">Give feedback from faculty and admin about your courses.</p>
        <a href="Comment.jsp?email=<%=email%>" class="btn btn-outline-info btn-sm">Go</a>
      </div>
    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
