<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
  body {
    margin: 0;
    padding: 0;
    display: flex;
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
  .sidebar .nav-link {
    color: #adb5bd;
    padding: 12px 20px;
    transition: 0.3s;
  }
  .sidebar .nav-link:hover, .sidebar .nav-link.active {
    background: #495057;
    color: white;
  }
  .sidebar .nav-link i {
    margin-right: 10px;
  }
  .content {
    margin-left: 250px;
    padding: 20px;
    width: 100%;
  }
</style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar d-flex flex-column p-3">
  <h4 class="text-white text-center mb-4">Admin Panel</h4>
  <ul class="nav nav-pills flex-column mb-auto">
    <li>
      <a href="dashboard.jsp" class="nav-link active">
        <i class="bi bi-speedometer2"></i> Dashboard
      </a>
    </li>
    <li>
      <a href="manageUsers.jsp" class="nav-link">
        <i class="bi bi-people"></i> Manage Users
      </a>
    </li>
    <li>
      <a href="Courses.jsp" class="nav-link">
        <i class="bi bi-building"></i> Manage Courses
      </a>
    </li>
<li><a href="Messages.jsp" class="nav-link "><i class="bi bi-bar-chart"></i> User Messages</a></li>
    <li>
      <a href="System.jsp" class="nav-link">
        <i class="bi bi-gear"></i> Settings
      </a>
    </li>
    <li>
      <a href="Logout.jsp" class="nav-link text-danger">
        <i class="bi bi-box-arrow-right"></i> Logout
      </a>
    </li>
  </ul>
</div>

<!-- Main Content -->
<div class="content text-center my-2">
  <div class="p-4 bg-white border rounded-4 shadow-sm">
    <h2 class="fw-bold mb-3" style="color:#2c3e50;">
      Welcome to Admin Dashboard
    </h2>
    <p class="text-muted mb-0">
      Manage all users, properties, and reports in one place.
    </p>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
