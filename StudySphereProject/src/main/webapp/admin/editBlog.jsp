<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    if(id == null || id.trim().isEmpty()){
        response.sendRedirect("manageBlogs.jsp");
        return;
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String title="", author="", content="";
    Date publishDate=null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
        ps = conn.prepareStatement("SELECT * FROM blogs WHERE id=?");
        ps.setInt(1,Integer.parseInt(id));
        rs = ps.executeQuery();
        if(rs.next()){
            title = rs.getString("title");
            author = rs.getString("author");
            content = rs.getString("content");
            publishDate = rs.getDate("publish_date");
        } else {
            response.sendRedirect("manageBlogs.jsp");
        }
    } catch(Exception e){
        out.println("Error: "+e.getMessage());
    }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Blog</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-5">
  <h2 class="mb-4 fw-bold">✏️ Edit Blog</h2>
  <form action="updateBlog.jsp" method="post">
    <input type="hidden" name="id" value="<%=id%>">
    <div class="mb-2">
      <label>Title</label>
      <input type="text" name="title" class="form-control" value="<%=title%>" required>
    </div>
    <div class="mb-2">
      <label>Author</label>
      <input type="text" name="author" class="form-control" value="<%=author%>" required>
    </div>
    <div class="mb-2">
      <label>Content</label>
      <textarea name="content" rows="6" class="form-control" required><%=content%></textarea>
    </div>
    <div class="mb-2">
      <label>Publish Date</label>
      <input type="date" name="publish_date" class="form-control" value="<%=publishDate%>" required>
    </div>
    <button type="submit" class="btn btn-primary">Update Blog</button>
    <a href="manageBlogs.jsp" class="btn btn-secondary">Cancel</a>
  </form>
</div>
</body>
</html>
