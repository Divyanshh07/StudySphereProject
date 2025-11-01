<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home - StudySphere</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">

<!-- Main CSS -->
<link rel="stylesheet" href="css1/style.css">

<style>
  body { font-family: 'Raleway', sans-serif; background: #f8f9fa; }

  /* Hero Section */
  .site-section-cover { 
    background-size: cover; 
    background-position: center; 
    color: white; 
    padding: 100px 20px; 
    text-align: center;
    position: relative;
  }
  .site-section-cover::before {
    content: '';
    position: absolute; 
    top: 0; left: 0; right: 0; bottom: 0;
    background: rgba(0,0,0,0.5);
  }
  .site-section-cover > .container { position: relative; z-index: 2; }

  /* Courses Grid */
  .course-card {
    transition: transform 0.3s, box-shadow 0.3s;
    border-radius: 15px;
  }
  .course-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 6px 20px rgba(0,0,0,0.15);
  }
  .course-card i { font-size: 2rem; margin-bottom: 10px; }

  /* Card text */
  .price { font-size: 1.1rem; font-weight: bold; color: green; }
  .old-price { text-decoration: line-through; color: gray; font-size: 0.9rem; }

  /* Testimonials */
  .testimonial-2 { background: #fff; padding: 25px; border-radius: 12px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
  .testimonial-2 h3 { font-size: 1.2rem; font-weight: 600; margin-bottom: 10px; }
  .testimonial-2 blockquote { font-size: 0.95rem; line-height: 1.6; margin-bottom: 15px; }
</style>
</head>
<body>

<%@ include file="nav.jsp" %>

<!-- Hero Section -->
<div class="site-section-cover overlay" style="background-image: url('images/hero_bg.jpg');">
  <div class="container">
    <div class="row align-items-center justify-content-center">
      <div class="col-lg-10 text-center">
        <h1>The <strong>Hub</strong> of <strong>Tutorials</strong></h1>
        <p class="lead mt-3">Learn. Practice. Grow.</p>
        <p>Access free tutorials, coding guides, and interactive lessons to level up your skills.</p>
        <a href="courses.jsp" class="btn btn-primary btn-lg">Explore Courses</a>
      </div>
    </div>
  </div>
</div>

<!-- Courses Section -->
<div class="site-section py-5 bg-light">
  <div class="container">
    <div class="row mb-4">
      <div class="col text-center">
        <span class="text-muted small text-uppercase">Tutorial Courses</span>
        <h2 class="fw-bold mt-2">Choose Course</h2>
      </div>
    </div>

    <div class="row g-4 justify-content-center">
      <!-- HTML -->
      <div class="col-lg-2 col-md-4 col-sm-6">
        <a href="./Courses/HtmlCourse.jsp" class="text-decoration-none">
          <div class="card h-100 shadow-sm border-0 text-center p-4 course-card">
            <i class="bi bi-file-code text-primary"></i>
            <h6 class="fw-bold mb-0">HTML</h6>
          </div>
        </a>
      </div>
      <!-- CSS -->
      <div class="col-lg-2 col-md-4 col-sm-6">
        <a href="./Courses/CssCourse.jsp" class="text-decoration-none">
          <div class="card h-100 shadow-sm border-0 text-center p-4 course-card">
            <i class="bi bi-palette text-success"></i>
            <h6 class="fw-bold mb-0">CSS</h6>
          </div>
        </a>
      </div>
      <!-- JavaScript -->
      <div class="col-lg-2 col-md-4 col-sm-6">
        <a href="./Courses/JavaScriptCourse.jsp" class="text-decoration-none">
          <div class="card h-100 shadow-sm border-0 text-center p-4 course-card">
            <i class="bi bi-code-slash text-warning"></i>
            <h6 class="fw-bold mb-0">JavaScript</h6>
          </div>
        </a>
      </div>
      <!-- React -->
      <div class="col-lg-2 col-md-4 col-sm-6">
        <a href="./Courses/ReactCourse.jsp" class="text-decoration-none">
          <div class="card h-100 shadow-sm border-0 text-center p-4 course-card">
            <i class="bi bi-bootstrap-reboot text-info"></i>
            <h6 class="fw-bold mb-0">React</h6>
          </div>
        </a>
      </div>
      <!-- Java -->
      <div class="col-lg-2 col-md-4 col-sm-6">
        <a href="./Courses/JavaCourse.jsp" class="text-decoration-none">
          <div class="card h-100 shadow-sm border-0 text-center p-4 course-card">
            <i class="bi bi-laptop text-danger"></i>
            <h6 class="fw-bold mb-0">Java</h6>
          </div>
        </a>
      </div>
      <!-- Python -->
      <div class="col-lg-2 col-md-4 col-sm-6">
        <a href="./Courses/PythonCourse.jsp" class="text-decoration-none">
          <div class="card h-100 shadow-sm border-0 text-center p-4 course-card">
            <i class="bi bi-cpu text-secondary"></i>
            <h6 class="fw-bold mb-0">Python</h6>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

<!-- Paid Courses -->
<div class="container py-5">
  <div class="d-flex justify-content-between align-items-center mb-4">
    <h2 class="section-heading fw-bold m-0">Popular Courses</h2>
    <a href="courses.jsp?type=paid" class="btn btn-outline-primary btn-sm">View All <i class="bi bi-arrow-right"></i></a>
  </div>
  <div class="row g-4">
    <%
      String query = "SELECT * FROM courses WHERE price > 0 LIMIT 4";
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        while(rs.next()){
          String imagePath = rs.getString("image");
          if(imagePath != null && !imagePath.startsWith("http")) imagePath = request.getContextPath() + imagePath;
    %>
    <div class="col-md-3">
      <div class="card shadow-sm h-100 course-card d-flex flex-column">
        <img src="<%= imagePath %>" class="card-img-top" style="width:100%; height:141px; object-fit:contain;">
        <div class="card-body d-flex flex-column text-center">
          <h5 class="card-title"><%= rs.getString("title") %></h5>
          <p class="card-text text-muted flex-grow-1"><%= rs.getString("description") %></p>
          <p>
            <span class="price">₹ <%= rs.getInt("price") %></span>
            <% if(rs.getInt("old_price") > 0){ %>
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

<!-- Review/Comment Section -->
<div class="container py-5">
  <div class="row mb-4 text-center">
    <div class="col">
      <h2 class="fw-bold">Student Reviews</h2>
      <p class="text-muted">See what our students say about our courses</p>
    </div>
  </div>

  <div id="commentsCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">
    <div class="carousel-inner">
      <%
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

            String commentQuery = "SELECT comment, sender, comment_date FROM comments ORDER BY comment_date DESC LIMIT 10";
            ps = conn.prepareStatement(commentQuery);
            rs = ps.executeQuery();

            boolean first = true;
            while(rs.next()){
      %>
      <div class="carousel-item <%= first ? "active" : "" %>">
        <div class="testimonial-2 text-center p-4 mx-auto" style="max-width:500px;">
          <blockquote class="mb-3">"<%= rs.getString("comment") %>"</blockquote>
          <h6 class="fw-bold mb-0"><%= rs.getString("sender") %></h6>
          <small class="text-muted"><%= rs.getTimestamp("comment_date") %></small>
        </div>
      </div>
      <%
                first = false;
            }
        } catch(Exception e){
            out.println("<p class='text-danger'>Error loading comments</p>");
        } finally {
            if(rs != null) rs.close();
            if(ps != null) ps.close();
            if(conn != null) conn.close();
        }
      %>
    </div>

    <!-- Controls -->
    <button class="carousel-control-prev" type="button" data-bs-target="#commentsCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#commentsCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>


<%@ include file="footer.jsp" %>

<!-- JS Scripts -->
<script src="js1/jquery-3.3.1.min.js"></script>
<script src="js1/bootstrap.min.js"></script>
<script src="js1/owl.carousel.min.js"></script>
<script src="js1/main.js"></script>
</body>
</html>
