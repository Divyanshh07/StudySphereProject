<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Popular Courses - StudySphere</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
  body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f8f9fa; }

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

  /* Heading Styling */
  .section-heading {
    text-align: center;
    font-size: 2.2rem;
    font-weight: 700;
    color: #0d6efd;
    position: relative;
    margin-bottom: 20px;
  }
  .section-heading::after {
    content: "";
    display: block;
    width: 80px;
    height: 4px;
    background: #198754;
    margin: 10px auto 0;
    border-radius: 5px;
  }

  /* Course Cards */
  .course-card { transition: transform 0.3s, box-shadow 0.3s; border: none; }
  .course-card:hover { transform: translateY(-6px); box-shadow: 0 6px 20px rgba(0,0,0,0.15); }
  .card-title { font-weight: bold; }
  .price { font-size: 18px; font-weight: bold; color: #198754; }
  .old-price { text-decoration: line-through; color: gray; margin-left: 6px; }
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

<!-- Courses Section -->
<div class="container py-5">
  <h2 class="section-heading">Popular Courses</h2>

  <!-- Filter Section -->
  <div class="mb-4">
    <h6 class="fw-bold text-primary mb-2">📌 Course Type</h6>
    <div class="p-2 bg-white shadow-sm rounded-pill d-inline-block">
      <form method="get" action="courses.jsp" class="d-flex gap-2 m-0">
        <button type="submit" name="type" value="all" 
          class="btn btn-sm <% if("all".equals(request.getParameter("type")) || request.getParameter("type")==null){ %>btn-primary<% } else { %>btn-outline-primary<% } %> rounded-pill px-3">
          All
        </button>
        <button type="submit" name="type" value="free" 
          class="btn btn-sm <% if("free".equals(request.getParameter("type"))){ %>btn-success<% } else { %>btn-outline-success<% } %> rounded-pill px-3">
          Free
        </button>
        <button type="submit" name="type" value="paid" 
          class="btn btn-sm <% if("paid".equals(request.getParameter("type"))){ %>btn-warning text-white<% } else { %>btn-outline-warning<% } %> rounded-pill px-3">
          Paid
        </button>
      </form>
    </div>
  </div>

  <div class="row g-4">
    <%
      String filter = request.getParameter("type");
      String query = "SELECT * FROM courses";

      if("free".equals(filter)) {
        query = "SELECT * FROM courses WHERE price = 0";
      } else if("paid".equals(filter)) {
        query = "SELECT * FROM courses WHERE price > 0";
      }

      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        while(rs.next()){
          String imagePath = rs.getString("image");
          if(imagePath != null && !imagePath.startsWith("http")) {
            imagePath = request.getContextPath() + imagePath;
          }
    %>
      <div class="col-md-3">
        <div class="card shadow-sm h-100 course-card d-flex flex-column">
          <img src="<%= imagePath %>" class="card-img-top" style="width:100%; height:141px; object-fit:contain;">
          <div class="card-body d-flex flex-column">
            <h5 class="card-title"><%= rs.getString("title") %></h5>
            <p class="card-text text-muted flex-grow-1"><%= rs.getString("description") %></p>
            <p>
              <% if(rs.getInt("price") == 0){ %>
                <span class="badge bg-success">Free</span>
              <% } else { %>
                <span class="price">₹ <%= rs.getInt("price") %></span>
                <span class="old-price">₹ <%= rs.getInt("old_price") %></span>
              <% } %>
            </p>
            <a href="CourseDetail.jsp?id=<%= rs.getInt("id") %>" class="btn btn-success mt-auto">Explore</a>
          </div>
        </div>
      </div>
    <%
        }
        con.close();
      } catch(Exception e) {
        out.println("<p class='text-danger'>Error: "+ e.getMessage() +"</p>");
      }
    %>
  </div>
</div>

<%@ include file="footer.jsp" %>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
