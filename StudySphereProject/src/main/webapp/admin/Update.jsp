

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
      <a href="properties.jsp" class="nav-link">
        <i class="bi bi-building"></i> Manage Courses
      </a>
    </li>
<li><a href="Messages.jsp" class="nav-link "><i class="bi bi-bar-chart"></i> User Messages</a></li>
    <li>
      <a href="settings.jsp" class="nav-link">
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
<div class="content">

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow-lg border-0 rounded-4">
        <div class="card-header bg-primary text-white text-center rounded-top-4">
          <h3>Update the User</h3>
        </div>
        <div class="card-body">
          <form action="updateProcess.jsp" method="post">

            <!-- Full Name & Email -->
            <div class="row mb-3">
            <div class="col-md-6">
                <label for="id" class="form-label">Id</label>
                <input type="id" name="id" class="form-control" id="id" placeholder="Enter Id" required>
              </div>
              <div class="col-md-6">
                <label for="fullname" class="form-label">Full Name</label>
                <input type="text" name="name" class="form-control" id="fullname" placeholder="Enter full name" required>
              </div>
              <div class="col-md-6">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" required>
              </div>
            </div>

            <!-- Password & Phone -->
            <div class="row mb-3">
              <div class="col-md-6">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter password" required>
              </div>
              

            <!-- Checkbox -->
            <div class="form-check mb-4">
              <input class="form-check-input" type="checkbox" id="agree" required>
              <label class="form-check-label" for="agree">
                I confirm that the above information is correct
              </label>
            </div>

            <!-- Buttons -->
            <div class="d-flex justify-content-center gap-3">
              <button type="submit" class="btn btn-success px-4">
                <i class="bi bi-person-update"></i> Update
              </button>
              <button type="reset" class="btn btn-secondary px-4">
                <i class="bi bi-arrow-counterclockwise"></i> Reset
              </button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>