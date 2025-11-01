<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
  <div class="container-fluid">

    <!-- Logo -->
    <a class="navbar-brand fw-bold fs-4 text-primary" href="home.jsp">StudySphere</a>

    <!-- Toggle button for mobile -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" 
            aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="navbarContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

        <!-- Normal links -->
        <li class="nav-item"><a href="home.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="About.jsp" class="nav-link">About</a></li>
        <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
        <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>

        <!-- Tutorials Dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="tutorialsDropdown" role="button" 
             data-bs-toggle="dropdown" aria-expanded="false">
            Tutorials
          </a>
          <ul class="dropdown-menu" aria-labelledby="tutorialsDropdown">
            <li><a class="dropdown-item" href="Courses/HtmlCourse.jsp">HTML</a></li>
            <li><a class="dropdown-item" href="Courses/CssCourse.jsp">CSS</a></li>
            <li><a class="dropdown-item" href="Courses/JavaScriptCourse.jsp">JavaScript</a></li>
            <li><a class="dropdown-item" href="Courses/ReactCourse.jsp">React</a></li>
            <li><a class="dropdown-item" href="Courses/JavaCourse.jsp">Java</a></li>
            <li><a class="dropdown-item" href="Courses/PythonCourse.jsp">Python</a></li>
          </ul>
        </li>

        <!-- Account Dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="accountDropdown" role="button" 
             data-bs-toggle="dropdown" aria-expanded="false">
            Account
          </a>
          <ul class="dropdown-menu" aria-labelledby="accountDropdown">
            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
            <li><a class="dropdown-item" href="signup.jsp">Sign Up</a></li>
          </ul>
        </li>

        <!-- Chatbot -->
        <li class="nav-item">
          <a href="https://chat.openai.com" class="nav-link text-primary fw-bold" target="_blank">💬 Chatbot</a>
        </li>

      </ul>
    </div>
  </div>
</nav>

<!-- Bootstrap JS (needed for dropdowns) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
