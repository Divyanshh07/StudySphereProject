<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Blogs - StudySphere</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body { 
            margin: 0; 
            padding: 0; 
            display: flex; 
            min-height: 100vh;
            background: #f8f9fa;
        }
        .sidebar { 
            width: 250px; 
            height: 100vh; 
            background: #343a40; 
            color: white; 
            position: fixed; 
            top: 0; 
            left: 0;
        }
        .sidebar .nav-link { 
            color: #adb5bd; 
            padding: 12px 20px; 
            transition: 0.3s; 
        }
        .sidebar .nav-link:hover, 
        .sidebar .nav-link.active { 
            background: #495057; 
            color: white; 
        }
        .sidebar .nav-link i { margin-right: 10px; }

        .content {
            margin-left: 250px; 
            padding: 30px; 
            width: calc(100% - 250px);
        }

        .form-container { 
            max-width: 900px; 
            margin: 20px auto; 
            background: white; 
            padding: 25px; 
            border-radius: 10px; 
            box-shadow: 0 2px 10px rgba(0,0,0,0.1); 
        }
        .form-container label { font-weight: 600; }
        .form-container input, .form-container textarea { font-size: 14px; }

        .card { 
            margin-bottom: 30px; 
            overflow-x: auto; 
        }

        table { width: 100%; font-size: 14px; }
        table th, table td { text-align: center; vertical-align: middle; padding: 10px; }
        table th { font-weight: 600; }
        .btn-sm { font-size: 13px; padding: 4px 10px; }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column p-3">
        <h4 class="text-white text-center mb-4">Admin Panel</h4>
        <ul class="nav nav-pills flex-column mb-auto">
            <li><a href="dashboard.jsp" class="nav-link"><i class="bi bi-speedometer2"></i> Dashboard</a></li>
            <li><a href="manageUsers.jsp" class="nav-link"><i class="bi bi-people"></i> Manage Users</a></li>
            <li><a href="Courses.jsp" class="nav-link"><i class="bi bi-building"></i> Manage Courses</a></li>
            <li><a href="Messages.jsp" class="nav-link "><i class="bi bi-chat-left-text"></i> User Messages</a></li>
            <li><a href="manageBlogs.jsp" class="nav-link active"><i class="bi bi-gear"></i> Manage Blogs</a></li>
            <li><a href="studentPurchases.jsp" class="nav-link"><i class="bi bi-journal-text"></i> Course Purchases</a></li>
            <li><a href="Logout.jsp" class="nav-link text-danger"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>
    
<!-- Main Content -->
<div class="content">
    <h2 class="mb-4 fw-bold">📝 Manage Blogs</h2>

    <!-- Add Blog Form -->
    <div class="form-container mb-4">
        <h4 class="mb-3">Add New Blog</h4>
        <form action="saveBlog.jsp" method="post">
            <div class="mb-3">
                <label>Title</label>
                <input type="text" name="title" class="form-control" required>
            </div>
            <div class="mb-3">
                <label>Author</label>
                <input type="text" name="author" class="form-control" required>
            </div>
            <div class="mb-3">
                <label>Content</label>
                <textarea name="content" rows="5" class="form-control" required></textarea>
            </div>
            <div class="mb-3">
                <label>Publish Date</label>
                <input type="date" name="publish_date" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary"><i class="bi bi-plus-circle"></i> Add Blog</button>
        </form>
    </div>

    <!-- Blog Table -->
    <div class="card p-3 shadow-sm">
        <table class="table table-bordered table-striped mb-0">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publish Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    Statement st = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
                        st = conn.createStatement();
                        rs = st.executeQuery("SELECT * FROM blogs ORDER BY publish_date DESC");

                        while(rs.next()){
                            int id = rs.getInt("id");
                            String title = rs.getString("title");
                            String author = rs.getString("author");
                            Date publishDate = rs.getDate("publish_date");
                %>
                <tr>
                    <td><%=id%></td>
                    <td><%=title%></td>
                    <td><%=author%></td>
                    <td><%=publishDate%></td>
                    <td>
                        <a href="editBlog.jsp?id=<%=id%>" class="btn btn-sm btn-warning"><i class="bi bi-pencil-square"></i> Edit</a>
                        <a href="deleteBlog.jsp?id=<%=id%>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this blog?');"><i class="bi bi-trash"></i> Delete</a>
                    </td>
                </tr>
                <%
                        }
                    } catch(Exception e){
                        out.println("<tr><td colspan='5'>Error: "+e.getMessage()+"</td></tr>");
                    } finally {
                        if(rs != null) rs.close();
                        if(st != null) st.close();
                        if(conn != null) conn.close();
                    }
                %>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
