<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
    String email = request.getParameter("email");
    if(email == null || email.trim().isEmpty()){
        out.println("<div class='alert alert-danger text-center mt-4'>Email is required to view your courses.</div>");
        return;
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");

        String studentQuery = "SELECT id, name FROM register WHERE email=?";
        ps = conn.prepareStatement(studentQuery);
        ps.setString(1, email);
        rs = ps.executeQuery();

        if(rs.next()){
            int studentId = rs.getInt("id");
            String studentName = rs.getString("name");
            rs.close();
            ps.close();

            String courseQuery = "SELECT c.id, c.title, c.description, c.price, c.old_price, c.image, c.instructor, c.duration, c.syllabus, sc.purchase_date " +
                                 "FROM courses c JOIN student_courses sc ON c.id = sc.course_id " +
                                 "WHERE sc.student_id=?";
            ps = conn.prepareStatement(courseQuery);
            ps.setInt(1, studentId);
            rs = ps.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Courses - <%=studentName%></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body { background: #f4f6f9; font-family: 'Segoe UI', sans-serif; }
        h2 { margin: 2rem 0 1.5rem; color: #0d6efd; font-weight: 600; }
        .card { border-radius: 1rem; box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.15); transition: transform 0.3s; }
        .card:hover { transform: translateY(-5px); }
        .card-img-top { height: 180px; object-fit: cover; border-top-left-radius: 1rem; border-top-right-radius: 1rem; }
        .btn-back { margin: 1rem 0; }
        .navbar-brand { font-weight: 700; }
        @media (max-width: 768px) { .card-img-top { height: 150px; } }
        .modal-body { max-height: 400px; overflow-y: auto; }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="StudentHome.jsp">StudySphere</a>
    <div class="ms-auto d-flex align-items-center text-white">
      <i class="bi bi-person-circle me-1"></i> Welcome, <%= studentName %>
      <a href="Logout.jsp" class="btn btn-sm btn-light ms-3">Logout</a>
    </div>
  </div>
</nav>

<div class="container">

    <!-- Back to Dashboard -->
    <a href="StudentHome.jsp" class="btn btn-secondary btn-sm btn-back">
        <i class="bi bi-house-door-fill me-1"></i> Back to Dashboard
    </a>

    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
<%
    boolean hasCourses = false;
    List<String> modals = new ArrayList<>(); // store modal HTML

    while(rs.next()) {
        hasCourses = true;
        int courseId = rs.getInt("id");
        String title = rs.getString("title");
        String syllabus = rs.getString("syllabus");
%>
        <div class="col">
            <div class="card h-100">
                <img src="<%=request.getContextPath()%>/<%=rs.getString("image")%>" class="card-img-top" alt="<%=title%>">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title"><%=title%></h5>
                    <p class="mb-1"><strong>Instructor:</strong> <%=rs.getString("instructor")%></p>
                    <p class="mb-1"><strong>Duration:</strong> <%=rs.getString("duration")%></p>
                    <p class="mb-1"><strong>Price:</strong> ₹<%=rs.getInt("price")%> 
                       <% if(rs.getInt("old_price") > 0){ %>
                         <del>₹<%=rs.getInt("old_price")%></del>
                       <% } %>
                    </p>
                    <p class="mb-1"><strong>Purchased on:</strong> <%=rs.getTimestamp("purchase_date")%></p>
                    <p class="mb-2"><%=rs.getString("description")%></p>

                    <!-- View Syllabus Button -->
                    <button type="button" class="btn btn-primary btn-sm mt-auto" data-bs-toggle="modal" data-bs-target="#syllabusModal<%=courseId%>">
                        <i class="bi bi-journal-text me-1"></i> View Syllabus
                    </button>
                </div>
            </div>
        </div>

<%
        // store modal HTML for later rendering
        modals.add(
            "<div class='modal fade' id='syllabusModal" + courseId + "' tabindex='-1' aria-labelledby='syllabusLabel" + courseId + "' aria-hidden='true'>" +
            "<div class='modal-dialog modal-lg'>" +
            "<div class='modal-content'>" +
            "<div class='modal-header'>" +
            "<h5 class='modal-title' id='syllabusLabel" + courseId + "'>" + title + " - Syllabus</h5>" +
            "<button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>" +
            "</div>" +
            "<div class='modal-body'><pre style='white-space: pre-wrap;'>" + syllabus + "</pre></div>" +
            "<div class='modal-footer'>" +
            "<button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>Close</button>" +
            "</div></div></div></div>"
        );
    }

    if(!hasCourses){
%>
        <div class="col-12">
            <div class="alert alert-warning text-center">You have not purchased any courses yet.</div>
        </div>
<%
    }
%>
    </div>

<%
    // render all stored modals
    for(String modalHtml : modals) {
        out.print(modalHtml);
    }
%>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%
        } else {
            out.println("<div class='alert alert-danger mt-4 text-center'>No student found with this email.</div>");
        }
    } catch(Exception e){
        out.println("<div class='alert alert-danger mt-4 text-center'>Error: " + e.getMessage() + "</div>");
    } finally {
        if(rs != null) rs.close();
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    }
%>
