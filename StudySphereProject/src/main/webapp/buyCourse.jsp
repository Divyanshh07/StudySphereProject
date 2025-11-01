<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchase Course - StudySphere</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            font-family: 'Segoe UI', sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .message-card {
            background: #fff;
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 500px;
            width: 90%;
        }
        .message-card h3 {
            margin-bottom: 1.5rem;
        }
        .btn-home {
            border-radius: 50px;
            background: linear-gradient(90deg, #0d6efd, #198754);
            color: white;
            font-weight: 600;
            padding: 0.5rem 1.5rem;
            text-decoration: none;
        }
        .btn-home:hover {
            opacity: 0.9;
            color: white;
        }
    </style>
</head>
<body>
<div class="message-card">
<%
    int courseId = Integer.parseInt(request.getParameter("courseId"));
    String email = request.getParameter("email");

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        // Get student ID
        String studentQuery = "SELECT id FROM register WHERE email=?";
        ps = conn.prepareStatement(studentQuery);
        ps.setString(1, email);
        rs = ps.executeQuery();

        if(rs.next()){
            int studentId = rs.getInt("id");
            rs.close();
            ps.close();

            // Check if already purchased
            String checkQuery = "SELECT * FROM student_courses WHERE student_id=? AND course_id=?";
            ps = conn.prepareStatement(checkQuery);
            ps.setInt(1, studentId);
            ps.setInt(2, courseId);
            rs = ps.executeQuery();

            if(rs.next()){
%>
                <div class="alert alert-warning">
                    <i class="bi bi-exclamation-triangle-fill me-2"></i>
                    You have already purchased this course.
                </div>
                <a href='student/MyCourse.jsp?email=<%=email%>' class="btn btn-home"><i class="bi bi-house-door-fill me-1"></i> Go to Dashboard</a>
<%
            } else {
                rs.close();
                ps.close();

                // Insert purchase
                String insertQuery = "INSERT INTO student_courses(student_id, course_id) VALUES(?, ?)";
                ps = conn.prepareStatement(insertQuery);
                ps.setInt(1, studentId);
                ps.setInt(2, courseId);
                ps.executeUpdate();
%>
                <div class="alert alert-success">
                    <i class="bi bi-check-circle-fill me-2"></i>
                    Course purchased successfully!
                </div>
                <a href='student/MyCourse.jsp?email=<%=email%>' class="btn btn-home"><i class="bi bi-house-door-fill me-1"></i> Go to Dashboard</a>
<%
            }
        } else {
%>
            <div class="alert alert-danger">
                <i class="bi bi-x-circle-fill me-2"></i>
                No student found. Please register first.
            </div>
            <a href='login.jsp' class="btn btn-home"><i class="bi bi-person-plus-fill me-1"></i> Login / Signup</a>
<%
        }

    } catch(Exception e){
%>
        <div class="alert alert-danger">
            <i class="bi bi-exclamation-octagon-fill me-2"></i>
            Error: <%= e.getMessage() %>
        </div>
<%
    } finally {
        if(rs != null) rs.close();
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
