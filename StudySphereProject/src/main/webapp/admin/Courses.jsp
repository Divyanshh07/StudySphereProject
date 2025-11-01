<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Courses - StudySphere</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body { margin: 0; padding: 0; display: flex; min-height: 100vh; background: #f8f9fa; }
        .sidebar { width: 250px; height: 100vh; background: #343a40; color: white; position: fixed; top: 0; left: 0; }
        .sidebar .nav-link { color: #adb5bd; padding: 12px 20px; transition: 0.3s; }
        .sidebar .nav-link:hover, .sidebar .nav-link.active { background: #495057; color: white; }
        .sidebar .nav-link i { margin-right: 10px; }
        .content { margin-left: 250px; padding: 30px; width: calc(100% - 250px); }
        .card { margin-bottom: 30px; border: none; border-radius: 12px; }
        .table-hover tbody tr:hover { background: #f1f3f5; }
        .btn-sm { padding: 4px 10px; font-size: 14px; }
        textarea { resize: vertical; }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column p-3">
        <h4 class="text-white text-center mb-4">Admin Panel</h4>
        <ul class="nav nav-pills flex-column mb-auto">
            <li><a href="dashboard.jsp" class="nav-link"><i class="bi bi-speedometer2"></i> Dashboard</a></li>
            <li><a href="manageUsers.jsp" class="nav-link"><i class="bi bi-people"></i> Manage Users</a></li>
            <li><a href="Courses.jsp" class="nav-link active"><i class="bi bi-book"></i> Manage Courses</a></li>
            <li><a href="Messages.jsp" class="nav-link "><i class="bi bi-bar-chart"></i> User Messages</a></li>
            <li><a href="manageBlogs.jsp" class="nav-link"><i class="bi bi-gear"></i> Manage Blogs</a></li>
            <li><a href="studentPurchases.jsp" class="nav-link active"><i class="bi bi-journal-text"></i> Course Purchases</a></li>
            <li><a href="Logout.jsp" class="nav-link text-danger"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h4 class="fw-bold mb-4">📘 Manage Courses</h4>

        <!-- Add New Course -->
        <div class="card shadow-sm mb-4">
            <div class="card-header bg-primary text-white">
                <i class="bi bi-plus-circle"></i> Add New Course
            </div>
            <div class="card-body">
                <form method="post" action="Courses.jsp" class="row g-3">
                    <div class="col-md-3"><input type="text" name="image" class="form-control" placeholder="Image URL"></div>
                    <div class="col-md-3"><input type="text" name="title" class="form-control" placeholder="Course Title" required></div>
                    <div class="col-md-3"><input type="text" name="description" class="form-control" placeholder="Short Description" required></div>
                    <div class="col-md-2"><input type="number" name="price" class="form-control" placeholder="Price" required></div>
                    <div class="col-md-2"><input type="number" name="old_price" class="form-control" placeholder="Old Price" required></div>
                    <div class="col-md-3"><input type="text" name="instructor" class="form-control" placeholder="Instructor Name" required></div>
                    <div class="col-md-2"><input type="text" name="duration" class="form-control" placeholder="Duration (e.g. 6 weeks)" required></div>
                    <div class="col-md-7"><textarea name="syllabus" class="form-control" rows="3" placeholder="Course Syllabus" required></textarea></div>
                    <div class="col-md-2">
                        <select name="status" class="form-control" required>
                            <option value="Free">Free</option>
                            <option value="Paid">Paid</option>
                        </select>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-success"><i class="bi bi-check-circle"></i> Add Course</button>
                    </div>
                </form>
            </div>
        </div>

        <%
            // Database connection details
            String dbURL = "jdbc:mysql://localhost:3306/studyspheredb";
            String dbUser = "root";
            String dbPass = "Mysql@07";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

                // Delete course if deleteId is provided
                String deleteId = request.getParameter("deleteId");
                if(deleteId != null){
                    PreparedStatement psDel = con.prepareStatement("DELETE FROM courses WHERE id=?");
                    psDel.setInt(1, Integer.parseInt(deleteId));
                    psDel.executeUpdate();
                    out.println("<div class='alert alert-success'>✅ Course deleted successfully!</div>");
                }

                // Add new course if title is provided
                String title = request.getParameter("title");
                if(title != null){
                    String desc = request.getParameter("description");
                    String price = request.getParameter("price");
                    String old_price = request.getParameter("old_price");
                    String image = request.getParameter("image");
                    String status = request.getParameter("status");
                    String instructor = request.getParameter("instructor");
                    String duration = request.getParameter("duration");
                    String syllabus = request.getParameter("syllabus");

                    PreparedStatement psAdd = con.prepareStatement(
                        "INSERT INTO courses(title,description,price,old_price,image,status,instructor,duration,syllabus) VALUES(?,?,?,?,?,?,?,?,?)"
                    );
                    psAdd.setString(1, title);
                    psAdd.setString(2, desc);
                    psAdd.setInt(3, Integer.parseInt(price));
                    psAdd.setInt(4, Integer.parseInt(old_price));
                    psAdd.setString(5, image);
                    psAdd.setString(6, status);
                    psAdd.setString(7, instructor);
                    psAdd.setString(8, duration);
                    psAdd.setString(9, syllabus);
                    psAdd.executeUpdate();
                    out.println("<div class='alert alert-success'>✅ Course added successfully!</div>");
                }

                // Fetch courses
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM courses");
        %>

        <!-- Course List -->
        <div class="card shadow-sm">
            <div class="card-header bg-dark text-white">
                <i class="bi bi-journal-text"></i> Courses List
            </div>
            <div class="card-body p-0">
                <table class="table table-bordered table-hover mb-0">
                    <thead class="table-light">
                        <tr>
                            <th>ID</th>
                            <th>Course</th>
                            <th>Instructor</th>
                            <th>Duration</th>
                            <th>Status</th>
                            <th>Price</th>
                            <th>Syllabus</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while(rs.next()){
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><strong><%= rs.getString("title") %></strong><br><small class="text-muted"><%= rs.getString("description") %></small></td>
                            <td><%= rs.getString("instructor") %></td>
                            <td><%= rs.getString("duration") %></td>
                            <td>
                                <% if("Free".equals(rs.getString("status"))){ %>
                                    <span class="badge bg-success">Free</span>
                                <% } else { %>
                                    <span class="badge bg-warning text-dark">Paid</span>
                                <% } %>
                            </td>
                            <td>
                                ₹ <%= rs.getInt("price") %><br>
                                <span class="text-muted text-decoration-line-through">₹ <%= rs.getInt("old_price") %></span>
                            </td>
                            <td>
                                <button class="btn btn-outline-primary btn-sm" type="button" data-bs-toggle="collapse" data-bs-target="#syllabus<%= rs.getInt("id") %>">View</button>
                                <div class="collapse mt-2" id="syllabus<%= rs.getInt("id") %>">
                                    <div class="card card-body"><%= rs.getString("syllabus") %></div>
                                </div>
                            </td>
                            <td>
                                <!-- Delete -->
                                <form method="post" action="Courses.jsp" style="display:inline;">
                                    <input type="hidden" name="deleteId" value="<%= rs.getInt("id") %>">
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Delete this course?');"><i class="bi bi-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                        <%
                            }
                            con.close();
                        } catch(Exception e){
                            out.println("<tr><td colspan='8'>Error: "+ e.getMessage() +"</td></tr>");
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
