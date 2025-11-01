<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Course Details - StudySphere</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
  <style>
    body {
        background-color: #f4f6f9;
        font-family: 'Segoe UI', sans-serif;
    }
    /* Navbar Styling */
  .navbar-custom {
    background: linear-gradient(90deg, #0d6efd, #198754);
  }
  .navbar-custom .nav-link, .navbar-custom .navbar-brand {
    color: white !important;
    font-weight: 500;
    transition: color 0.3s;
  }
  .navbar-custom .nav-link:hover {
    color: #ffc107 !important;
  }
    .course-header {
        font-weight: 700;
        color: #0d6efd;
    }
    .card-shadow {
        box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.15);
        border-radius: 1rem;
    }
    .course-img {
        border-radius: 1rem;
        object-fit: cover;
        width: 100%;
        max-height: 350px;
    }
    .btn-enroll {
        border-radius: 50px;
        padding: 0.5rem 1.5rem;
        font-weight: 600;
    }
    .badge-free {
        font-size: 1rem;
        padding: 0.5em 0.75em;
    }
    hr {
        border-top: 2px solid #0d6efd;
    }
    .syllabus {
        background: #fff;
        padding: 1rem;
        border-radius: 0.75rem;
        box-shadow: 0 0.25rem 0.5rem rgba(0,0,0,0.1);
        white-space: pre-wrap;
    }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
  <div class="container">
    <a class="navbar-brand" href="home.jsp"><i class="bi bi-mortarboard"></i> StudySphere</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="courses.jsp">Courses</a></li>
        <li class="nav-item"><a class="nav-link" href="About.jsp">About</a></li>
        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container py-5">
  <%
    String id = request.getParameter("id");
    if(id == null) {
      out.println("<p class='text-danger text-center'>No course selected.</p>");
    } else {
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM courses WHERE id=?");
        ps.setInt(1, Integer.parseInt(id));
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
          String imagePath = rs.getString("image");
          if(imagePath != null && !imagePath.startsWith("http")) {
            imagePath = request.getContextPath() + imagePath;
          }
  %>

  <div class="row g-4">
    <div class="col-lg-5">
      <div class="card card-shadow p-2">
        <img src="<%= imagePath %>" alt="<%= rs.getString("title") %>" class="course-img img-fluid shadow-sm">
      </div>
    </div>
    <div class="col-lg-7">
      <div class="card card-shadow p-4 h-100">
        <h2 class="course-header"><%= rs.getString("title") %></h2>
        <p class="text-muted mb-3"><%= rs.getString("description") %></p>
        <p><i class="bi bi-person-fill me-2"></i><strong>Instructor:</strong> <%= rs.getString("instructor") %></p>
        <p><i class="bi bi-clock-fill me-2"></i><strong>Duration:</strong> <%= rs.getString("duration") %></p>
        <p>
          <% if(rs.getInt("price") == 0){ %>
            <span class="badge bg-success badge-free">Free</span>
          <% } else { %>
            <span class="fs-4 fw-bold text-dark">₹ <%= rs.getInt("price") %></span>
            <% if(rs.getInt("old_price") > 0){ %>
                <span class="text-decoration-line-through text-muted">₹ <%= rs.getInt("old_price") %></span>
            <% } %>
          <% } %>
        </p>
        <a href="Enroll.jsp?courseId=<%= rs.getInt("id") %>" class="btn btn-primary btn-enroll mt-3">
          <i class="bi bi-cart-plus me-1"></i> Enroll Now
        </a>
      </div>
    </div>
  </div>

  <hr>

  <h4 class="mt-4 text-primary">Course Syllabus</h4>
  <div class="syllabus mt-2">
    <%= rs.getString("syllabus") %>
  </div>

  <%
        } else {
          out.println("<p class='text-warning text-center'>Course not found.</p>");
        }
        con.close();
      } catch(Exception e) {
        out.println("<p class='text-danger text-center'>Error: "+ e.getMessage() +"</p>");
      }
    }
  %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
