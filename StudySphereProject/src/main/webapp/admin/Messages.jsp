<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Messages - StudySphere</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
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

        table th, table td {
            vertical-align: middle;
            text-align: center;
        }
        table th:nth-child(1), td:nth-child(1) { width: 50px; }
        table th:nth-child(2), td:nth-child(2) { width: 120px; }
        table th:nth-child(3), td:nth-child(3) { width: 200px; }
        table th:nth-child(4), td:nth-child(4) { width: 150px; }
        table th:nth-child(5), td:nth-child(5) { width: 300px; text-align: left; }
        table th:nth-child(6), td:nth-child(6) { width: 150px; }
        table th:nth-child(7), td:nth-child(7) { width: 100px; }
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
            <li><a href="Messages.jsp" class="nav-link active"><i class="bi bi-chat-left-text"></i> User Messages</a></li>
            <li><a href="manageBlogs.jsp" class="nav-link"><i class="bi bi-gear"></i> Manage Blogs</a></li>
            <li><a href="studentPurchases.jsp" class="nav-link active"><i class="bi bi-journal-text"></i> Course Purchases</a></li>
            <li><a href="Logout.jsp" class="nav-link text-danger"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <!-- Heading -->
        <div class="mb-4">
            <h2 class="fw-bold">📩 Contact Messages</h2>
            <p class="text-muted">Here you can view and manage all user contact messages.</p>
        </div>

        <!-- Optional Success/Error Alert -->
        <%
            String msg = request.getParameter("msg");
            if("deleted".equals(msg)) {
        %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                ✅ Message deleted successfully.
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        <%
            } else if("invalid".equals(msg)) {
        %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                ⚠ Invalid message ID.
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        <%
            }
        %>

        <!-- Table Section -->
        <div class="card shadow-sm">
            <div class="card-body">
                <table class="table table-bordered table-striped mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            Connection conn = null;
                            Statement st = null;
                            ResultSet rs = null;

                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb", "root", "Mysql@07");

                                st = conn.createStatement();
                                rs = st.executeQuery("SELECT * FROM contact_messages ORDER BY created_at DESC");

                                while(rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("email") %></td>
                            <td><%= rs.getString("subject") %></td>
                            <td><%= rs.getString("message") %></td>
                            <td><%= rs.getTimestamp("created_at") %></td>
                            <td>
                                <a href="deleteMessage.jsp?id=<%= rs.getInt("id") %>" 
                                   class="btn btn-sm btn-danger"
                                   onclick="return confirm('Are you sure you want to delete this message?');">
                                   <i class="bi bi-trash"></i> Delete
                                </a>
                            </td>
                        </tr>
                        <%
                                }
                            } catch(Exception e) {
                                out.println("<tr><td colspan='7'>Error: " + e.getMessage() + "</td></tr>");
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
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
