<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>No Assignments</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<style>
/* Navbar styling */
.navbar {
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}
.navbar-brand {
    font-weight: 700;
    font-size: 1.5rem;
}

/* Body styling without flex centering for navbar */
body {
    background: #f4f6f9;
    font-family: 'Segoe UI', sans-serif;
    margin: 0;
    padding: 0;
}

/* Center the card using a wrapper */
.main-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: calc(100vh - 70px); /* subtract navbar height */
    padding-top: 20px;
}

.card-no-assign {
    background: linear-gradient(135deg, #6c5ce7, #a29bfe);
    color: white;
    padding: 2rem 3rem;
    border-radius: 1rem;
    box-shadow: 0 0.5rem 1.5rem rgba(0,0,0,0.2);
    text-align: center;
    max-width: 400px;
    transition: transform 0.3s, box-shadow 0.3s;
}
.card-no-assign:hover {
    transform: translateY(-5px);
    box-shadow: 0 1rem 2rem rgba(0,0,0,0.3);
}
.card-no-assign h2 {
    margin-bottom: 1.5rem;
    font-weight: 700;
}
.btn-back {
    color: white;
    background-color: #2d3436;
    border: none;
    padding: 0.5rem 1.5rem;
    border-radius: 0.5rem;
    transition: 0.3s;
}
.btn-back:hover {
    background-color: #636e72;
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
      <a href="Logout.jsp" class="btn btn-sm btn-light ms-3">Logout</a>
    </div>
  </div>
</nav>

<!-- Main Wrapper for Centering -->
<div class="main-wrapper">
    <div class="card-no-assign">
        <h2>No Assignments Are Available!</h2>
        <a href="StudentHome.jsp" class="btn btn-back">
            <i class="bi bi-house-door-fill me-1"></i> Back to Dashboard
        </a>
    </div>
</div>

</body>
</html>
