<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchased Courses - Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body { 
            margin: 0; 
            padding: 0; 
            display: flex; 
            min-height: 100vh;
            background: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }
        .sidebar { 
            width: 250px; 
            height: 100vh; 
            background: #343a40; 
            color: white; 
            position: fixed; 
            top: 0; 
            left: 0;
            overflow-y: auto;
        }
        .sidebar h4 {
            font-weight: bold;
        }
        .sidebar .nav-link { 
            color: #adb5bd; 
            padding: 12px 20px; 
            transition: 0.3s; 
            border-radius: 5px;
        }
        .sidebar .nav-link:hover, 
        .sidebar .nav-link.active { 
            background: #495057; 
            color: white; 
        }
        .sidebar .nav-link i { 
            margin-right: 10px; 
        }
        .content {
            margin-left: 260px; /* space for sidebar */
            padding: 30px;
            width: calc(100% - 260px);
        }
        .table-container {
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .table thead {
            background: #212529;
            color: #fff;
        }
        .table tbody tr:hover {
            background: #f1f3f5;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column p-3">
        <h4 class="text-white text-center mb-4">Admin Panel</h4>
        <ul class="nav nav-pills flex-column mb-auto">
            <li><a href="dashboard.jsp" class="nav-link"><i class="bi bi-speedometer2"></i> Dashboard</a></li>
            <li><a href="manageUsers.jsp" class="nav-link"><i class="bi bi-people"></i> Manage Users</a></li>
            <li><a href="Courses.jsp" class="nav-link"><i class="bi bi-book"></i> Manage Courses</a></li>
            <li><a href="Messages.jsp" class="nav-link"><i class="bi bi-chat-left-text"></i> User Messages</a></li>
            <li><a href="manageBlogs.jsp" class="nav-link"><i class="bi bi-journal-text"></i> Manage Blogs</a></li>
            <li><a href="studentPurchases.jsp" class="nav-link active"><i class="bi bi-journal-text"></i> Course Purchases</a></li>
            <li><a href="Logout.jsp" class="nav-link text-danger"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h2 class="mb-4 text-center">Student Course Purchases</h2>

        <div class="table-container">
            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle">
                    <thead>
                        <tr>
                            <th>Purchase ID</th>
                            <th>Student Name</th>
                            <th>Course Title</th>
                            <th>Purchase Date</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        Connection con = null;
                        Statement stmt = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb", "root", "Mysql@07");
                            stmt = con.createStatement();

                            String sql = "SELECT sc.id, s.name AS student_name, c.title AS course_title, sc.purchase_date " +
                                         "FROM student_courses sc " +
                                         "JOIN register s ON sc.student_id = s.id " +
                                         "JOIN courses c ON sc.course_id = c.id " +
                                         "ORDER BY sc.purchase_date DESC";

                            rs = stmt.executeQuery(sql);

                            while (rs.next()) {
                    %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("student_name") %></td>
                            <td><%= rs.getString("course_title") %></td>
                            <td><%= rs.getTimestamp("purchase_date") %></td>
                        </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println("<tr><td colspan='4' class='text-danger text-center'>Error: " + e.getMessage() + "</td></tr>");
                        } finally {
                            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                            if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                            if (con != null) try { con.close(); } catch (SQLException ignore) {}
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
