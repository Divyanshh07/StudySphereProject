<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*" %>
<%
    // Session check
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
<title>Comments - StudySphere</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<style>
body {
    background: #f4f6f9;
    font-family: 'Segoe UI', sans-serif;
}
.navbar-brand {
    font-weight: 700;
}
.comment-card {
    background: #fff;
    border-radius: 0.5rem;
    padding: 1rem;
    margin-bottom: 1rem;
    box-shadow: 0 0.2rem 0.6rem rgba(0,0,0,0.12);
}
.comment-card h6 {
    font-size: 0.9rem;
    margin-bottom: 0.5rem;
}
.comment-card p {
    font-size: 0.85rem;
}
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="StudentHome.jsp">StudySphere</a>
    <div class="ms-auto d-flex align-items-center text-white">
      <i class="bi bi-person-circle me-1"></i> Welcome
      <a href="../logout.jsp" class="btn btn-sm btn-light ms-3">Logout</a>
    </div>
  </div>
</nav>

<div class="container my-4">
    <h3 class="mb-4">Comments</h3>

    <!-- Comment Form -->
    <div class="card mb-4">
        <div class="card-body">
            <form method="post" action="CommentProcess.jsp">
                <input type="hidden" name="email" value="<%=email%>">
                <div class="mb-3">
                    <label for="comment" class="form-label">Write a comment</label>
                    <textarea class="form-control" id="comment" name="comment" rows="3" placeholder="Enter your comment..." required></textarea>
                </div>
                <button type="submit" class="btn btn-primary"><i class="bi bi-send-fill me-1"></i> Send Comment</button>
            </form>
        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
