<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Users - StudySphere</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body { 
            margin: 0; padding: 0; display: flex; min-height: 100vh;
            background: #f8f9fa;
        }
        .sidebar { 
            width: 250px; height: 100vh; background: #343a40; color: white; 
            position: fixed; top: 0; left: 0;
        }
        .sidebar .nav-link { 
            color: #adb5bd; padding: 12px 20px; transition: 0.3s; 
        }
        .sidebar .nav-link:hover, .sidebar .nav-link.active { 
            background: #495057; color: white; 
        }
        .sidebar .nav-link i { margin-right: 10px; }
        .content { margin-left: 250px; padding: 30px; width: calc(100% - 250px); }
        .card { margin-bottom: 30px; border: none; border-radius: 12px; }
        .card-header { font-weight: bold; }
        .table-hover tbody tr:hover { background: #f1f3f5; }
        .btn-sm { padding: 4px 10px; font-size: 14px; }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column p-3">
        <h4 class="text-white text-center mb-4">Admin Panel</h4>
        <ul class="nav nav-pills flex-column mb-auto">
            <li><a href="dashboard.jsp" class="nav-link"><i class="bi bi-speedometer2"></i> Dashboard</a></li>
            <li><a href="manageUsers.jsp" class="nav-link active"><i class="bi bi-people"></i> Manage Users</a></li>
            <li><a href="Courses.jsp" class="nav-link"><i class="bi bi-building"></i> Manage Courses</a></li>
            <li><a href="Messages.jsp" class="nav-link "><i class="bi bi-bar-chart"></i> User Messages</a></li>
            <li><a href="manageBlogs.jsp" class="nav-link"><i class="bi bi-gear"></i> Manage Blogs</a></li>
            <li><a href="studentPurchases.jsp" class="nav-link active"><i class="bi bi-journal-text"></i> Course Purchases</a></li>
            <li><a href="Logout.jsp" class="nav-link text-danger"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h4 class="fw-bold mb-4">👥 Manage Users</h4>

        <!-- Add New User Form Card -->
        <div class="card shadow-sm mb-4">
          <div class="card-header bg-primary text-white">
            <i class="bi bi-person-plus"></i> Add New User
          </div>
          <div class="card-body">
            <form method="post" action="manageUsers.jsp" class="row g-3">
              <div class="col-md-4">
                <input type="text" name="name" class="form-control" placeholder="Full Name" required>
              </div>
              <div class="col-md-4">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
              </div>
              <div class="col-md-4">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
              </div>
              <div class="col-md-12">
                <button type="submit" class="btn btn-success">
                  <i class="bi bi-check-circle"></i> Add User
                </button>
              </div>
            </form>
          </div>
        </div>

        <%
          // Handle Add User
          String uname = request.getParameter("name");
          String uemail = request.getParameter("email");
          String upass = request.getParameter("password");

          if(uname != null){
            try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
              PreparedStatement ps = con.prepareStatement("INSERT INTO register(name,email,password) VALUES(?,?,?)");
              ps.setString(1,uname);
              ps.setString(2,uemail);
              ps.setString(3,upass);
              ps.executeUpdate();
              con.close();
              out.println("<div class='alert alert-success'>✅ User added successfully!</div>");
            } catch(Exception e) {
              out.println("<div class='alert alert-danger'>❌ Error: "+ e.getMessage() +"</div>");
            }
          }

          // Handle Delete User
          String deleteId = request.getParameter("deleteId");
          if(deleteId != null){
            try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
              PreparedStatement ps = con.prepareStatement("DELETE FROM register WHERE id=?");
              ps.setInt(1, Integer.parseInt(deleteId));
              ps.executeUpdate();
              con.close();
              out.println("<div class='alert alert-warning'>⚠️ User deleted successfully!</div>");
            } catch(Exception e) {
              out.println("<div class='alert alert-danger'>❌ Error: "+ e.getMessage() +"</div>");
            }
          }
        %>

        <!-- User List Card -->
        <div class="card shadow-sm">
          <div class="card-header bg-dark text-white">
            <i class="bi bi-list-check"></i> Registered Users
          </div>
          <div class="card-body p-0">
            <table class="table table-bordered table-hover mb-0">
              <thead class="table-light">
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Password</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <%
                  try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studyspheredb","root","Mysql@07");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("SELECT * FROM register");
                    while(rs.next()){
                %>
                  <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("password") %></td>
                    <td>
                          <form method="post" action="Update.jsp" style="display:inline-block; margin-right:6px;">
    <input type="hidden" name="UpdateId" value="<%= rs.getInt("id") %>">
    <button type="submit" class="btn btn-warning btn-sm" onclick="return confirm('Update this user?');">
      <i class="bi bi-pencil-square"></i> Update
    </button>
  </form>

  <!-- Delete Button -->
  <form method="post" action="manageUsers.jsp" style="display:inline-block;">
    <input type="hidden" name="deleteId" value="<%= rs.getInt("id") %>">
    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Delete this user?');">
      <i class="bi bi-trash"></i> Delete
    </button>
  </form>
                    </td>
                  </tr>
                <%
                    }
                    con.close();
                  } catch(Exception e) {
                    out.println("<tr><td colspan='5'>Error: "+ e.getMessage() +"</td></tr>");
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
