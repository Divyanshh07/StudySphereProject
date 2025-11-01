<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Blog - StudySphere</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">

  <style>
    body { font-family: 'Raleway', sans-serif; background: #f8f9fa; }
    .hero {
      background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('images/about-bg.jpg') center/cover no-repeat;
      color: white;
      padding: 100px 20px;
      text-align: center;
    }
    .blog-card {
      background: white; 
      padding: 25px; 
      border-radius: 12px; 
      box-shadow: 0 3px 12px rgba(0,0,0,0.1); 
      height: auto;
      max-width: 900px;
      margin: auto;
      display: flex;
      flex-direction: column;
      justify-content: flex-start;
    }
    .blog-title { font-size: 2rem; font-weight: 700; margin-bottom: 15px; text-align: center; }
    .blog-meta { font-size: 1rem; color: gray; margin-bottom: 15px; text-align: center; }
    .blog-content { font-size: 1.05rem; line-height: 1.8; overflow-y: auto; max-height: 400px; }
  </style>
</head>
<body>

<%@ include file="nav.jsp" %>

<!-- Hero Section -->
<section class="hero">
  <div class="container">
    <h1 class="display-4 fw-bold">Our Blog</h1>
    <p class="lead">Insights, updates & learning resources from StudySphere</p>
  </div>
</section>

<div class="container py-5">

  <!-- Blog Carousel -->
  <div id="blogCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
    <div class="carousel-inner">
      <%
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        boolean first = true;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
            st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM blogs ORDER BY publish_date DESC");

            while(rs.next()){
                String title = rs.getString("title");
                String author = rs.getString("author");
                String content = rs.getString("content");
                Date publishDate = rs.getDate("publish_date");
      %>
      <div class="carousel-item <%= first ? "active" : "" %>">
        <div class="blog-card">
          <h3 class="blog-title"><%=title%></h3>
          <p class="blog-meta">By <strong><%=author%></strong> | <%=publishDate%></p>
          <div class="blog-content"><%=content.replaceAll("\n","<br>") %></div>
        </div>
      </div>
      <%
                first = false;
            }
        } catch(Exception e){
            out.println("<div class='alert alert-danger'>Error: "+e.getMessage()+"</div>");
        } finally {
            if(rs != null) rs.close();
            if(st != null) st.close();
            if(conn != null) conn.close();
        }
      %>
    </div>

    <!-- Carousel Controls -->
    <button class="carousel-control-prev" type="button" data-bs-target="#blogCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#blogCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>

<%@ include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
