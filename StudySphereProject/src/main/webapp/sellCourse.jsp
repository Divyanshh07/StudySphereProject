<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    if(email == null || email.trim().isEmpty()){
        response.sendRedirect("studentForm.jsp");
        return;
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        String query = "SELECT * FROM courses";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Courses - StudySphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: #f4f6f9;
            font-family: 'Segoe UI', sans-serif;
        }
        h2 {
            color: #0d6efd;
            text-align: center;
            font-weight: 700;
            margin: 2.5rem 0 2rem 0;
        }
        .course-card {
            background: #fff;
            border-radius: 1rem;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            padding: 0;
        }
        .course-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }
        .course-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }
        .course-card-body {
            padding: 1rem 1.5rem;
        }
        .course-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: #0d6efd;
        }
        .course-description {
            font-size: 0.95rem;
            color: #555;
            height: 60px;
            overflow: hidden;
            margin-bottom: 0.8rem;
        }
        .course-price {
            font-size: 1rem;
            font-weight: 600;
            color: #198754;
            margin-bottom: 1rem;
        }
        .btn-buy {
            width: 100%;
            border-radius: 50px;
            font-weight: 600;
            background: linear-gradient(90deg, #0d6efd, #198754);
            border: none;
            color: white;
        }
        .btn-buy:hover {
            opacity: 0.9;
        }
        .badge-free {
            background-color: #198754;
            font-weight: 500;
        }
        .container-custom {
            max-width: 1200px;
            margin: auto;
            padding: 2rem 1rem;
        }
    </style>
</head>
<body>

<div class="container-custom">
    <h2><i class="bi bi-journal-bookmark-fill me-2"></i>Available Courses</h2>
    <div class="row g-4">
<%
        while(rs.next()) {
            int courseId = rs.getInt("id");
            String title = rs.getString("title");
            String description = rs.getString("description");
            int price = rs.getInt("price");
            String image = rs.getString("image") != null ? request.getContextPath() + rs.getString("image") : "https://via.placeholder.com/400x200";
%>
        <div class="col-md-4">
            <div class="course-card">
                <img src="<%=image%>" alt="<%=title%>">
                <div class="course-card-body">
                    <h5 class="course-title"><%=title%></h5>
                    <p class="course-description"><%=description%></p>
                    <p class="course-price">
                        <% if(price == 0){ %>
                            <span class="badge badge-free">Free</span>
                        <% } else { %>
                            ₹<%=price%>
                        <% } %>
                    </p>
                    <form action="buyCourse.jsp" method="post">
                        <input type="hidden" name="courseId" value="<%=courseId%>" />
                        <input type="hidden" name="email" value="<%=email%>" />
                        <button type="submit" class="btn btn-buy">
                            <i class="bi bi-cart-plus me-1"></i> Buy Now
                        </button>
                    </form>
                </div>
            </div>
        </div>
<%
        }
%>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%
    } catch(Exception e){
        out.println("<p class='text-danger'>Error: " + e.getMessage() + "</p>");
    } finally {
        if(rs != null) rs.close();
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
