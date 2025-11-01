<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up - StudySphere</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Raleway', sans-serif;
        background: #f4f6f9;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }
    .signup-card {
        max-width: 400px;
        width: 100%;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 0.5rem 1.5rem rgba(0,0,0,0.15);
        background: #fff;
        margin: 3rem auto;
    }
    .signup-card h2 {
        font-weight: 700;
    }
    .form-control-sm {
        border-radius: 0.5rem;
    }
    .btn-sm {
        border-radius: 0.5rem;
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand fw-bold" href="#">StudySphere</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link active" href="signup.jsp">Sign Up</a></li>
        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Signup Form -->
<div class="signup-card">

    <h2 class="text-center text-primary mb-4"><i class="bi bi-person-plus-fill me-2"></i>Create Account</h2>

    <% String msg = request.getParameter("msg"); %>
    <% if("invalid".equals(msg)){ %>
      <div class="alert alert-danger alert-dismissible fade show small" role="alert">
        <i class="bi bi-exclamation-triangle-fill me-1"></i> Email ID already exists. Please use another email.
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      </div>
    <% } else if("error".equals(msg)){ %>
      <div class="alert alert-warning alert-dismissible fade show small" role="alert">
        <i class="bi bi-exclamation-circle-fill me-1"></i> Something went wrong! Please try again later.
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      </div>
    <% } else if("failed".equals(msg)){ %>
      <div class="alert alert-danger alert-dismissible fade show small" role="alert">
        <i class="bi bi-x-circle-fill me-1"></i> Registration failed. Please try again.
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      </div>
    <% } %>

    <form action="signupProcess.jsp" method="post">
        <!-- Full Name -->
        <div class="mb-3">
            <label class="form-label small">Full Name</label>
            <input type="text" name="name" class="form-control form-control-sm" placeholder="Enter full name" required>
        </div>

        <!-- Email -->
        <div class="mb-3">
            <label class="form-label small">Email Address</label>
            <input type="email" name="email" class="form-control form-control-sm" placeholder="name@example.com" required>
        </div>

        <!-- Password -->
        <div class="mb-3">
            <label class="form-label small">Password</label>
            <input type="password" name="password" class="form-control form-control-sm" placeholder="Enter password" required>
        </div>

        <!-- Checkbox -->
        <div class="form-check mb-3">
            <input class="form-check-input" type="checkbox" required>
            <label class="form-check-label small">I confirm that the above information is correct</label>
        </div>

        <!-- Submit -->
        <div class="d-grid mb-3">
            <button type="submit" class="btn btn-success btn-sm py-2">
              <i class="bi bi-check-circle me-1"></i> Register
            </button>
        </div>
    </form>

    <div class="text-center small">
        <p>Already have an account? <a href="login.jsp">Login</a></p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
